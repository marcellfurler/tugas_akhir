#!/bin/bash

# Script inisialisasi proyek Website Nyanyian GPM
# Menginisialisasi submodule dan memeriksa dependensi

# 1. Pindah ke direktori proyek (absolute path)
# Ganti PROJECT_DIR sesuai dengan lokasi hasil clone project Anda
PROJECT_DIR="$HOME/projects/tugas_akhir"
cd "$PROJECT_DIR" || {
    echo "Error: Tidak dapat mengakses direktori proyek $PROJECT_DIR"
    exit 1
}

echo "📍 Direktori proyek: $(pwd)"
echo ""

# 2. Inisialisasi dan update submodule
echo "🔄 Menginisialisasi submodule..."
git submodule update --init --recursive

if [ $? -eq 0 ]; then
    echo "✅ Inisialisasi submodule berhasil!"
else
    echo "❌ Inisialisasi submodule gagal!"
    exit 1
fi

# 2b. Checkout submodule ke branch yang benar
echo ""
echo "🔄 Checkout submodule ke branch yang benar..."

# Checkout bwv-zeug ke branch solmisasi
echo "  - bwv-zeug: checkout ke branch 'solmisasi'..."
cd backend/bwv-zeug
git checkout solmisasi
if [ $? -eq 0 ]; then
    echo "  ✅ bwv-zeug berhasil checkout ke branch 'solmisasi'"
else
    echo "  ❌ bwv-zeug gagal checkout ke branch 'solmisasi'"
fi
cd ../..

# Checkout solmisasi-lily ke branch master
echo "  - solmisasi-lily: checkout ke branch 'master'..."
cd backend/solmisasi-lily
git checkout master
if [ $? -eq 0 ]; then
    echo "  ✅ solmisasi-lily berhasil checkout ke branch 'master'"
else
    echo "  ❌ solmisasi-lily gagal checkout ke branch 'master'"
fi
cd ../..

echo ""

# 3. Periksa ketersediaan command lilypond
echo "🔍 Memeriksa ketersediaan Lilypond..."
if command -v lilypond &> /dev/null; then
    LILYPOND_VERSION=$(lilypond --version 2>/dev/null | head -n1)
    echo "✅ Lilypond ditemukan: $LILYPOND_VERSION"
else
    echo "❌ Command 'lilypond' tidak ditemukan pada sistem."
    echo ""
    echo "📋 Instruksi instalasi Lilypond:"
    echo "1. Unduh Lilypond versi terbaru:"
    echo "   - Versi stabil: https://lilypond.org/download.html"
    echo "   - Versi development: https://lilypond.org/development.html"
    echo "2. Install sesuai dengan sistem operasi Anda."
    echo "3. Pastikan command 'lilypond' tersedia dengan menambahkan direktori binary Lilypond ke environment variable PATH."
    echo "   - Linux/macOS: Tambahkan ke ~/.bashrc, ~/.zshrc, atau ~/.profile:"
    echo "     export PATH=\$PATH:/path/to/lilypond/bin"
    echo "   - Windows: Tambahkan ke environment variable PATH untuk Current User atau System"
    echo "4. Restart terminal atau jalankan 'source ~/.bashrc' (khusus untuk Linux/macOS)"
    echo "5. Verifikasi instalasi dengan menjalankan: 'lilypond --version'"
fi

echo ""
echo "🎵 Inisialisasi proyek Website Nyanyian GPM selesai!"