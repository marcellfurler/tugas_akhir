import React from 'react'
import ReactDOM from 'react-dom/client'
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap/dist/js/bootstrap.bundle.min.js'

import HalamanTransisi from './halaman/halamanTransisi.jsx'
import HalamanUtama from "./halaman/halamanUtamaDaftarLagu.jsx";
import HalamanRincianLagu from "./halaman/halamanRincianLagu.jsx";
import "./engine/css/normalize.css";
import "./engine/css/index.css";
import "./engine/css/player.css";

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<HalamanTransisi />} />
        <Route path="/NyanyianGPM" element={<HalamanUtama />} />
        {/* <Route path="/NyanyianGPM/Lagu" element={<HalamanRincianLagu />} /> */}
        <Route  path="/NyanyianGPM/Lagu/:songId" element={<HalamanRincianLagu  />} />
      </Routes>
    </BrowserRouter>
  </React.StrictMode>
)