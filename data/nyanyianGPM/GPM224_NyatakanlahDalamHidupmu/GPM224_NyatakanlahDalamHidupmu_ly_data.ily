% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 224. Nyatakanlah Dalam Hidupmu"

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

gpmduaratusduaempat_d_notes = {
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

    fis8 fis8 fis8 fis8 e8 d8 d8 e8 | fis2. r4 | fis8 fis8 fis8 fis8 g8 g8 fis8 g8 | \break
    a2 r8 fis8 e8 d8 | b'4 b4 b8 g8 g8 b8 | a8 a4 g8 fis4 r4 | \break
    gis8 gis4 fis8 e8 gis8 b8 gis8 | a2. r4 | \break

    fis8 fis8 fis8 fis8 e8 d8 d8 e8 | fis2. r4 | fis8 fis8 fis8 fis8 g8 g8 fis8 g8 | \break
    a2 r8 fis8 e8 d8 | b'4 b4 b8 g8 g8 b8 | a8 a4 g8 fis4 r4 | \break
    e8 e8 e8 fis8 g8 e8 d8 cis8 | d2 r4  a'8 b8 | \break

    a4 fis4 g8 fis8 g8 b8 | a4 fis4 r4 a8 a8 | g4 e4 fis8 e8 d8 e8 | \break
    fis2 r4 a8 g8 | fis4 fis4 g8 fis8 g8 a8 | b2 r4 cis8 b8 | \break
    a4 fis4 e8 a8 g8 e8 | d2. r4 | 

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaratusduaempat_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusduaempat_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusduaempat_d_music_solmisasi = \solmisasiMusic \gpmduaratusduaempat_d_music

gpmduaratusduaempat_lyricOne = \lyricmode {
    Nya -- ta -- kan -- lah da -- lam hi -- dup -- mu,
    nya -- ta -- kan pa -- da ti -- ap o -- rang,
    bah -- wa ka -- sih Tu -- han tak' kan per -- nah ber -- u -- bah,
    ki -- ni dan s'la -- ma- la -- ma -- nya.
    Nya -- ta -- kan -- lah ke -- mu -- lia -- an -- Nya,
    da -- lam ka -- ta dan per -- bu -- at -- an,
    ja -- uh -- kan -- lah hi -- dup da -- ri s'ga -- la yang ja -- hat,
    ya -- kin Tu -- han a -- da ser -- ta -- mu.
    Ha -- le -- lu -- ya, Al -- lah yang per -- ka -- sa.
    Ma -- ha kua -- sa, A -- gung kar -- ya -- Nya. 
    Ma -- ha ting -- gi, Ma -- ha mu -- li -- a, 
    ba -- gi ki -- ta hi -- dup ba -- ha -- gia. 
}

