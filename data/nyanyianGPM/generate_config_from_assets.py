#!/usr/bin/env python3
"""
Generate BWV-Zeug config.yaml from assets (.ly + audio + svg)
Uses ONLY existing libraries: librosa, mido, pyyaml (assumed installed in project)
No additional dependencies introduced.

Purpose:
- Extract total duration from audio (librosa)
- Extract measure count from LilyPond (.ly) file
- Build config.yaml for BWV sync pipeline

Usage:
python generate_config_from_assets.py \
  --ly file.ly \
  --audio file.mp3 \
  --svg file.svg \
  --out config.yaml
"""

import argparse
import re
import yaml
import librosa
from pathlib import Path

# Optional MIDI support (if needed later)
import mido


def guess_duration_from_audio(audio_path: str) -> float:
    """Get duration in seconds using librosa"""
    try:
        y, sr = librosa.load(audio_path, sr=None)
        return float(librosa.get_duration(y=y, sr=sr))
    except Exception as e:
        print(f"⚠️ Audio load failed: {e}")
        return 0.0


def extract_total_measures_from_ly(ly_path: str) -> int:
    """
    Try to extract total measures from LilyPond file.
    Strategy:
    - count barlines |
    - fallback: count \bar "|" occurrences
    """
    text = Path(ly_path).read_text(encoding="utf-8", errors="ignore")

    # Method 1: explicit bar checks
    bar_count = text.count("|")

    # Method 2: LilyPond explicit bar commands
    bar_cmd_count = len(re.findall(r'\\bar\s+"\|"', text))

    # Choose best estimate
    total = max(bar_count // 2, bar_cmd_count)

    # fallback minimum
    return max(total, 1)


def extract_title_from_ly(text: str):
    m = re.search(r'title\s*=\s*"([^"]+)"', text)
    return m.group(1) if m else "Unknown Title"


def extract_composer_from_ly(text: str):
    m = re.search(r'composer\s*=\s*"([^"]+)"', text)
    return m.group(1) if m else "Unknown"


def build_config(ly_path, audio_path, svg_path):
    ly_text = Path(ly_path).read_text(encoding="utf-8", errors="ignore")

    title = extract_title_from_ly(ly_text)
    composer = extract_composer_from_ly(ly_text)

    duration = guess_duration_from_audio(audio_path)
    measures = extract_total_measures_from_ly(ly_path)

    config = {
        "workInfo": {
            "title": title,
            "fullTitle": title,
            "composer": composer,
            "arranger": "",
            "lyricist": composer,
            "instrument": "SATB",
            "notationType": "not balok",
            "workType": "Salinan",
            "workId": Path(ly_path).stem,
            "movementName": "1"
        },
        "files": {
            "audioPath": Path(audio_path).name,
            "svgPath": Path(svg_path).name if svg_path else ""
        },
        "musicalStructure": {
            "totalDurationSeconds": round(duration, 3),
            "totalMeasures": measures,
            "lastMeasureDuration": "4/4",
            "visualLeadTimeSeconds": 0.05
        },
        "measureHighlighters": {
            "alternating": {
                "name": "Alternating Colors",
                "type": "alternating",
                "colors": ["lightskyblue", "lightsalmon"],
                "opacity": 0.25
            }
        }
    }

    return config


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--ly", required=True)
    parser.add_argument("--audio", required=True)
    parser.add_argument("--svg", required=True)
    parser.add_argument("--out", required=True)

    args = parser.parse_args()

    config = build_config(args.ly, args.audio, args.svg)

    with open(args.out, "w", encoding="utf-8") as f:
        yaml.dump(config, f, sort_keys=False, allow_unicode=True)

    print(f"✅ Config generated: {args.out}")
    print(f"   Duration: {config['musicalStructure']['totalDurationSeconds']}s")
    print(f"   Measures: {config['musicalStructure']['totalMeasures']}")


if __name__ == "__main__":
    main()
