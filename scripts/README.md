# Scripts untuk Website Nyanyian GPM

Direktori ini berisi script inisialisasi yang harus dijalankan tepat setelah clone project dari GitHub.

## 🚀 Cara Penggunaan

### Setelah Clone Project

1. Clone repository dari GitHub:
   ```bash
   git clone <repository-url> tugas_akhir
   cd tugas_akhir
   ```

2. Jalankan script inisialisasi sesuai sistem operasi Anda:

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

## 📋 Script yang Tersedia

### `inisialisasi.sh` (Linux/macOS)
- Menginisialisasi Git submodule
- Memeriksa ketersediaan Lilypond
- Memberikan instruksi instalasi jika Lilypond tidak ditemukan

### `inisialisasi.ps1` (Windows PowerShell)
- Fungsi sama dengan versi Bash
- Menggunakan sintaks PowerShell
- Error handling dengan try-catch

### `inisialisasi.cmd` (Windows Command Prompt)
- Fungsi sama dengan versi Bash
- Menggunakan sintaks batch file
- Kompatibel dengan CMD lama

## ⚙️ Konfigurasi

Sebelum menjalankan script, pastikan untuk:

1. **Mengubah lokasi direktori proyek** jika Anda mengclone ke lokasi yang berbeda:
   - Edit variabel `PROJECT_DIR` di masing-masing script
   - Default: `~/projects/tugas_akhir` (Linux/macOS) atau `%USERPROFILE%\projects\tugas_akhir` (Windows)

2. **Memastikan Git terinstall** pada sistem Anda

## 🎵 Dependensi

Script akan memeriksa ketersediaan **Lilypond** yang dibutuhkan untuk rendering notasi musik:

- Jika Lilypond sudah terinstall, script akan menampilkan versinya
- Jika belum, script akan memberikan instruksi lengkap untuk instalasi

## 🔄 Apa yang Dilakukan Script?

1. **Pindah ke direktori proyek** menggunakan absolute path
2. **Inisialisasi submodule** dengan `git submodule update --init --recursive`
3. **Verifikasi Lilypond** dan berikan panduan instalasi jika perlu
4. **Tampilkan status** dan instruksi selanjutnya

## 📝 Catatan Penting

- Jalankan script ini **hanya sekali** setelah clone project pertama kali
- Script ini tidak mengubah file proyek, hanya menyiapkan dependensi
- Jika mengalami masalah, pastikan lokasi direktori proyek sudah benar di script

## 🆘 Troubleshooting

### "Permission denied" (Linux/macOS)
```bash
chmod +x scripts/inisialisasi.sh
```

### "Cannot be loaded because running scripts is disabled" (Windows PowerShell)
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### "Command not found: lilypond"
Ikuti instruksi instalasi yang ditampilkan oleh script atau kunjungi https://lilypond.org/download.html