import { useEffect, useState } from "react";
import PartiturSVG from "../assets/mary.svg?react";
import Navbar from "../components/navbar.jsx";

function HalamanRincianLagu() {
  const [start, setStart] = useState(false);

  useEffect(() => {
    document.body.style.margin = "0";
  }, []);

  return (
    <>
      <Navbar />

      <div className="container mt-5">
        <h2>Rincian Lagu</h2>
      </div>
    </>
  );
}

export default HalamanRincianLagu;