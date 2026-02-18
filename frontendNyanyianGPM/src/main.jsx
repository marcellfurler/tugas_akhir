import React from 'react'
import ReactDOM from 'react-dom/client'
import { BrowserRouter, Routes, Route } from 'react-router-dom'

import HalamanTransisi from './halaman/halamanTransisi.jsx'
import HalamanUtama from "./halaman/halamanUtama.jsx";


ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<HalamanTransisi />} />
        <Route path="/NyanyianGPM" element={<HalamanUtama />} />
      </Routes>
    </BrowserRouter>
  </React.StrictMode>
)