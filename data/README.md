# 📁 Direktori Data

Direktori ini berisi data nyanyian GPM dan konfigurasi pendukung.

## 📂 Struktur Direktori

### 🎵 `nyanyianGPM/`
Berisi data nyanyian Gereja Protestan Maluku (GPM), dengan struktur:
```
nyanyianGPM/
├── GPMxxx_JudulLagu/
│   ├── GPMxxx_JudulLagu.ly               # File source Lilypond
│   ├── GPMxxx_JudulLagu_ly_one_line.ly   # Untuk bwv-zeug jika diperlukan
│   └── exports/                          # Output custom (di-track)
│       └── ...                           # Hasil pengolahan bwv-zeug
└── ...
```

**Konvensi:**
- **1 lagu = 1 direktori** dengan nama file sama persis dengan nama direktori
- **File `.ly`** = source code Lilypond (di-track)

### ⚙️ `__includes/`
Berisi konfigurasi global Lilypond dan file include yang digunakan oleh semua nyanyian:
```
__includes/
├── GPM_Globals.ily    # Konfigurasi global GPM
└── ...                # File-file lainnya
```

## 📋 Aturan Git

### File yang Di-Track
- ✅ Source files (`.ly`)
- ✅ Include files (`.ily`)
- ✅ Custom exports (`exports/`)

### File yang Di-Ignore
- ❌ Generated files (`.pdf`, `.mid`, `.svg`)
- ❌ Temporary files (`.log`, `.tmp`)
- ❌ Cache directories (`.cache/`)

Lihat `.gitignore` untuk detail lengkap aturan ignore.

## 🔄 Workflow

1. **Edit** file `.ly` dengan editor teks
2. **Kompilasi** dengan Lilypond untuk preview
3. **bwv-zeug** untuk hasil ekspor final
4. **Commit** hanya source files yang diubah

---
*Terakhir diperbarui: 2025-03-01*