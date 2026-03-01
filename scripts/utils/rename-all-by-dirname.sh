#!/bin/bash

# Script untuk rename semua file dalam setiap subdirektori agar namanya sama dengan nama direktori
# Menyimpan extension file asli

if [ $# -eq 0 ]; then
    echo "Usage: $0 <parent_directory_path>"
    echo "Example: $0 /path/to/parent/directory"
    exit 1
fi

PARENT_DIR="$1"

# Periksa apakah parent directory ada
if [ ! -d "$PARENT_DIR" ]; then
    echo "Error: Parent directory '$PARENT_DIR' tidak ditemukan"
    exit 1
fi

echo "📁 Parent directory: $PARENT_DIR"
echo ""

# Loop untuk semua subdirektori dalam parent directory
for dir in "$PARENT_DIR"/*; do
    # Skip jika bukan directory
    if [ ! -d "$dir" ]; then
        continue
    fi
    
    echo "🔍 Memproses direktori: $(basename "$dir")"
    
    # Loop untuk semua file dalam subdirektori
    for file in "$dir"/*; do
        # Skip jika bukan file
        if [ ! -f "$file" ]; then
            continue
        fi
        
        # Dapatkan nama direktori dan file
        DIR_NAME=$(basename "$dir")
        FILE_NAME=$(basename "$file")
        
        # Skip jika sudah sesuai dengan nama direktori
        if [ "$FILE_NAME" = "$DIR_NAME" ]; then
            echo "  ⏭️  Melewati: $FILE_NAME (sudah sesuai)"
            continue
        fi
        
        # Dapatkan extension file
        EXTENSION="${FILE_NAME##*.}"
        
        # Jika file tidak memiliki extension
        if [ "$FILE_NAME" = "$EXTENSION" ]; then
            echo "  ⚠️  Melewati: $FILE_NAME (tidak ada extension)"
            continue
        fi
        
        # Nama baru
        NEW_NAME="${DIR_NAME}.${EXTENSION}"
        NEW_PATH="$dir/$NEW_NAME"
        
        # Cek apakah file dengan nama baru sudah ada
        if [ -f "$NEW_PATH" ] && [ "$file" != "$NEW_PATH" ]; then
            echo "  ❌ Error: File '$NEW_NAME' sudah ada, melewati '$FILE_NAME'"
            continue
        fi
        
        # Rename file
        if mv "$file" "$NEW_PATH"; then
            echo "  ✅ Rename: '$FILE_NAME' -> '$NEW_NAME'"
        else
            echo "  ❌ Gagal rename: '$FILE_NAME'"
        fi
    done
    
    echo ""
done

echo "🎉 Selesai! Semua file dalam subdirektori telah di-rename."