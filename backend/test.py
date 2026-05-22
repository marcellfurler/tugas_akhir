import importlib

packages = [
    "pandas", "numpy", "librosa", "soundfile", "matplotlib",
    "invoke", "yaml", "lxml", "madmom", "scipy", "mido", "midi2audio"
]

for pkg in packages:
    try:
        module = importlib.import_module(pkg)
        print(f"{pkg} ✅ OK")
    except Exception as e:
        print(f"{pkg} ❌ ERROR: {e}")

print("="*50)
# Test audio processing
import librosa
import madmom
import scipy

# Test data processing
import pandas
import numpy

# Test MIDI tools
import mido
import midi2audio

print("All critical dependencies working!")