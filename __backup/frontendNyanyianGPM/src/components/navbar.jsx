import React, { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router-dom";
import logo from "../assets/logoNGPMPutih.png";

function Navbar({ onSearch, isDetailPage = false, songs = [] }) {
  const [searchTerm, setSearchTerm] = useState("");
  const [isMobile, setIsMobile] = useState(window.innerWidth < 992);
  const navigate = useNavigate();

  useEffect(() => {
    const handleResize = () => {
      setIsMobile(window.innerWidth < 992);
    };
    window.addEventListener("resize", handleResize);
    return () => window.removeEventListener("resize", handleResize);
  }, []);

  // ANIMASI SMOOTH & RE-SIZE LACI HANYA BERLAKU DI MODE RINCIAN LAGU (.rincian-mode)
  useEffect(() => {
    const styleEl = document.createElement("style");
    styleEl.textContent = `
      .rincian-mode .offcanvas {
        transition: transform 0.4s cubic-bezier(0.25, 1, 0.5, 1) !important;
      }

      @media (min-width: 992px) {
        .rincian-mode .offcanvas.offcanvas-end {
          width: 450px !important; 
          box-shadow: -10px 0 30px rgba(0, 0, 0, 0.15) !important;
        }
        
        .rincian-mode ~ .offcanvas-backdrop.show {
          opacity: 0.5 !important;
          backdrop-filter: blur(4px);
          transition: opacity 0.4s ease !important;
        }
      }
    `;
    document.head.appendChild(styleEl);
    return () => styleEl.remove();
  }, []);

  const styles = {
    navbar: {
      backgroundColor: "#2b82da",
      padding: "6px 0",
    },
    brand: {
      fontFamily: "'Instrument Serif', Georgia, serif",
      color: "white",
      fontSize: "28px",
      letterSpacing: "0.5px",
      textDecoration: "none"
    },
    navLink: {
      fontFamily: "'Inter', system-ui, -apple-system, sans-serif",
      fontSize: "15px",
      fontWeight: "500",
      marginRight: "15px",
      textDecoration: "none",
      transition: "opacity 0.2s",
      /* Kondisi Warna Teks:
        - Jika halaman rincian: teks berwarna hitam (#212529) karena berada di dalam offcanvas putih.
        - Jika halaman utama: di laptop berwarna putih (#ffffff), di HP/mobile berwarna hitam (#212529).
      */
      color: isDetailPage ? "#212529" : (isMobile ? "#212529" : "#ffffff"),
    },
    searchInput: {
      fontFamily: "'Inter', system-ui, -apple-system, sans-serif",
      fontSize: "14px",
    },
    searchButton: {
      fontFamily: "'Inter', system-ui, -apple-system, sans-serif",
      fontSize: "14px",
      fontWeight: "500",
    },
    resetButton: {
      fontFamily: "'Inter', system-ui, -apple-system, sans-serif",
      fontSize: "14px",
      fontWeight: "500",
    }
  };

  const handleNavigation = (targetUrl) => {
    const backdrop = document.querySelector(".offcanvas-backdrop");
    if (backdrop) {
      backdrop.remove();
    }
    document.body.style.overflow = "";
    document.body.style.pointerEvents = "";
    navigate(targetUrl);
  };

  const handleInputChange = (e) => {
    setSearchTerm(e.target.value);
  };

  const handleClearIconClick = (e) => {
    if (e.target.value === "") {
      setSearchTerm("");
      if (onSearch) onSearch("");
    }
  };

  const handleSearchSubmit = (e) => {
    e.preventDefault();
    if (onSearch) onSearch(searchTerm);
  };

  const handleResetSearch = () => {
    setSearchTerm("");
    if (onSearch) onSearch("");
  };

  return (
    /* KONDISI LAYOUT UTAMA:
      - Di rincian lagu: class 'navbar-expand-lg' DIBUANG dan diganti 'rincian-mode'. Ini memaksa mode hamburger menu muncul di HP maupun laptop.
      - Di daftar lagu utama: class 'navbar-expand-lg' AKTIF. Menu akan melebar horizontal memanjang di laptop (seperti Gambar 1).
    */
    <nav className={`navbar shadow-sm ${isDetailPage ? "rincian-mode" : "navbar-expand-lg"}`} style={styles.navbar}>
      <div className="container">

        {/* LOGO + BRAND */}
        <Link to="/NyanyianGPM" className="navbar-brand d-flex align-items-center gap-2" style={styles.brand}>
          <img src={logo} alt="Logo Nyanyian GPM" height="85px" />
        </Link>

        {/* TOGGLER BUTTON 
            Di halaman rincian lagu, tombol garis tiga dipaksa keluar di laptop dengan bantuan class 'd-block'.
        */}
        <button
          className={`navbar-toggler border-0 ${isDetailPage ? "d-block" : ""}`}
          type="button"
          data-bs-toggle="offcanvas"
          data-bs-target="#offcanvasNavbar"
          style={{ filter: "invert(1)" }}
        >
          <span className="navbar-toggler-icon"></span>
        </button>

        {/* OFFCANVAS CONTAINER */}
        <div
          className="offcanvas offcanvas-end"
          tabIndex="-1"
          id="offcanvasNavbar"
          style={{ fontFamily: "'Inter', sans-serif" }}
        >
          <div className="offcanvas-header text-white" style={{ backgroundColor: "#2b82da" }}>
            <h5 className="offcanvas-title fw-bold">Menu Utama</h5>
            <button type="button" className="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
          </div>

          {/* STRUKTUR BADAN OFFCANVAS:
            - Di rincian lagu: dikonfigurasi vertikal ke bawah (flex-column).
            - Di daftar lagu: di laptop otomatis melebar ke samping (flex-lg-row) untuk memunculkan search bar horizontal di kanan.
          */}
          <div className={`offcanvas-body d-flex ${isDetailPage ? "flex-column align-items-start" : "flex-column flex-lg-row justify-content-between align-items-stretch align-items-lg-center"}`}>
            
            {/* LINK NAVIGASI MENU */}
            <ul className={`navbar-nav align-items-start align-items-lg-center ${isDetailPage ? "w-100" : "ms-auto"}`}>
              
              {/* MENU HOME */}
              <li className={`nav-item ${isDetailPage ? "w-100 border-bottom py-2" : ""}`}>
                <button
                  onClick={() => handleNavigation("/NyanyianGPM")}
                  className="nav-link text-start border-0 bg-transparent p-0 w-100"
                  style={styles.navLink}
                >
                  HOME
                </button>
              </li>

              {/* MENU TENTANG GPM */}
              <li className={`nav-item ${isDetailPage ? "w-100 border-bottom py-2" : ""}`}>
                <a 
                  className="nav-link text-start p-0 w-100" 
                  href="https://sinodegpm.co.id/" 
                  target="_blank" 
                  rel="noopener noreferrer" 
                  style={styles.navLink} 
                >
                  TENTANG GPM
                </a>
              </li>

              {/* MENAMPILKAN DAFTAR LAGU INTERNAL (HANYA AKTIF SAAT DI HALAMAN RINCIAN LAGU) */}
              {isDetailPage && (
                <li className="nav-item mt-4 w-100">
                  <span className="text-muted small fw-bold d-block mb-2">DAFTAR SELURUH LAGU</span>
                  <div style={{ maxHeight: "calc(100vh - 280px)", overflowY: "auto", paddingRight: "5px" }}>
                    <ul className="list-unstyled">
                      {songs.map((song) => (
                        <li key={song.id} className="mb-1 border-bottom border-light">
                          <button
                            onClick={() => handleNavigation(`/NyanyianGPM/Lagu/${song.id}`)}
                            className="text-decoration-none text-dark d-block py-2 text-start border-0 bg-transparent w-100 dropdown-item"
                            style={{ fontFamily: "'Inter', sans-serif", fontSize: "14px", borderRadius: "6px" }}
                          >
                            ♫ {song.title}
                          </button>
                        </li>
                      ))}
                    </ul>
                  </div>
                </li>
              )}
            </ul>

            {/* BAR PENCARIAN (HANYA MUNCUL DI HALAMAN DAFTAR LAGU UTAMA / GAMBAR 1) */}
            {!isDetailPage && (
              <form className="d-flex ms-lg-3 mt-3 mt-lg-0" role="search" onSubmit={handleSearchSubmit}>
                <input
                  className="form-control me-2"
                  type="search"
                  placeholder="Cari lagu..."
                  aria-label="Search"
                  style={styles.searchInput}
                  value={searchTerm}
                  onChange={handleInputChange} 
                  onSearch={handleClearIconClick}
                />
                <button className="btn btn-light me-2" type="submit" style={styles.searchButton}>
                  Cari
                </button>

                {searchTerm.trim().length > 0 && (
                  <button className="btn btn-outline-danger" type="button" onClick={handleResetSearch} style={styles.resetButton}>
                    Reset
                  </button>
                )}
              </form>
            )}

          </div>
        </div>

      </div>
    </nav>
  );
}

export default Navbar;