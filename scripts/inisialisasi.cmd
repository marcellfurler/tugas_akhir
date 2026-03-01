@echo off
REM Script inisialisasi proyek Website Nyanyian GPM untuk Command Prompt (CMD)
REM Menginisialisasi submodule dan memeriksa dependensi

REM 1. Pindah ke direktori proyek (absolute path)
REM Ganti PROJECT_DIR sesuai dengan lokasi hasil clone project Anda
set PROJECT_DIR=%USERPROFILE%\projects\tugas_akhir

cd /d "%PROJECT_DIR%"
if %ERRORLEVEL% neq 0 (
    echo Error: Tidak dapat mengakses direktori proyek %PROJECT_DIR%
    exit /b 1
)

echo 📍 Direktori proyek: %CD%
echo.

REM 2. Inisialisasi dan update submodule
echo 🔄 Menginisialisasi submodule...
git submodule update --init --recursive

if %ERRORLEVEL% equ 0 (
    echo ✅ Inisialisasi submodule berhasil!
) else (
    echo ❌ Inisialisasi submodule gagal!
    exit /b 1
)

echo.

REM 2b. Checkout submodule ke branch yang benar
echo 🔄 Checkout submodule ke branch yang benar...

REM Checkout bwv-zeug ke branch solmisasi
echo   - bwv-zeug: checkout ke branch 'solmisasi'...
cd backend\bwv-zeug
git checkout solmisasi
if %ERRORLEVEL% equ 0 (
    echo   ✅ bwv-zeug berhasil checkout ke branch 'solmisasi'
) else (
    echo   ❌ bwv-zeug gagal checkout ke branch 'solmisasi'
)
cd ..\..

REM Checkout solmisasi-lily ke branch master
echo   - solmisasi-lily: checkout ke branch 'master'...
cd backend\solmisasi-lily
git checkout master
if %ERRORLEVEL% equ 0 (
    echo   ✅ solmisasi-lily berhasil checkout ke branch 'master'
) else (
    echo   ❌ solmisasi-lily gagal checkout ke branch 'master'
)
cd ..\..

echo.

REM 3. Periksa ketersediaan command lilypond
echo 🔍 Memeriksa ketersediaan Lilypond...
lilypond --version >nul 2>&1

if %ERRORLEVEL% equ 0 (
    for /f "delims=" %%i in ('lilypond --version 2^>nul') do (
        echo ✅ Lilypond ditemukan: %%i
        goto :lilypond_found
    )
) else (
    echo ❌ Command 'lilypond' tidak ditemukan pada sistem.
    echo.
    echo 📋 Instruksi instalasi Lilypond:
    echo 1. Unduh Lilypond versi terbaru:
    echo    - Versi stabil: https://lilypond.org/download.html
    echo    - Versi development: https://lilypond.org/development.html
    echo 2. Install sesuai dengan sistem operasi Anda.
    echo 3. Pastikan command 'lilypond' tersedia dengan menambahkan direktori binary Lilypond ke environment variable PATH.
    echo    - Windows: Tambahkan ke environment variable PATH untuk Current User atau System
    echo 4. Restart Command Prompt atau PowerShell
    echo 5. Verifikasi instalasi dengan menjalankan: 'lilypond --version'
)

:lilypond_found
echo.
echo 🎵 Inisialisasi proyek Website Nyanyian GPM selesai!
pause
