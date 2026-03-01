# 📝 Dokumentasi Backend

## 📌 Catatan Penting

Direktori backend ini berisi submodule berikut:

### 📦 Submodule

1. **solmisasi-lily**
   - Repository: `github.com/henriulianto/solmisasi-lily`
   - Branch: `master`

2. **bwv-zeug**
   - Repository: `github.com/henriulianto/bwv-zeug`
   - Branch: `solmisasi`

## 🎵 Lilypond Setup

Lilypond diperlukan untuk kompilasi notasi musik. **Berikut adalah langkah-langkah setup yang direkomendasikan:**

### 🚀 Setup Menggunakan Script (Direkomendasikan)

Jalankan script inisialisasi sesuai sistem operasi Anda:

#### Linux/macOS
```bash
chmod +x scripts/inisialisasi.sh
./scripts/inisialisasi.sh
```

#### Windows (PowerShell)
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\scripts\inisialisasi.ps1
```

#### Windows (Command Prompt)
```cmd
scripts\inisialisasi.cmd
```

Script akan:
- ✅ Menginisialisasi Git submodule
- ✅ Memeriksa ketersediaan Lilypond
- ✅ Memberikan instruksi instalasi jika Lilypond tidak ditemukan
- ✅ Checkout submodule ke branch yang benar

### 📋 Manual Setup

Jika Anda lebih suka setup manual, lihat instruksi lengkap di:
- **Stable:** https://lilypond.org/download.html
- **Development:** https://lilypond.org/development.html

### Verifikasi

Setelah setup, verifikasi instalasi:
```bash
lilypond --version
```

---

*Terakhir diperbarui: 2025-02-21*
