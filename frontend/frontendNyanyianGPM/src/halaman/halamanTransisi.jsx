import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import logo1 from "../assets/logoGPM.png";
import logo2 from "../assets/logoNyan.GPM.png";
import "../style/style.css"

function HalamanTransisi() {
  const [step, setStep] = useState(0);
  const navigate = useNavigate();
  useEffect(() => {
    document.body.style.margin = "0";
    document.body.style.padding = "0";
    document.body.style.backgroundColor = "#2672FF";
    const timer1 = setTimeout(() => setStep(1), 2500);
    const timer2 = setTimeout(() => setStep(2), 5000);
    const timer3 = setTimeout(() => {
      navigate("/NyanyianGPM");
    }, 5000);
    return () => {
      clearTimeout(timer1);
      clearTimeout(timer2);
      clearTimeout(timer3);
    };
  }, [navigate]);
  const styles = {
    containerTransisi: {
      height: "100vh",
      width: "100vw",
      display: "flex",
      flexDirection: "column",
      justifyContent: "center", 
      alignItems: "center",  
      backgroundColor: "#2672FF",
      textAlign: "center",
    },

    logo: {
      width: "180px",
      margin: "10px 0",
    },

    title: {
      fontFamily: "'Instrument Serif', serif",
      color: "white",
      margin: "8px 0",
      letterSpacing: "1px",
    },

    subtitle: {
      fontFamily: "'David Libre', serif",
      color: "white",
      margin: "8px 0",
    },
  };

  if (step === 0) {
    return (
      <div style={styles.containerTransisi}>
        <h1 style={styles.title}>NYANYIAN JEMAAT</h1>
        <img src={logo1} style={styles.logo} alt="Logo" />
        <h2 style={styles.subtitle}>GEREJA PROTESTAN MALUKU</h2>
      </div>
    );
  }
  if (step === 1) {
    return (
      <div style={styles.containerTransisi}>
        <h1 style={styles.title}>NYANYIAN JEMAAT</h1>
        <img src={logo2} style={styles.logo} alt="Logo" />
        <h2 style={styles.subtitle}>GEREJA PROTESTAN MALUKU</h2>
      </div>
    );
  }
  return null;
}
export default HalamanTransisi;