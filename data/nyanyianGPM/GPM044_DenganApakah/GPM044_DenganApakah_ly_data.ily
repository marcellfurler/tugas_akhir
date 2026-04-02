% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 44. Dengan Apakah"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
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

gpmempatpuluhempat_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 2 {
    % Trik untuk menampilkan bait dengan section
    % pada SVG (mode unfolded)
    #(if is-svg?
         #{
           \volta 1 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 1"
           }
           \volta 2 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 2"
           }
         #}
         ; else/defaulte
         (empty-music)
         )

    \partial 4 fis8 g8 | a4 a4 a4 a8 a8 | b4 b4 a4 d,8 e8 | fis4 e8 d8 e4 fis4 | e2 r4 \break
    fis8 g8 | a4 a4 a4 a8 a8 | b4 b4 a4 d,8 e8 | fis4 g8 fis8 e4 cis4 | d2 r4 \break
    cis8 d8 | e4 e4 e4 d8 e8 | fis4 fis4 fis4 e8 fis8 | g4 g8 g8 fis4 \slurDashed (fis8 d8) \slurSolid | e2 r4 \break
    fis8 e8 | d4 d4 d4 e8 d8 | d4 b4 b4 d8 e8 | fis4. fis8 fis4 a4 | \break
    a4 g4 r4 fis8 e8 | d4 d8 d8 cis4. d8 | d2 r4 \break 

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmempatpuluhempat_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmempatpuluhempat_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmempatpuluhempat_d_music_solmisasi = \solmisasiMusic \gpmempatpuluhempat_d_music

gpmempatpuluhempat_lyricOne = \lyricmode {
    De -- ngan a -- pa -- kah 'kan ku ba -- las -- kan se -- mu -- a pe -- ngor -- ba -- nan -- Mu.
    De -- ngan a -- pa -- jah 'kan ku ba -- yar -- kan se -- mu -- a pe -- ngor -- ba -- nan -- Mu.
    Ji -- wa ter -- sik -- sa ber -- pe -- luh do -- sa, na -- mun Kau \set ignoreMelismata = ##t me -- nga -- si -- hi -_ ku. \set ignoreMelismata = ##f
    _ B'ri -- kan -- lah a -- ku Roh dan Hik -- mat -- Mu bi -- ar a -- ku ja -- di ba -- ru
    mau i -- ku pa -- da fir -- man -- Mu.
}

gpmempatpuluhempat_lyricTwo = \lyricmode {
  De -- ngan a -- pa -- kah 'kan ku be -- ri -- kan yang a -- da pa -- da di -- ri -- ku.
  De -- ngan a -- pa -- kah 'kan ku buk -- ti -- kan se -- mu -- a pe -- ngab -- di -- an -- ku.
  Su -- rut lang -- kah -- ku me -- ngi -- ku -- ti -- Mu na -- mun Kau mau me -- mang -- gil -- ku.
  Bu -- ka ma -- ta -- ku, bu -- ka ha -- ti -- ku, bi -- ar a -- ku s'la -- ma hi -- dup
  se -- ti -- a pa -- da jan -- ji -- Mu.
}
