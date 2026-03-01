import { useEffect, useState } from "react";
import PartiturSVG from "../assets/mary.svg?react";
// import logo from "../assets/logoNGPMPutih.png";
import Navbar from "../components/navbar.jsx";

function HalamanUtama() {
  const [start, setStart] = useState(false);

  useEffect(() => {
    document.body.style.margin = "0";
  }, []);

  return (
    <div style={{ minHeight: "100vh", backgroundColor: "#f4f6fb" }}>
      
      <Navbar />

      {/* CONTENT */}
      <div className="container mt-5 text-center">
        <h2>Selamat Datang 🎵</h2>
      </div>

    </div>
  );
}

export default HalamanUtama;