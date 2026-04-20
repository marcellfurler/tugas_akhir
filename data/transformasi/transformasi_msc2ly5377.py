import re
import os

# =========================
# 1. EXTRACT HEADER
# =========================
def extract_header(content):
    title = re.search(r'title\s*=\s*"([^"]+)"', content)
    composer = re.search(r'composer\s*=\s*"?([^"\n]+)"?', content)

    return {
        "title": title.group(1) if title else "Untitled",
        "composer": composer.group(1).strip() if composer else "Unknown"
    }

def safe_var_name(name):
    name = name.lower()
    name = re.sub(r'[^a-z0-9_]', '_', name)

    # tidak boleh diawali angka di LilyPond
    if re.match(r'^\d', name):
        name = "gpm_" + name

    return name

# =========================
# 2. EXTRACT MUSICAL INFO
# =========================
def extract_music_info(content):
    key_match = re.search(r'\\key\s+([a-g](?:es|is)?)\s+\\major', content)
    time_match = re.search(r'\\time\s+(\d+/\d+)', content)
    tempo_match = re.search(r'\\tempo\s+\d+=(\d+)', content)

    key = key_match.group(1) if key_match else "c"
    time = time_match.group(1) if time_match else "4/4"
    tempo = tempo_match.group(1) if tempo_match else "80"

    # kapitalisasi (E, F, Bes, dll)
    key = key.capitalize()

    return key, time, tempo

# =========================
# 3. EXTRACT NOTES
# =========================
def extract_notes(content):
    match = re.search(r'PartPOneVoiceOne\s*=\s*{(.*?)}', content, re.S)
    return match.group(1) if match else ""


# =========================
# 4. EXTRACT LYRICS
# =========================
def extract_lyrics(content):
    patterns = [
        r'PartPOneVoiceOneLyricsOne\s*=\s*\\lyricmode\s*{(.*?)}',
        r'PartPOneVoiceOneLyricsTwo\s*=\s*\\lyricmode\s*{(.*?)}',
    ]

    for pattern in patterns:
        match = re.search(pattern, content, re.S)
        if match:
            return match.group(1)

    return ""


# =========================
# 5. CLEAN NOTES
# =========================
def clean_notes(text):
    text = re.sub(r'%.*', '', text)

    # hapus global
    text = re.sub(r'\\clef\s+"[^"]+"', '', text)
    text = re.sub(r'\\numericTimeSignature', '', text)
    text = re.sub(r'\\time\s+\d+/\d+', '', text)
    text = re.sub(r'\\key\s+[a-g]+\s+\\(major|minor)', '', text)
    text = re.sub(r'\\tempo\s+\d+=\d+', '', text)

    # hapus trill arrow, accent, dll
    text = re.sub(r'->', '', text)

    # hapus angka bar check
    text = re.sub(r'\\barNumberCheck\s+#\d+', '', text)

    # hapus markup rit., a tempo dll lebih aman
    text = re.sub(r'\^\\markup\s*\{.*?\}', '', text, flags=re.S)
    

    # visual
    text = re.sub(r'\\stemUp|\\stemDown', '', text)
    text = re.sub(r'\\break', '', text)
    text = re.sub(r'\\barNumberCheck\s+#\d+', '', text)
    text = re.sub(r'\\startTrillSpan|\\stopTrillSpan', '', text)
    text = re.sub(r'\\bar\s+"[^"]+"', '', text)

    # markup & dynamic
    text = re.sub(r'\^\s*"[^"]*"', '', text)
    text = re.sub(r'\^\\markup\s*\{[^}]*\}', '', text)

    # bracket
    text = text.replace('[', '').replace(']', '')

    # chord → ambil nada pertama
    text = re.sub(r'<([^ >]+)[^>]*>', r'\1', text)

    # rapikan
    text = re.sub(r'\s+', ' ', text)
    text = text.replace(' |', ' |\n')

    return text.strip()


# =========================
# 6. CLEAN LYRICS
# =========================
def clean_lyrics(text):
    # hapus ignoreMelismata
    text = re.sub(r'\\set\s+ignoreMelismata\s*=\s*##t', '', text)

    # hapus skip
    text = re.sub(r'\\skip\d+', '', text)

    # hapus tanda kutip
    text = text.replace('"', '')

    # 🔥 hapus simbol aneh dari MuseScore
    text = re.sub(r'[<>]', '', text)

    # opsional: hapus simbol tambahan
    text = re.sub(r'[_^~]', '', text)

    # opsional: rapikan dash berlebihan
    text = re.sub(r'-{3,}', '--', text)

    # rapikan spasi
    text = re.sub(r'\s+', ' ', text).strip()

    return text


def format_key(key):
    mapping = {
        "bes": "Bes",
        "aes": "Aes",
        "des": "Des",
        "ges": "Ges",
        "ces": "Ces",
        "ees": "Es",
        "fis": "Fis",
        "cis": "Cis",
        "gis": "Gis",
        "dis": "Dis",
        "ais": "Ais"
    }

    key = key.lower()

    # kalau natural (1 huruf)
    if len(key) == 1:
        return key.upper()

    return mapping.get(key, key.capitalize())


