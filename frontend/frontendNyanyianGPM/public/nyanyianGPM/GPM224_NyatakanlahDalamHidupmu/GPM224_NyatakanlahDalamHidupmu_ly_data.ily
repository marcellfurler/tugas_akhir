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

    fis'8 fis'8 fis'8 fis'8 e'8 d'8 d'8 e'8 | fis'2. r4 | fis'8 fis'8 fis'8 fis'8 g'8 g'8 fis'8 g'8 | \break
    a'2 r8 fis'8 e'8 d'8 | b'4 b'4 b'8 g'8 g'8 b'8 | a'8 a'4 g'8 fis'4 r4 | \break
    gis'8 gis'4 fis'8 e'8 gis'8 b'8 gis'8 | a'2. r4 | \break

    fis'8 fis'8 fis'8 fis'8 e'8 d'8 d'8 e'8 | fis'2. r4 | fis'8 fis'8 fis'8 fis'8 g'8 g'8 fis'8 g'8 | \break
    a'2 r8 fis'8 e'8 d'8 | b'4 b'4 b'8 g'8 g'8 b'8 | a'8 a'4 g'8 fis'4 r4 | \break
    e'8 e'8 e'8 fis'8 g'8 e'8 d'8 cis'8 | d'2 r4  a'8 b'8 | \break

    a'4 fis'4 g'8 fis'8 g'8 b'8 | a'4 fis'4 r4 a'8 a'8 | g'4 e'4 fis'8 e'8 d'8 e'8 | \break
    fis'2 r4 a'8 g'8 | fis'4 fis'4 g'8 fis'8 g'8 a'8 | b'2 r4 cis''8 b'8 | \break
    a'4 fis'4 e'8 a'8 g'8 e'8 | d'2. r4 | 

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

