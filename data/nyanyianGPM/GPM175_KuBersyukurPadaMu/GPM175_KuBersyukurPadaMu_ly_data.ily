% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 175. Ku Bersyukur PadaMu"

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
      \caps "O. Laisina"
    }
  }
}

% do = c -> 1C - 2D - 3E - 4F 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratustujuhlima_c_notes = {
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

    g'4. g8 g8 e8 d8 c8 | a'4. g8 f2 | \break
    g4. a8 g8 e8 c8 e8 | d2. r4 | \break
    g4. g8 a8 g8 e8 c8 | a'4. b8 c4 b8 a8 | \break
    g4 f4 e4 d4 | c2. c'8 b8 | \break
    a4 a4. c8 b8 a8 | g4 e2 e8 f8 | \break
    g4 c4 b4. c8 | d2. e8 d8 | \break
    c4 g4. c8 c8 b8 | a4 c2 c8 d8 | \break
    e4 g,4 d'4. e8 | c1* 4/4 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratustujuhlima_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratustujuhlima_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratustujuhlima_c_music_solmisasi = \solmisasiMusic \gpmseratustujuhlima_c_music

gpmseratustujuhlima_lyricOne = \lyricmode {
    Ku ber -- syu -- kur pa -- da -- Mu Tu -- han, a -- tas ka -- sih se -- tia -- Mu.
    Ku -- a -- gung -- kan na -- ma -- Mu Tu -- han, di -- se -- pan -- jang hi -- dup -- ku.
    Ku -- nya -- nyi -- kan dan ku -- mas -- yur -- kan ke -- se -- tia -- an -- Mu, Tu -- han
    a -- tas ber -- kat ke -- mu -- ra -- han -- Mu di se -- pan -- jang hi -- dup -- ku.  
}
