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

    fis'4 e'8 d'8 a'4 d'8 b'8 | a'4 g'4 fis'4 r4 | fis'4 e'8 d'8 a'4 g'8 fis'8 | e'4 fis'4 e'4 r4 | \break
    fis'4 e'8 d'8 a'4 d'8 b'8 | a'4 g'4 fis'4 r4 | fis'4 e'8 d'8 a'4 g'8 fis'8 | e'4 fis'4 d'4 r4 | \break
    cis''8 cis''4 b'8 a'8 a'4 b'8 | cis''8 b'8 cis''8 d''8 cis''4 r4 | b'8 b'4 b'8 d''4 cis''8 b'8 | a'2. r4 | \break

    % reef
    cis''8 cis''4 b'8 a'4 r4 |  cis''8 b'8 cis''8 d''8 cis''4 r4 | b'8 b'4 b'8 d''4 cis''8 b'8 | a'2 r4 fis'8  e'8 | \break
    d'8 d'4 fis'8 as'8 a'4 b'8 | a'4 g'4 fis' r4 | e'8 fis'8 g'8 a'8 b'4 a'4 | d''2. r4 

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