% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 287. Pegang Tangan Tuhan"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 85"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Hein Samangun"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaratusdelapantujuh_d_notes = {
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

    fis8 fis8 fis8 g8 fis8 e8 d8 g8 | fis4 e4 d2 | \break
    e8 e8 e8 d8 e8 fis8 g8 fis8 | e2. r4 | \break
    fis8 fis8 fis8 g8 fis8 e8 d8 g8 | fis4 e4 d2 | \break
    e8 e8 e8 fis8 g8 fis8 e8 fis8 | d2. r4 | \break
    b'8 b8 b8 b8 g8 g8 a8 b8 | a2. r4 | \break
    g8 g8 g8 g8 g8 g8 a8 b8 | cis2. r4 | \break
    d8 d8 d8 d8 d8 d8 cis8 b8 | a2. r4 | \break
    g8 g8 a8 g8 fis8 fis8 e8 e8 | d2. r4 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaratusdelapantujuh_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusdelapantujuh_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusdelapantujuh_d_music_solmisasi = \solmisasiMusic \gpmduaratusdelapantujuh_d_music

gpmduaratusdelapantujuh_lyricOne = \lyricmode {
    Pe -- gang ta -- ngan Tu -- han, eng -- kau yang le -- mah,
    ha -- rap dan per -- ca -- ya pa -- da -- Nya.
    Pe -- gan ta -- ngan -- Nya sa -- at ra -- sa su -- sah,
    hi -- dup -- mu pas -- ti di -- ku -- at -- kan.
}

gpmduaratusdelapantujuh_lyricReff = \lyricmode {
    Pe -- gang ta -- ngan Tu -- han yang e -- rat,
    ya -- kin I -- a de -- kat di ha -- ti.
    Pe -- gang ta -- ngan -- Nya 'ti -- ap wak -- tu,
    pas -- ti hi -- dup -- mu ba -- ha -- gi -- a.
}
