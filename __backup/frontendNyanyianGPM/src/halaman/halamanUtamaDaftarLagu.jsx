import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import Navbar from "../components/navbar.jsx";

function HalamanUtama() {
  const [songs, setSongs] = useState([]);
  // State baru untuk menampung hasil filter pencarian
  const [filteredSongs, setFilteredSongs] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    document.body.style.margin = "0";
    document.body.style.padding = "0";
    document.documentElement.style.margin = "0";
    document.documentElement.style.padding = "0";

    const fetchSongs = async () => {
      try {
        const response = await fetch('/song-library.json');
        if (!response.ok) {
          throw new Error(`Gagal mengambil data: ${response.statusText}`);
        }
        const data = await response.json();
        setSongs(data);
        setFilteredSongs(data); // Set awal hasil filter sama dengan seluruh data lagu
      } catch (e) {
        setError(`Gagal memuat daftar lagu: ${e.message}`);
        console.error(e);
      } finally {
        setLoading(false);
      }
    };

    fetchSongs();

    return () => {
      document.body.style.margin = "";
      document.body.style.padding = "";
      document.documentElement.style.margin = "";
      document.documentElement.style.padding = "";
    };
  }, []);

  // Fungsi Logika Pencarian (Dipanggil dari komponen Navbar)
  const handleSearch = (query) => {
    if (!query.trim()) {
      setFilteredSongs(songs); // Jika kolom kosong, kembalikan semua lagu
      return;
    }

    const lowerCaseQuery = query.toLowerCase();
    
    // Memfilter berdasarkan judul lagu (title)
    const filtered = songs.filter(song => 
      song.title.toLowerCase().includes(lowerCaseQuery)
    );
    
    setFilteredSongs(filtered);
  };

  // Fungsi untuk me-render konten utama
  const renderContent = () => {
    if (loading) {
      return <h2 className="text-secondary fw-normal fs-4">Memuat daftar lagu...</h2>;
    }

    if (error) {
      return <div className="alert alert-danger">{error}</div>;
    }

    return (
      <div className="mx-auto" style={{ maxWidth: "1050px", padding: "0 15px" }}>
        <h2 className="text-start mb-2 fw-bold text-dark" style={{ fontSize: "1.75rem" }}>Daftar Nyanyian Jemaat</h2>
        <h4 className="text-start text-muted mb-4">Gereja Protestan Maluku</h4>
        
        {/* CONTAINER LIST MEMANJANG SATU KOLOM */}
        <div className="d-flex flex-column gap-3">
          {/* Jika hasil pencarian tidak ditemukan */}
          {filteredSongs.length === 0 ? (
            <div className="text-start text-muted my-4 fs-5">Lagu yang Anda cari tidak ditemukan.</div>
          ) : (
            filteredSongs.map(song => {
              const authorInfo = song.authors && song.authors.length > 0
                ? song.authors.map(auth => `${auth.role}: ${auth.name}`).join(' | | ')
                : 'Informasi penulis tidak tersedia';

              return (
                <Link
                  key={song.id}
                  to={`/NyanyianGPM/Lagu/${song.id}`}
                  className="text-decoration-none"
                >
                  <div 
                    className="p-4 d-flex justify-content-between align-items-center shadow-sm text-start"
                    style={{
                      backgroundColor: "#fffafa", 
                      borderRadius: "12px",       
                      border: "1px solid #f1eae0",
                      padding: "24px 32px", 
                      transition: "transform 0.2s, box-shadow 0.2s",
                      cursor: "pointer"
                    }}
                    onMouseEnter={(e) => {
                      e.currentTarget.style.transform = "translateY(-2px)";
                      e.currentTarget.style.boxShadow = "0 6px 16px rgba(0,0,0,0.06)";
                    }}
                    onMouseLeave={(e) => {
                      e.currentTarget.style.transform = "none";
                      e.currentTarget.style.boxShadow = "none";
                    }}
                  >
                    {/* Bagian Kiri: Informasi Teks dan Badge */}
                    <div style={{ flex: "1", paddingRight: "20px" }}>
                      <h3 
                        className="mb-1 text-dark fw-bold" 
                        style={{ fontSize: "1.35rem", fontFamily: "Georgia, serif" }}
                      >
                        {song.title}
                      </h3>
                      
                      <p className="mb-3 text-secondary" style={{ fontSize: "0.95rem" }}>
                        {authorInfo} ({song.year || 'tahun tidak tersedia'})
                      </p>
                      
                      <div className="d-flex flex-wrap gap-2">
                        <span className="badge rounded-pill px-3 py-2 fw-semibold" style={{ backgroundColor: "#2b82da", fontSize: "0.85rem" }}>
                          Nada Dasar : {song.key || 'no key'}
                        </span>
                        <span className="badge rounded-pill px-3 py-2 fw-semibold" style={{ backgroundColor: "#259b74", fontSize: "0.85rem" }}>
                          Waktu : {song.timeSignature || 'no sign'}
                        </span>
                        <span className="badge rounded-pill px-3 py-2 fw-semibold" style={{ backgroundColor: "#1E293B", fontSize: "0.85rem" }}>
                          Tempo : {song.tempo || 'no beat'} BPM
                        </span>
                      </div>
                    </div>

                    {/* Bagian Kanan: Icon Panah Gold */}
                    <div style={{ color: "#dca73a", fontSize: "1.5rem", paddingLeft: "15px" }}>
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" className="bi bi-arrow-right" viewBox="0 0 16 16">
                        <path fillRule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8"/>
                      </svg>
                    </div>
                  </div>
                </Link>
              );
            })
          )}
        </div>
      </div>
    );
  };

  return (
    <div style={{ minHeight: "100vh", backgroundColor: "#f4f6fb", margin: 0, padding: 0 }}>
      {/* Kirim fungsi handleSearch ke Navbar melalui prop onSearch */}
      <Navbar onSearch={handleSearch} />
      {/* CONTENT */}
      <div className="container mt-5 text-center" style={{ paddingBottom: "50px" }}>
        {renderContent()}
      </div>
    </div>
  );
}

export default HalamanUtama;