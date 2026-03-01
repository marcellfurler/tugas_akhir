import logo from "../assets/logoNGPMPutih.png";

function Navbar() {
  return (
    <nav
      className="navbar navbar-expand-lg"
      style={{
        backgroundColor: "#2672FF",
        paddingTop: "4px",
        paddingBottom: "4px"
      }}
    >
      <div className="container">

        <a className="navbar-brand" href="#">
          <img
            src={logo}
            alt="Logo Nyanyian GPM"
            height="100px"
          />
        </a>

        <button
          className="navbar-toggler"
          type="button"
          data-bs-toggle="offcanvas"
          data-bs-target="#offcanvasNavbar"
        >
          <span className="navbar-toggler-icon"></span>
        </button>

        <div
          className="offcanvas offcanvas-end offcanvas-lg"
          tabIndex="-1"
          id="offcanvasNavbar"
        >
          <div className="offcanvas-header d-lg-none">
            <h5 className="offcanvas-title">Menu</h5>
            <button
              type="button"
              className="btn-close"
              data-bs-dismiss="offcanvas"
            ></button>
          </div>

          <div className="offcanvas-body">

            <ul
              className="navbar-nav ms-auto align-items-lg-center"
              style={{ fontSize: "18px" }}
            >
              <li className="nav-item">
                <a className="nav-link active" href="#">Home</a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="#">Daftar Lagu</a>
              </li>
            </ul>

            <form className="d-flex ms-lg-3 mt-3 mt-lg-0">
              <input
                className="form-control me-2"
                type="search"
                placeholder="Cari lagu..."
              />
              <button className="btn btn-light">
                Search
              </button>
            </form>

          </div>
        </div>

      </div>
    </nav>
  );
}

export default Navbar;