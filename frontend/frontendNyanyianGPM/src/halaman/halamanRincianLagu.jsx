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

import { FaBackwardStep, FaForwardStep, FaPlay, FaPause } from "react-icons/fa6";

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

  // CUSTOM AUDIO PLAYER STATE
  const [isPlaying, setIsPlaying] = useState(false);
  const [currentTime, setCurrentTime] = useState(0);
  const [duration, setDuration] = useState(0);

  // =====================================================
  // REF
  // =====================================================
  const audioRef = useRef(null);
  const objectRef = useRef(null);
  const syncRef = useRef(null);
  const delayTimeoutRef = useRef(null);
  const animationFrameRef = useRef(null); // ◀ Ref untuk melacak frame animasi agar progress mulus

  // =====================================================
  // METRONOME STATE
  // =====================================================
  const [bpm, setBpm] = useState(80);
  const [isMetronomePlaying, setIsMetronomePlaying] = useState(false);

  const metronomeIntervalRef = useRef(null);
  const audioContextRef = useRef(null);
  const beatRef = useRef(0);

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
      if (delayTimeoutRef.current) clearTimeout(delayTimeoutRef.current);
      if (animationFrameRef.current) cancelAnimationFrame(animationFrameRef.current);
    };
  }, [songDetails]);

  // =====================================================
  // LISTEN TO NATIVE AUDIO EVENTS + HIGH-FREQUENCY ANIMATION LOOP
  // =====================================================
  useEffect(() => {
    const audio = audioRef.current;
    if (!audio) return;

    // Fungsi loop berkecepatan tinggi (mengikuti refresh rate layar monitor)
    const updateProgressLoop = () => {
      if (audioRef.current && !audioRef.current.paused) {
        setCurrentTime(audioRef.current.currentTime);
        animationFrameRef.current = requestAnimationFrame(updateProgressLoop);
      }
    };

    const handleDurationChange = () => setDuration(audio.duration || 0);
    
    const handleAudioPlay = () => {
      setIsPlaying(true);
      // Mulai loop animasi ketika musik diputar
      animationFrameRef.current = requestAnimationFrame(updateProgressLoop);
    };
    
    const handleAudioPause = () => {
      setIsPlaying(false);
      // Batalkan loop animasi ketika musik dijeda untuk menghemat RAM
      if (animationFrameRef.current) {
        cancelAnimationFrame(animationFrameRef.current);
      }
      setCurrentTime(audio.currentTime); // Pastikan posisi akhir sinkron
    };

    audio.addEventListener("durationchange", handleDurationChange);
    audio.addEventListener("play", handleAudioPlay);
    audio.addEventListener("pause", handleAudioPause);

    // Kasus khusus: jika lagu selesai otomatis
    const handleEnded = () => {
      setIsPlaying(false);
      if (animationFrameRef.current) cancelAnimationFrame(animationFrameRef.current);
      setCurrentTime(0);
    };
    audio.addEventListener("ended", handleEnded);

    return () => {
      audio.removeEventListener("durationchange", handleDurationChange);
      audio.removeEventListener("play", handleAudioPlay);
      audio.removeEventListener("pause", handleAudioPause);
      audio.removeEventListener("ended", handleEnded);
      if (animationFrameRef.current) cancelAnimationFrame(animationFrameRef.current);
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
  // CUSTOM AUDIO CONTROLS HANDLERS
  // =====================================================
  const togglePlay = () => {
    const audio = audioRef.current;
    if (!audio) return;
    
    if (delayTimeoutRef.current) {
      clearTimeout(delayTimeoutRef.current);
      delayTimeoutRef.current = null;
    }

    if (isPlaying) {
      audio.pause();
    } else {
      audio.play().catch(err => console.warn("Playback interrupted:", err));
    }
  };

  const handlePrevious = () => {
    const audio = audioRef.current;
    if (!audio) return;

    if (delayTimeoutRef.current) {
      clearTimeout(delayTimeoutRef.current);
    }
    if (animationFrameRef.current) {
      cancelAnimationFrame(animationFrameRef.current);
    }

    audio.pause();
    audio.currentTime = 0;
    setCurrentTime(0);

    delayTimeoutRef.current = setTimeout(() => {
      if (audioRef.current) {
        audioRef.current.play().catch(err => {
          console.warn("Playback otomatis setelah delay terinterupsi:", err);
        });
      }
      delayTimeoutRef.current = null;
    }, 1500); 
  };

  const handleNext = () => {
    const audio = audioRef.current;
    if (!audio) return;

    if (delayTimeoutRef.current) {
      clearTimeout(delayTimeoutRef.current);
      delayTimeoutRef.current = null;
    }

    if (audio.duration && !isNaN(audio.duration)) {
      audio.currentTime = audio.duration;
      setCurrentTime(audio.duration);
    } else {
      audio.currentTime = 9999; 
    }
  };

  const handleProgressChange = (e) => {
    const audio = audioRef.current;
    if (!audio) return;

    if (delayTimeoutRef.current) {
      clearTimeout(delayTimeoutRef.current);
      delayTimeoutRef.current = null;
    }

    const newTime = parseFloat(e.target.value);
    audio.currentTime = newTime;
    setCurrentTime(newTime);
  };

  const formatTime = (time) => {
    if (isNaN(time)) return "0:00";
    const minutes = Math.floor(time / 60);
    const seconds = Math.floor(time % 60);
    return `${minutes}:${seconds < 10 ? "0" : ""}${seconds}`;
  };

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
          paddingBottom: "20px"
        }}
      >
        {/* TOMBOL KEMBALI KE HALAMAN UTAMA */}
        <div style={{ maxWidth: "1200px", margin: "0 auto 20px auto" }}>
          <Link
            to="/NyanyianGPM"
            className="btn btn-outline-secondary"
            style={{
              display: "inline-flex",
              alignItems: "center",
              gap: "8px",
              padding: "8px 16px",
              borderRadius: "8px",
              fontWeight: "500",
              textDecoration: "none"
            }}
          >
            ← Kembali ke Halaman Utama
          </Link>
        </div>

        {/* SCORE AREA */}
        <div style={{ display: "flex", justifyContent: "center" }}>
          <div
            ref={objectRef}
            className="score-container"
            style={{
              width: "100%",
              maxWidth: "1200px",
              minHeight: "auto",
              background: "white",
              borderRadius: "18px",
              padding: "24px",
              boxShadow: "0 6px 24px rgba(0,0,0,0.08)",
              overflowX: "auto",
              overflowY: "hidden"
            }}
          />
        </div>

        {/* PHYSICAL SPACER BLOCK */}
        <div style={{ height: "110px", width: "100%" }} />
      </div>

      {/* HIDDEN NATIVE AUDIO ELEMENT */}
      <audio ref={audioRef} />

      {/* CUSTOM PLAYER AREA (FIXED BOTTOM) */}
      <div
        style={{
          position: "fixed",
          bottom: "0",
          left: "0",
          width: "100%",
          zIndex: 1000, 
          background: "white",
          padding: "14px 24px 10px 24px", 
          boxShadow: "0 -4px 14px rgba(0,0,0,0.06)", 
          borderTop: "1px solid #eaeaea",
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          gap: "10px" 
        }}
      >
        {/* ROW 1: CONTROLLER BUTTONS */}
        <div 
          style={{ 
            display: "flex", 
            alignItems: "center", 
            justifyContent: "center",
            gap: "18px" 
          }}
        >
          {/* TOMBOL PREVIOUS */}
          <button
            onClick={handlePrevious}
            className="btn"
            style={{
              display: "inline-flex",
              alignItems: "center",
              justifyContent: "center",
              width: "30px",
              height: "30px",
              borderRadius: "50%",
              backgroundColor: "#fff",
              border: "none",
              outline: "none",
              boxShadow: "none",
              cursor: "pointer",
              padding: 0
            }}
            title="Ke Awal Lagu"
          >
            <FaBackwardStep size={12} style={{ color: "#000" }} />
          </button>

          {/* TOMBOL PLAY / PAUSE */}
          <button
            onClick={togglePlay}
            className="btn"
            style={{
              display: "inline-flex",
              alignItems: "center",
              justifyContent: "center",
              width: "32px", 
              height: "32px",
              borderRadius: "50%",
              backgroundColor: "#fff",
              border: "none",
              outline: "none",
              boxShadow: "0 2px 6px rgba(0,0,0,0.12)",
              cursor: "pointer",
              padding: 0
            }}
            title={isPlaying ? "Jeda" : "Putar"}
          >
            {isPlaying ? <FaPause size={12} style={{ color: "#000" }} /> : <FaPlay size={12} style={{ color: "#000", marginLeft: "2px" }} />}
          </button>

          {/* TOMBOL NEXT */}
          <button
            onClick={handleNext}
            className="btn"
            style={{
              display: "inline-flex",
              alignItems: "center",
              justifyContent: "center",
              width: "30px",
              height: "30px",
              borderRadius: "50%",
              backgroundColor: "#fff",
              border: "none",
              outline: "none",
              boxShadow: "none",
              cursor: "pointer",
              padding: 0
            }}
            title="Ke Akhir Lagu"
          >
            <FaForwardStep size={12} style={{ color: "#000" }} />
          </button>
        </div>

        {/* ROW 2: TIMELINE / PROGRESS BAR */}
        <div 
          style={{ 
            display: "flex", 
            alignItems: "center", 
            width: "100%", 
            maxWidth: "600px", 
            gap: "12px",
            color: "#888787",
            fontSize: "12px",
            fontWeight: "500"
          }}
        >
          {/* CURRENT TIME */}
          <span style={{ minWidth: "35px", textAlign: "right" }}>
            {formatTime(currentTime)}
          </span>

          {/* PROGRESS SLIDER */}
          {/* PROGRESS SLIDER */}
          {/* PROGRESS SLIDER */}
          {/* PROGRESS SLIDER */}
          {/* PROGRESS SLIDER */}
          <input
            type="range"
            min="0"
            max={duration || 0}
            step="any"
            value={currentTime}
            onChange={handleProgressChange}
            style={{
              flexGrow: 1,
              height: "3px",
              cursor: "pointer",
              // WebkitAppearance: "none", // ◀ HAPUS/KOMENTARI BARIS INI
              // appearance: "none",       // ◀ HAPUS/KOMENTARI BARIS INI
              borderRadius: "2px",
              background: `linear-gradient(to right, #000 0%, #000 ${
                duration ? (currentTime / duration) * 100 : 0
              }%, #ccc ${
                duration ? (currentTime / duration) * 100 : 0
              }%, #ccc 100%)`,
              outline: "none",
              accentColor: "#000", // ◀ Otomatis mewarnai bulatan bawaan browser menjadi HITAM
              transition: isPlaying ? "background 0.1s linear" : "none"
            }}
          />

          {/* TOTAL DURATION */}
          <span style={{ minWidth: "35px", textAlign: "left" }}>
            {formatTime(duration)}
          </span>
        </div>
      </div>
    </div>
  );
}

export default HalamanRincianLagu;