% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 126. Kibarkan Panji Raja mu"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Bartje Istia"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusduaenam_d_notes = {
  \key d \major
  \relative d' {
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

    fis4 e8 d8 a'4 d,8 b'8 | a4 g4 fis4 r4 | fis4 e8 d8 a'4 g8 fis8 | e4 fis4 e4 r4 | \break
    fis4 e8 d8 a'4 d,8 b'8 | a4 g4 fis4 r4 | fis4 e8 d8 a'4 g8 fis8 | e4 fis4 d4 r4 | \break
    cis'8 cis4 b8 a8 a4 b8 | cis8 b8 cis8 d8 cis4 r4 | b8 b4 b8 d4 cis8 b8 | a2. r4 | \break

    % reef
    cis8 cis4 b8 a4 r4 |  cis8 b8 cis8 d8 cis4 r4 | b8 b4 b8 d4 cis8 b8 | a2 r4 fis8  e8 | \break
    d8 d4 fis8 as8 a4 b8 | a4 g4 fis r4 | e8 fis8 g8 a8 b4 a4 | d2. r4 

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusduaenam_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusduaenam_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusduaenam_d_music_solmisasi = \solmisasiMusic \gpmseratusduaenam_d_music


gpmseratusduaenam_lyricOne = \lyricmode {
  Ki -- bar -- kan -- lah  pan -- ji Ra -- ja Mu, be -- ri -- ta pas -- kah t'lah ber -- ge -- ma.
  Hai sam -- but -- lah ke -- me -- na -- ngan -- Nya, ku -- bur ke -- lam i -- blis me -- nge -- rang.
  Ja -- ngan kau ra -- gu, ja -- ngan -- lah kau  ce -- mas ku -- a -- sa maut t'lah le -- nyap.
  Ki -- bar -- kan -- lah pan -- ji Ra -- ja -- Mu Tu -- han sung -- guh per -- ka -- sa
  jan -- ji Al -- lah di Sor -- ga su -- dah ge -- nap, ki -- ta -- pun di -- s'la -- mat -- kan.
}