% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 117. Anak Domba Allah"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = G, 2/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
      "Berdasarkan Lagu Trad. Pulau Haruku"
      \vspace #1
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", PH, 1994"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratustujuhbelas_g_notes = {
  \key g \major
  {
    % Trik untuk menampilkan bait dengan section
    % pada SVG (mode unfolded)
    #(if is-svg?
         #{
           \volta 1 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 1"
           }
         #}
         ; else/defaulte
         (empty-music)
         )

    d''8 d''8 d''8 d''8 | d''8 b'8 d''8 c''8 | \break
    b'8 b'8 c''8 c''8 | b'4 b'4 | \break
    g'8 g'8 b'8 b'8 | b'8 (d''8) a'4 \breathe | \break

    d''8 d''8 d''8 d''8 | d''8 b'8 d''8 c''8 | \break
    b'8 b'8 c''8 c''8 | b'4 b'4 \breathe | \break
    g'8 g'8 b'8 b'8 | b'8 (d''8) a'4 \breathe | \break

    d''8 d''8 d''8 d''8 | d''8 b'8 d''8 c''8 | \break
    b'8 b'8 c''8 c''8 | b'4 b'4 \breathe | \break
    g'8 g'8 b'8 d''8 | c''8 (b'8) | b'4~ | b'2

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratustujuhbelas_g_music = {
  \time 2/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratustujuhbelas_g_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratustujuhbelas_g_music_solmisasi = \solmisasiMusic \gpmseratustujuhbelas_g_music

gpmseratustujuhbelas_lyricOne = \lyricmode {
    A -- nak Dom -- ba Al -- lah, Kau meng -- ha -- pus do -- sa du -- nia,
    ka -- sih -- a -- ni ka -- mi.
    A -- nak dom -- ba Al -- lah, Kau meng -- ha -- pus do -- sa du -- nia,
    ka -- sih -- a -- ni ka -- mi.
    A -- nak dom -- ba Al -- lah, Kau meng -- ha -- pus do -- sa du -- nia,
    b'ri -- lah ka -- mi da -- mai.
}