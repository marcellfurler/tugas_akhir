import re
import os

# =========================
# SAFE VAR NAME
# =========================
def safe_var_name(name):
    name = name.lower()
    name = re.sub(r'[^a-z0-9_]', '_', name)

    if re.match(r'^\d', name):
        name = "gpm_" + name

    return name


# =========================
# HEADER
# =========================
def extract_header(content):
    title = re.search(r'title\s*=\s*"([^"]+)"', content)
    composer = re.search(r'composer\s*=\s*"?([^"\n]+)"?', content)

    return {
        "title": title.group(1) if title else "Untitled",
        "composer": composer.group(1).strip() if composer else "Unknown"
    }


# =========================
# MUSIC INFO
# =========================
def extract_music_info(content):
    key_match = re.search(r'\\key\s+([a-g](?:es|is)?)\s+\\major', content)
    time_match = re.search(r'\\time\s+(\d+/\d+)', content)
    tempo_match = re.search(r'\\tempo\s+\d+=(\d+)', content)

    key = key_match.group(1) if key_match else "c"
    time = time_match.group(1) if time_match else "4/4"
    tempo = tempo_match.group(1) if tempo_match else "80"

    return key, time, tempo


# =========================
# FORMAT KEY (DISPLAY)
# =========================
def format_key(key):
    mapping = {
        "bes": "Bes", "aes": "Aes", "des": "Des",
        "ges": "Ges", "ces": "Ces", "ees": "Es",
        "fis": "Fis", "cis": "Cis", "gis": "Gis",
        "dis": "Dis", "ais": "Ais"
    }
    return mapping.get(key.lower(), key.upper())


# =========================
# NOTES
# =========================
def extract_notes(content):
    match = re.search(r'PartPOneVoiceOne\s*=\s*{(.*?)}', content, re.S)
    return match.group(1) if match else ""


def clean_notes(text):
    text = re.sub(r'%.*', '', text)

    text = re.sub(r'\\clef\s+"[^"]+"', '', text)
    text = re.sub(r'\\numericTimeSignature', '', text)
    text = re.sub(r'\\time\s+\d+/\d+', '', text)
    text = re.sub(r'\\key\s+[a-g]+\s+\\(major|minor)', '', text)
    text = re.sub(r'\\tempo\s+\d+=\d+', '', text)

    text = re.sub(r'\\stemUp|\\stemDown', '', text)
    text = re.sub(r'\\break', '', text)
    text = re.sub(r'\\barNumberCheck\s+#\d+', '', text)
    text = re.sub(r'\\startTrillSpan|\\stopTrillSpan', '', text)
    text = re.sub(r'\\bar\s+"[^"]+"', '', text)

    text = re.sub(r'\^\s*"[^"]*"', '', text)
    text = re.sub(r'\^\\markup\s*\{.*?\}', '', text, flags=re.S)

    text = text.replace('[', '').replace(']', '')

    # chord → ambil nada pertama
    text = re.sub(r'<([^ >]+)[^>]*>', r'\1', text)

    text = re.sub(r'\s+', ' ', text)
    text = text.replace(' |', ' |\n')

    return text.strip()


def extract_all_lyrics(content):
    pattern = r'PartPOneVoiceOneLyrics(\w+)\s*=\s*\\lyricmode\s*{(.*?)}'
    matches = re.findall(pattern, content, re.S)

    lyrics = []
    for _, lyr in matches:
        # hapus \set ignoreMelismata
        lyr = re.sub(r'\\set\s+ignoreMelismata\s*=\s*##t', '', lyr)

        # hapus skip
        lyr = re.sub(r'\\skip\d+', '', lyr)

        # hapus tanda kutip
        lyr = lyr.replace('"', '')

        # 🔥 hapus simbol aneh (INI YANG KAMU BUTUH)
        lyr = re.sub(r'[<>]', '', lyr)

        # opsional: hapus simbol lain kalau muncul
        lyr = re.sub(r'[_^~]', '', lyr)

        # rapikan spasi
        lyr = re.sub(r'\s+', ' ', lyr).strip()

        lyrics.append(lyr)

    return lyrics


