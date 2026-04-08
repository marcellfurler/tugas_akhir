% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 167. Bersyukurlah"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Haris Paais"
      " - Juli, 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusenamtujuh_c_notes = {
  \key c \major
  \relative c'{
    % Trik untuk menampilkan bait dengan section
    % pada SVG (mode unfolded)
    #(if is-svg?
         #{
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 1"

         #}
         ; else/defaulte
         (empty-music)
         )

    e4 e8 d8 c4 e8 f8 | g4. a8 g4. g8 | \break
    c4 g8 g8 f4 e4 | d2. r4 | \break
    d4 d8 c8 d4. e8 | f4. g8 f4. g8 | \break
    b8 b8 b8 a8 g4 f4 | e2. r4 | \break
    e4 e8 d8 c4 e8 f8 | g4. a8 g4. g8 | \break
    c4 g8 g8 a4 ais4 | a2. r4 | \break
    a4. a8 a4 a8 b8 | c4. a8 g4. \breathe g8 | \break
    b8 b8 b8 a8  g4 b4 | c2. r4

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusenamtujuh_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenamtujuh_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenamtujuh_c_music_solmisasi = \solmisasiMusic \gpmseratusenamtujuh_c_music

gpmseratusenamtujuh_lyricOne = \lyricmode {
    Ber -- syu -- kur -- lah dan ber -- syu -- kur lah, ber -- syu -- kur ba -- gi Tu -- han. 
    Ka -- sih yang tak per -- nah pu -- dar di b'ri -- kan ba -- gi u -- mat -- Nya.
    Ber -- syu -- kur -- lah dan ber -- syu -- kur lah, ber -- syu -- kur ba -- gi Tu -- han. 
    Ka -- sih yang tak per -- nah pu -- dar di b'ri -- kan ba -- gi u -- mat -- Nya.
}
