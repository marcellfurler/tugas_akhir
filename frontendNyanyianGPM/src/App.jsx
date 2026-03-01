import { Routes, Route } from 'react-router-dom'
import HalamanTransisi from './halaman/halamanTransisi'
import HalamanUtama from './halaman/halamanUtamaDaftarLagu'

function App() {
  return (
    <Routes>
      <Route path="/" element={<HalamanTransisi />} />
      <Route path="/NyanyianGPM" element={<HalamanUtama />} />
    </Routes>
  )
}

export default App