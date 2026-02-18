function HalamanUtama() {
  const container = {
    minHeight: "100vh",
    backgroundColor: "#f4f6fb",
    fontFamily: "Arial, sans-serif",
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
    padding: "40px",
    textAlign: "center",
  };

  const card = {
    backgroundColor: "white",
    padding: "30px",
    borderRadius: "12px",
    boxShadow: "0 4px 10px rgba(0,0,0,0.1)",
    maxWidth: "600px",
    margin: "auto",
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
        <div style={card}>
          <h2>Selamat Datang 🎵</h2>

          <p>
            Website ini membantu jemaat mempelajari lagu-lagu
            Buku Nyanyian Jemaat GPM secara digital melalui
            partitur animasi.
          </p>

          <button style={button}>
            Mulai Belajar
          </button>
        </div>
      </div>
    </div>
  );
}

export default HalamanUtama;
