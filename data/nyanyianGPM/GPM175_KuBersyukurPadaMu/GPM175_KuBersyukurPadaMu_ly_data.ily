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
  {
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

    g'4. g'8 g'8 e'8 d'8 c'8 | a'4. g'8 f'2 | \break
    g'4. a'8 g'8 e'8 c'8 e'8 | d'2. r4 | \break
    g'4. g'8 a'8 g'8 e'8 c'8 | a'4. b'8 c''4 b'8 a'8 | \break
    g'4 f'4 e'4 d'4 | c'2. c''8 b'8 | \break
    a'4 a'4. c''8 b'8 a'8 | g'4 e'2 e'8 f'8 | \break
    g'4 c''4 b'4. c''8 | d''2. e''8 d''8 | \break
    c''4 g'4. c''8 c''8 b'8 | a'4 c''2 c''8 d''8 | \break
    e''4 g'4 d''4. e''8 | c''1* 4/4 |

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