# =========================
# HEADER GPM
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
# GENERATE DATA (MULTI SUPPORT)
# =========================
def generate_data(header, notes, lyrics, var, key_display, time, tempo):
    key_lower = key_display.lower()
    total = max(1, len(lyrics))

    # PDF version
    pdf = f'''
{var}_{key_lower}_notes_pdf = {{
  \\repeat volta {total} {{
    {notes}
  }}
}}
'''

    # SVG version
    svg = f'\n{var}_{key_lower}_notes_svg = {{\n'
    for i in range(total):
        svg += f'''
  \\section
  \\tweak X-offset #1
  \\sectionLabel \\markup\\smaller\\bold "Bait {i+1}"
  {notes}
'''
    svg += "\n}\n"

    combine = f'''
{var}_{key_lower}_notes =
#(if is-svg?
     #{{\\{var}_{key_lower}_notes_svg#}}
     #{{\\{var}_{key_lower}_notes_pdf#}})
'''

    # lyrics
    lyr_block = ""
    if len(lyrics) == 0:
        lyr_block = f'''
{var}_lyrics = \\lyricmode {{ }}

{var}_lyricsAll = <<
  \\new Lyrics \\lyricsto melodi \\{var}_lyrics
>>
'''
    else:
        for i, lyr in enumerate(lyrics):
            lyr_block += f'''
{var}_lyric{i+1} = \\lyricmode {{
  {lyr}
}}
'''

        lyr_block += f'''
{var}_lyricsAll =
#(if is-svg?
     #{{ << \\new Lyrics \\lyricsto melodi {{
'''
        for i in range(len(lyrics)):
            lyr_block += f'\\{var}_lyric{i+1}\n'

        lyr_block += '''} >> #}
     ; else
     #{
       <<
'''
        for i in range(len(lyrics)):
            lyr_block += f'''
         \\new Lyrics \\lyricsto melodi {{
           \\{var}_lyric{i+1}
         }}
'''

        lyr_block += '''
       >>
     #})
'''

    return f'''\\version "2.24.4"

#(define is-svg? #f)

\\include "../../__includes/GPM_Globals.ily"

{generate_header(header["title"], header["composer"], key_display, time, tempo)}

{pdf}
{svg}
{combine}

{var}_{key_lower}_music = {{
  \\time {time}
  \\key {key_lower} \\major
  \\{var}_{key_lower}_notes
  \\bar "|."
}}

{var}_{key_lower}_music_solmisasi =
\\solmisasiMusic \\{var}_{key_lower}_music

{lyr_block}
'''


# =========================
# MAIN FILE
# =========================
def generate_main(data_file, var, key_lower, tempo):
    return f'''\\version "2.24.4"

\\include "{data_file}"

\\score {{
  <<
    \\new SolmisasiStaff {{
      \\new SolmisasiVoice = melodi {{
        \\{var}_{key_lower}_music_solmisasi
      }}
    }}
    \\{var}_lyricsAll
  >>
  \\layout {{}}
}}

\\score {{
  \\unfoldRepeats <<
    \\new Staff {{
      \\new Voice = melodi \\{var}_{key_lower}_music
    }}
  >>
  \\midi {{
    \\tempo 4 = {tempo}
  }}
}}
'''


# =========================
# ONE LINE FILE
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
# CONVERT
# =========================
def convert(input_file):
    with open(input_file, "r", encoding="utf-8") as f:
        content = f.read()

    base = os.path.splitext(os.path.basename(input_file))[0]
    var = safe_var_name(base)

    header = extract_header(content)

    raw_key, time, tempo = extract_music_info(content)
    key_display = format_key(raw_key)
    key_lower = raw_key.lower()

    notes = clean_notes(extract_notes(content))
    lyrics = extract_all_lyrics(content)

    data_file = f"{base}_ly_data.ily"
    main_file = f"{base}.ly"
    one_line_file = f"{base}_ly_one_line.ly"

    # WRITE FILES
    with open(data_file, "w", encoding="utf-8") as f:
        f.write(generate_data(
            header, notes, lyrics, var,
            key_display, time, tempo
        ))

    with open(main_file, "w", encoding="utf-8") as f:
        f.write(generate_main(
            data_file, var, key_lower, tempo
        ))

    with open(one_line_file, "w", encoding="utf-8") as f:
        f.write(generate_one_line(main_file))

    print("✅ Data file     :", data_file)
    print("✅ Main file     :", main_file)
    print("✅ One-line file :", one_line_file)


# =========================
# RUN
# =========================
# convert("../nyanyianGPMMusecore2LY/GPM208_MalamMenutupiWajahBumi/musecore/GPM208_MalamMenutupiWajahBumi.ly")
convert("../nyanyianGPMMusecore2LY/GPM292_TuhankuAjarlahAkuBersabar/musecore/GPM292_TuhankuAjarlahAkuBersabar.ly")
# convert("../test/test/tuhan ku.ly")