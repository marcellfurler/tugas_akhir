# Script inisialisasi proyek Website Nyanyian GPM untuk PowerShell
# Menginisialisasi submodule dan memeriksa dependensi

# 1. Pindah ke direktori proyek (absolute path)
# Ganti PROJECT_DIR sesuai dengan lokasi hasil clone project Anda
$PROJECT_DIR = "$env:USERPROFILE\projects\tugas_akhir"

try {
    Set-Location $PROJECT_DIR -ErrorAction Stop
    Write-Host "📍 Direktori proyek: $(Get-Location)"
} catch {
    Write-Host "Error: Tidak dapat mengakses direktori proyek $PROJECT_DIR"
    exit 1
}

Write-Host ""

# 2. Inisialisasi dan update submodule
Write-Host "🔄 Menginisialisasi submodule..."
$process = Start-Process -FilePath "git" -ArgumentList "submodule", "update", "--init", "--recursive" -Wait -PassThru -NoNewWindow

if ($process.ExitCode -eq 0) {
    Write-Host "✅ Inisialisasi submodule berhasil!"
} else {
    Write-Host "❌ Inisialisasi submodule gagal!"
    exit 1
}

Write-Host ""

# 2b. Checkout submodule ke branch yang benar
Write-Host "🔄 Checkout submodule ke branch yang benar..."

# Checkout bwv-zeug ke branch solmisasi
Write-Host "  - bwv-zeug: checkout ke branch 'solmisasi'..."
Set-Location "backend\bwv-zeug"
$process = Start-Process -FilePath "git" -ArgumentList "checkout", "solmisasi" -Wait -PassThru -NoNewWindow
if ($process.ExitCode -eq 0) {
    Write-Host "  ✅ bwv-zeug berhasil checkout ke branch 'solmisasi'"
} else {
    Write-Host "  ❌ bwv-zeug gagal checkout ke branch 'solmisasi'"
}
Set-Location "..\.."

# Checkout solmisasi-lily ke branch master
Write-Host "  - solmisasi-lily: checkout ke branch 'master'..."
Set-Location "backend\solmisasi-lily"
$process = Start-Process -FilePath "git" -ArgumentList "checkout", "master" -Wait -PassThru -NoNewWindow
if ($process.ExitCode -eq 0) {
    Write-Host "  ✅ solmisasi-lily berhasil checkout ke branch 'master'"
} else {
    Write-Host "  ❌ solmisasi-lily gagal checkout ke branch 'master'"
}
Set-Location "..\.."

Write-Host ""

# 3. Periksa ketersediaan command lilypond
Write-Host "🔍 Memeriksa ketersediaan Lilypond..."
try {
    $lilypondVersion = & lilypond --version 2>$null | Select-Object -First 1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✅ Lilypond ditemukan: $lilypondVersion"
    } else {
        throw "Command not found"
    }
} catch {
    Write-Host "❌ Command 'lilypond' tidak ditemukan pada sistem."
    Write-Host ""
    Write-Host "📋 Instruksi instalasi Lilypond:"
    Write-Host "1. Unduh Lilypond versi terbaru:"
    Write-Host "   - Versi stabil: https://lilypond.org/download.html"
    Write-Host "   - Versi development: https://lilypond.org/development.html"
    Write-Host "2. Install sesuai dengan sistem operasi Anda."
    Write-Host "3. Pastikan command 'lilypond' tersedia dengan menambahkan direktori binary Lilypond ke environment variable PATH."
    Write-Host "   - Windows: Tambahkan ke environment variable PATH untuk Current User atau System"
    Write-Host "4. Restart PowerShell atau Command Prompt"
    Write-Host "5. Verifikasi instalasi dengan menjalankan: 'lilypond --version'"
}

Write-Host ""
Write-Host "🎵 Inisialisasi proyek Website Nyanyian GPM selesai!"
