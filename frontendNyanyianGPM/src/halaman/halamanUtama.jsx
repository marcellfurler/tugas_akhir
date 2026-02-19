import { useEffect, useState } from "react";
import PartiturSVG from "../assets/mary.svg?react";



function HalamanUtama() {
  const [start, setStart] = useState(false);

  const startAnimation = () => {
    const notes = document.querySelectorAll("svg g");

    let index = 0;

    const interval = setInterval(() => {
      // reset warna sebelumnya
      if (index > 0) {
        notes[index - 1].style.fill = "black";
        notes[index - 1].style.stroke = "black";
      }

      // highlight not sekarang
      if (index < notes.length) {
        notes[index].style.fill = "red";
        notes[index].style.stroke = "red";
        index++;
      } else {
        clearInterval(interval);
      }
    }, 400); // kecepatan animasi
  };




  const container = {
    minHeight: "100vh",
    width: "100%",
    backgroundColor: "#f4f6fb",
    fontFamily: "Arial, sans-serif",
    display: "flex",
    flexDirection: "column",
  };

  const header = {
    backgroundColor: "#2672FF",
    color: "white",
    padding: "20px",
    textAlign: "center",
    fontSize: "24px",
    fontWeight: "bold",
  };

  const content = {
    flex: 1,
    display: "flex",
    flexDirection: "column",
    alignItems: "center",
    padding: "40px",
    gap: "40px",
  };

  const card = {
    backgroundColor: "white",
    padding: "30px",
    borderRadius: "12px",
    boxShadow: "0 4px 10px rgba(0,0,0,0.1)",
    maxWidth: "600px",
    width: "100%",
    textAlign: "center",
  };

  const button = {
    marginTop: "20px",
    padding: "12px 25px",
    backgroundColor: "#2672FF",
    color: "white",
    border: "none",
    borderRadius: "8px",
    fontSize: "16px",
    cursor: "pointer",
  };

  return (
    <div style={container}>
      {/* HEADER */}
      <div style={header}>
        Website Buku Nyanyian Jemaat GPM
      </div>

      {/* CONTENT */}
      <div style={content}>

        {/* CARD INTRO */}
        <div style={card}>
          <h2>Selamat Datang 🎵</h2>

          <p>
            Website ini membantu jemaat mempelajari lagu-lagu
            Buku Nyanyian Jemaat GPM secara digital melalui
            partitur animasi.
          </p>

          <button
            style={button}
            onClick={() => {
              setStart(true);
              startAnimation();
            }}
          >
            ▶️ Mulai Belajar
          </button>

        </div>

        {/* PARTITUR DEMO */}
        <div style={{ position: "relative", background: "white", padding: "20px", borderRadius: "12px" }}>
          <PartiturSVG style={{ width: "800px" }} />



          {/* {start && (
            <div
              style={{
                position: "absolute",
                top: 0,
                left: 0,
                width: "4px",
                height: "100%",
                background: "red",
                animation: "jalan 8s linear forwards",
              }}
            />
          )} */}
        </div>

      </div>

      {/* ANIMATION CSS */}
      <style>
        {`
          @keyframes jalan {
            from { left: 0; }
            to { left: 100%; }
          }
        `}
      </style>
    </div>
  );
}

export default HalamanUtama;
