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
        "= 80"
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

    fis'8 fis'8 fis'8 g'8 fis'8 e'8 d'8 g'8 | fis'4 e'4 d'2 | \break
    e'8 e'8 e'8 d'8 e'8 fis'8 g'8 fis'8 | e'2. r4 | \break
    fis'8 fis'8 fis'8 g'8 fis'8 e'8 d'8 g'8 | fis'4 e'4 d'2 | \break
    e'8 e'8 e'8 fis'8 g'8 fis'8 e'8 fis'8 | d'2. r4 | \break
    b'8 b'8 b'8 b'8 g'8 g'8 a'8 b'8 | a'2. r4 | \break
    g'8 g'8 g'8 g'8 g'8 g'8 a'8 b'8 | cis''2. r4 | \break
    d''8 d''8 d''8 d''8 d''8 d''8 cis''8 b'8 | a'2. r4 | \break
    g'8 g'8 a'8 g'8 fis'8 fis'8 e'8 e'8 | d'2. r4 |

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
