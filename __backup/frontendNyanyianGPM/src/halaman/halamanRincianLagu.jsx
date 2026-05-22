import React, {
  useState,
  useEffect,
  useRef
} from "react";

import {
  useParams,
  Link
} from "react-router-dom";

import Navbar from "../components/navbar.jsx";

import yaml from "js-yaml";

// CSS
import "../engine/css/index.css";
import "../engine/css/player.css";
import "../engine/css/menu.css";
import "../engine/css/normalize.css";

// ENGINE
import {
  Synchronisator
} from "../engine/js/synchronisator.mjs";

function HalamanRincianLagu() {
  const { songId } = useParams();

  // =====================================================
  // STATE
  // =====================================================
  const [songDetails, setSongDetails] = useState(null);
  const [librarySongs, setLibrarySongs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // =====================================================
  // REF
  // =====================================================
  const audioRef = useRef(null);
  const objectRef = useRef(null);
  const syncRef = useRef(null);

  // =====================================================
  // LOAD SONG DATA
  // =====================================================
  useEffect(() => {
    const loadSong = async () => {
      try {
        setLoading(true);
        const response = await fetch("/song-library.json");

        if (!response.ok) {
          throw new Error("Gagal memuat library lagu");
        }

        const library = await response.json();
        setLibrarySongs(library);

        const song = library.find(item => item.id === songId);

        if (!song) {
          throw new Error("Lagu tidak ditemukan");
        }

        setSongDetails(song);
      } catch (err) {
        console.error(err);
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    loadSong();
  }, [songId]);

  // =====================================================
  // INITIALIZE SYNCHRONISATOR
  // =====================================================
  useEffect(() => {
    if (!songDetails) return;

    const objectEl = objectRef.current;
    if (!objectEl) return;

    let destroyed = false;

    // =====================================================
    // CLEANUP OLD
    // =====================================================
    if (syncRef.current) {
      try {
        syncRef.current.stop();
        syncRef.current.cleanup();
      } catch (err) {
        console.warn("Cleanup warning:", err);
      }
      syncRef.current = null;
    }

    // =====================================================
    // INIT
    // =====================================================
    const initializeSync = async () => {
      try {
        console.log("🎼 INITIALIZE SYNC");

        // =========================================
        // LOAD SVG
        // =========================================
        const svgResponse = await fetch(
          songDetails.dataPath + songDetails.svgFile
        );

        if (!svgResponse.ok) {
          throw new Error("Gagal memuat SVG");
        }

        const svgText = await svgResponse.text();

        // inject SVG ke DOM
        objectEl.innerHTML = svgText;

        // ambil svg
        const svgElement = objectEl.querySelector("svg");

        if (!svgElement) {
          throw new Error("SVG element tidak ditemukan");
        }

        console.log("✅ SVG loaded");

        // =========================================
        // FIX LINK STYLE
        // =========================================
        svgElement.querySelectorAll("a").forEach(a => {
          a.style.textDecoration = "none";
          a.style.color = "inherit";
        });

        // =========================================
        // BWV ZEUG STYLE
        // =========================================
        const style = document.createElement("style");
        style.textContent = `
          a.notangka text,
          a.notangka tspan {
            fill: #111 !important;
            transition: fill 0.08s linear;
          }
          a.notangka.active text,
          a.notangka.active tspan {
            fill: #d62828 !important;
            font-weight: bold;
          }
          [data-bar] {
            transition: opacity 0.2s ease, fill 0.2s ease;
          }
          svg {
            display: block;
            margin: 0 auto;
            width: 100% !important;
            height: auto !important;
            max-width: 100%;
          }
          .score-container {
            overflow-x: auto;
            overflow-y: hidden;
          }
          @media (max-width: 768px) {
            .score-container {
              padding: 10px !important;
            }
            svg {
              width: 100% !important;
              height: auto !important;
              min-width: unset !important;
              max-width: 100% !important;
            }
          }
        `;
        svgElement.appendChild(style);

        // =========================================
        // LOAD YAML
        // =========================================
        const [syncResponse, configResponse] = await Promise.all([
          fetch(songDetails.dataPath + songDetails.syncFile),
          fetch(songDetails.dataPath + songDetails.configFile)
        ]);

        if (!syncResponse.ok) {
          throw new Error("Gagal memuat sync file");
        }

        if (!configResponse.ok) {
          throw new Error("Gagal memuat config file");
        }

        const syncText = await syncResponse.text();
        const configText = await configResponse.text();

        const syncData = yaml.load(syncText);
        const configData = yaml.load(configText);

        const safeConfig = {
          ...configData,
          features: {
            ...configData.features,
            barHighlight: configData?.features?.barHighlight ?? true,
          },
          measureHighlighters: configData?.features?.barHighlight
            ? configData.measureHighlighters
            : null
        };
        
        const enableBarHighlight = configData?.features?.barHighlight ?? true;

        console.log("✅ YAML loaded");

        // =========================================
        // AUDIO
        // =========================================
        const audioEl = audioRef.current;
        if (!audioEl) {
          throw new Error("Audio element tidak ada");
        }

        audioEl.pause();
        audioEl.src = songDetails.mediaPath + songDetails.audioFile;
        audioEl.load();

        // =========================================
        // SYNCHRONISATOR
        // =========================================
        const sync = new Synchronisator(
          syncData,
          audioEl,
          svgElement,
          safeConfig
        );

        sync.initialize();

        sync.initializeAudioEventHandlers({
          onPlayStateChange: (isPlaying) => {
            console.log("PLAY STATE:", isPlaying);
          },
          onBarChange: (barNumber) => {
            if (!enableBarHighlight) return;

            svgElement.querySelectorAll("[data-bar]").forEach(bar => {
              bar.style.fill = "";
              bar.style.opacity = "";
            });

            const currentBar = svgElement.querySelector(`[data-bar="${barNumber}"]`);
            if (!currentBar) return;

            const colors = ["lightskyblue", "lightsalmon", "lightgreen", "lightpink"];
            const color = colors[(barNumber - 1) % colors.length];

            currentBar.style.fill = color;
            currentBar.style.opacity = "0.25";
          }
        });

        if (destroyed) {
          sync.cleanup();
          return;
        }

        syncRef.current = sync;
        window.sync = sync;

        console.log("✅ SYNCHRONISATOR READY");
      } catch (err) {
        console.error("❌ SYNC ERROR:", err);
        setError(err.message);
      }
    };

    initializeSync();

    return () => {
      destroyed = true;
      if (syncRef.current) {
        try {
          syncRef.current.stop();
          syncRef.current.cleanup();
        } catch (err) {
          console.warn("Cleanup error:", err);
        }
        syncRef.current = null;
      }
    };
  }, [songDetails]);

  // =====================================================
  // PAGE STYLE
  // =====================================================
  useEffect(() => {
    const style = document.createElement("style");
    style.innerHTML = `
      .score-container {
        width: 100%;
        background: white;
        border-radius: 10px;
        overflow: auto;
      }
      audio {
        margin-top: 20px;
      }
    `;
    document.head.appendChild(style);

    return () => {
      document.head.removeChild(style);
    };
  }, []);

  // =====================================================
  // FIX GLOBAL BODY SPACE
  // =====================================================
  useEffect(() => {
    document.body.style.margin = "0";
    document.body.style.padding = "0";
    document.documentElement.style.margin = "0";
    document.documentElement.style.padding = "0";

    return () => {
      document.body.style.margin = "";
      document.body.style.padding = "";
      document.documentElement.style.margin = "";
      document.documentElement.style.padding = "";
    };
  }, []);

  // =====================================================
  // HANDLING CONDITIONALS (LOADING / ERROR)
  // =====================================================
  if (loading) {
    return (
      <div className="text-center mt-5">
        <h2>Memuat Lagu...</h2>
      </div>
    );
  }

  if (error) {
    return (
      <div className="alert alert-danger m-4">
        <strong>Error:</strong> {error}
      </div>
    );
  }

  // =====================================================
  // FINAL RENDER
  // =====================================================
  return (
    <div
      style={{
        minHeight: "100vh",
        backgroundColor: "#f4f6fb",
        margin: 0,
        padding: 0
      }}
    >
      {/* NAVBAR */}
      <Navbar isDetailPage={true} songs={librarySongs} />

      {/* CONTENT */}
      <div
        className="container py-4"
        style={{
          maxWidth: "1400px",
          paddingBottom: "120px"
        }}
      >
        {/* PLAYER AREA (FIXED BOTTOM) */}
        <div
          style={{
            position: "fixed",
            bottom: "0",
            left: "0",
            width: "100%",
            
            /* OPTIMASI Z-INDEX: 
               Diturunkan dari 9999 menjadi 1000 agar berada di bawah menu hamburger 
               dan backdrop hitam offcanvas saat dibuka.
            */
            zIndex: 1000, 
            
            background: "white",
            padding: "12px 20px",
            boxShadow: "0 -4px 14px rgba(0,0,0,0.12)",
            borderTop: "1px solid #ddd"
          }}
        >
          <div style={{ display: "flex", justifyContent: "center" }}>
            <audio
              ref={audioRef}
              controls
              style={{
                width: "700px",
                maxWidth: "100%",
                height: "54px"
              }}
            />
          </div>
        </div>

        {/* SCORE AREA */}
        <div style={{ display: "flex", justifyContent: "center" }}>
          <div
            ref={objectRef}
            className="score-container"
            style={{
              width: "100%",
              maxWidth: "1200px",
              minHeight: "1200px",
              background: "white",
              borderRadius: "18px",
              padding: "24px",
              boxShadow: "0 6px 24px rgba(0,0,0,0.08)",
              overflowX: "auto",
              overflowY: "hidden"
            }}
          />
        </div>
      </div>
    </div>
  );
}

export default HalamanRincianLagu;