# =========================
# 7. HEADER GPM STYLE
# =========================
def generate_header(title, composer, key, time, tempo):
    return f'''
\\header {{
  title = "{title}"

  poet = \\markup {{
    \\pad-x #1
    \\override #'(baseline-skip . 2.8)
    \\left-column {{
      \\line {{
        "Do = {key}, {time},"
        \\raise #0.3 \\fontsize #-2.5 \\note {{4}} #UP
        "= {tempo}"
      }}
    }}
  }}

  composer = \\markup {{
    Lagu dan Syair:
    \\concat {{
      \\caps "{composer}"
    }}
  }}
}}
'''


# =========================
# 8. GENERATE DATA FILE
# =========================
def generate_data(header, notes, lyrics, var, key, time, tempo):
    return f'''\\version "2.24.4"

#(define is-svg? #f)

\\include "../../__includes/GPM_Globals.ily"

{generate_header(header["title"], header["composer"], key, time, tempo)}

{var}_{key.lower()}_notes = {{
  \\key {key.lower()} \\major
  
  {{

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{{ s1*0 #}}
         (empty-music)
     )

    {notes}

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{{ \\section #}}
         (empty-music)
     )
  }}
}}

{var}_{key.lower()}_music = {{
  \\time {time}
  % \\tempo 4 = {tempo}
  \\{var}_{key.lower()}_notes
  \\bar "|."
}}

{var}_{key.lower()}_music_solmisasi = \\solmisasiMusic \\{var}_{key.lower()}_music

{var}_{key.lower()}_lyrics = \\lyricmode {{
  {lyrics}
}}

{var}_{key.lower()}_lyricsAll = <<
  \\new Lyrics \\lyricsto melodi \\{var}_{key.lower()}_lyrics
>>
'''

# =========================
# 9. GENERATE MAIN FILE
# =========================
def generate_main(data_file, var, tempo):
    return f'''\\version "2.24.4"

\\include "{data_file}"


notasi =
#(if is-svg?
     #{{
       <<
         \\new SolmisasiStaff {{
           \\new SolmisasiVoice = melodi {{
             \\{var}_music_solmisasi
           }}
         }}
       >>
     #}}
     ; else
     #{{
       <<
         \\new SolmisasiStaff {{
           \\new SolmisasiVoice = melodi {{
             \\{var}_music_solmisasi
           }}
         }}
       >>
     #}}
     )

syair =
#(if is-svg?
      #{{
        <<
          \\new Lyrics \\lyricsto melodi {{
            \\{var}_lyrics
          }}
        >>
      #}}
      ; else
      #{{
        <<
          \\new Lyrics \\lyricsto melodi {{
            \\{var}_lyrics
          }}
        >>
      #}}
      )

% Score untuk partitur (PDF dan SVG)
\\score {{
  <<
    \\notasi
    \\syair
  >>
  % Layout untuk SVG animation dan printed
  % Cek __includes/svg-animation-init.ily
  \\layout {{}}
}}

% Score untuk MIDI
\\score {{
  <<
    \\new Staff {{
      \\new Voice = melodi \\{var}_music
    }}
  >>
  \\midi {{
    \\tempo 4 = {tempo}
  }}
}}
'''

# =========================
# 10. GENERATE ONE LINE SVG FILE
# =========================
def generate_one_line(main_file):
    return f'''\\version "2.24.4"

\\include "{main_file}"

\\layout {{
  \\oneLineLayoutForSVG
}}

\\paper {{
  indent = 0
  bookTitleMarkup = ##f
  page-breaking = #ly:one-line-auto-height-breaking
}}
'''


# =========================
# 10. MAIN CONVERT
# =========================
import os

def convert(input_file):
    with open(input_file, "r", encoding="utf-8") as f:
        content = f.read()

    base = os.path.splitext(os.path.basename(input_file))[0]
    var = safe_var_name(base)

    header = extract_header(content)
    raw_notes = extract_notes(content)
    raw_lyrics = extract_lyrics(content)

    raw_key, time, tempo = extract_music_info(content)

    key_display = format_key(raw_key)
    key_engine = raw_key.lower()

    notes = clean_notes(raw_notes)
    lyrics = clean_lyrics(raw_lyrics)

    # =========================
    # NAMA FILE OUTPUT
    # =========================
    data_file = f"{base}_ly_data.ily"
    main_file = f"{base}.ly"
    one_line_file = f"{base}_ly_one_line.ly"

    # =========================
    # GENERATE CONTENT
    # =========================
    data_content = generate_data(header, notes, lyrics, var, key_engine, time, tempo)
    main_content = generate_main(data_file, var, tempo)
    one_line_content = generate_one_line(main_file)

    # fix header display key
    data_content = data_content.replace(f"Do = {key_engine}", f"Do = {key_display}")

    # =========================
    # WRITE FILES
    # =========================
    with open(data_file, "w", encoding="utf-8") as f:
        f.write(data_content)

    with open(main_file, "w", encoding="utf-8") as f:
        f.write(main_content)

    with open(one_line_file, "w", encoding="utf-8") as f:
        f.write(one_line_content)

    print("✅ Data file     :", data_file)
    print("✅ Main file     :", main_file)
    print("✅ One-line file :", one_line_file)


# =========================
# RUN
# =========================
# convert("../nyanyianGPMMusecore2LY/GPM243_IkutYesus/GPM243_IkutYesus.ly")
convert("../nyanyianGPMMusecore2LY/GPM109_BapaKami/musecore/GPM109_BapaKami.ly")
# convert("../nyanyianGPMMusecore2LY/GPM210_SampeDiUjungTaongIni/musecore/GPM210_SampeDiUjungTaongIni.ly")