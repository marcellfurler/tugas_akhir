import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";

import logo1 from "../assets/logoGPM.png";
import logo2 from "../assets/logoNyan.GPM.png";

function HalamanTransisi() {
  const [step, setStep] = useState(0);
  const navigate = useNavigate(); // 🔥 untuk pindah halaman

  useEffect(() => {
    const timer1 = setTimeout(() => setStep(1), 2500);
    const timer2 = setTimeout(() => setStep(2), 5000);

    // pindah ke halaman utama setelah 5 detik
    const timer3 = setTimeout(() => {
      navigate("/NyanyianGPM");
    }, 5000);

    return () => {
      clearTimeout(timer1);
      clearTimeout(timer2);
      clearTimeout(timer3);
    };
  }, [navigate]);

  const containerStyle = {
    height: "100vh",
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#2672FF",
  };

  const imgStyle = {
    width: "250px",
  };

  if (step === 0) {
    return (
      <div style={containerStyle}>
        <img src={logo1} style={imgStyle} />
      </div>
    );
  }

  if (step === 1) {
    return (
      <div style={containerStyle}>
        <img src={logo2} style={imgStyle} />
      </div>
    );
  }

  return null;
}

export default HalamanTransisi;
