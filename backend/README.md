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

## 🎵 Instalasi Lilypond

Lilypond diperlukan untuk kompilasi notasi musik. Ikuti salah satu metode instalasi berikut:

### Metode 1: Unduh Manual (Direkomendasikan)

1. **Unduh Lilypond versi 2.25.33**
   - Kunjungi: https://lilypond.org
   - Pilih versi **2.25.33** untuk sistem operasi Anda
   - Unduh file installer yang sesuai

2. **Opsi A: Ekstrak ke direktori backend**
   ```bash
   # Contoh untuk Linux (ganti dengan nama file yang diunduh)
   tar -xzf lilypond-2.25.33-linux-x86_64.tar.gz -C /path/to/backend/
   # Tambahkan ke PATH
   export PATH="$PATH:/path/to/backend/lilypond-2.25.33/bin"
   ```

3. **Opsi B: Instalasi sistem**
   - Ikuti instruksi instalasi dari website Lilypond
   - Pastikan binary Lilypond tersedia dalam PATH sistem
   - Verifikasi instalasi: `lilypond --version`

### Metode 2: Package Manager (Linux)

```bash
# Ubuntu/Debian
sudo apt-get install lilypond

# Fedora
sudo dnf install lilypond

# Arch Linux
sudo pacman -S lilypond
```

### Verifikasi Instalasi

Setelah instalasi, pastikan Lilypond berfungsi dengan benar:

```bash
# Cek versi
lilypond --version

# Harus menampilkan: LilyPond 2.25.33
```

---

*Terakhir diperbarui: 2025-02-21*
