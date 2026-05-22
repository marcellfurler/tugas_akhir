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

gpmempatpuluhempat_d_notes_pdf = {
  \repeat volta 2 {
    \partial 4 fis'8 g'8 | 
    a'4 a'4 a'4 a'8 a'8 | 
    b'4 b'4 a'4 d'8 e'8 | 
    fis'4 e'8 d'8 e'4 fis'4 | 
    e'2 r4 \break

    fis'8 g'8 | 
    a'4 a'4 a'4 a'8 a'8 | 
    b'4 b'4 a'4 d'8 e'8 | 
    fis'4 g'8 fis'8 e'4 cis'4 | 
    d'2 r4 \break

    cis'8 d'8 | 
    e'4 e'4 e'4 d'8 e'8 | 
    fis'4 fis'4 fis'4 e'8 fis'8 | 
    g'4 g'8 g'8 fis'4 fis'8 ( d'8) | 
    e'2 r4 \break

    fis'8 e'8 | 
    d'4 d'4 d'4 e'8 d'8 | 
    d'4 b4 b4 d'8 e'8 | 
    fis'4. fis'8 fis'4 a'4 | \break

    a'4 g'4 r4 fis'8 e'8 | 
    d'4 d'8 d'8 cis'4. d'8 | 
    d'2 r4 \break
  }
}

gpmempatpuluhempat_d_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 4 fis'8 g'8 | 
  a'4 a'4 a'4 a'8 a'8 | 
  b'4 b'4 a'4 d'8 e'8 | 
  fis'4 e'8 d'8 e'4 fis'4 | 
  e'2 r4 \break

  fis'8 g'8 | 
  a'4 a'4 a'4 a'8 a'8 | 
  b'4 b'4 a'4 d'8 e'8 | 
  fis'4 g'8 fis'8 e'4 cis'4 | 
  d'2 r4 \break

  cis'8 d'8 | 
  e'4 e'4 e'4 d'8 e'8 | 
  fis'4 fis'4 fis'4 e'8 fis'8 | 
  g'4 g'8 g'8 fis'4 fis'8 ( d'8) | 
  e'2 r4 \break

  fis'8 e'8 | 
  d'4 d'4 d'4 e'8 d'8 | 
  d'4 b4 b4 d'8 e'8 |  
  fis'4. fis'8 fis'4 a'4 | \break

  a'4 g'4 r4 fis'8 e'8 | 
  d'4 d'8 d'8 cis'4. d'8 | 
  d'2 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 4 fis'8 g'8 | 
  a'4 a'4 a'4 a'8 a'8 | 
  b'4 b'4 a'4 d'8 e'8 | 
  fis'4 e'8 d'8 e'4 fis'4 | 
  e'2 r4 \break

  fis'8 g'8 | 
  a'4 a'4 a'4 a'8 a'8 | 
  b'4 b'4 a'4 d'8 e'8 | 
  fis'4 g'8 fis'8 e'4 cis'4 | 
  d'2 r4 \break

  cis'8 d'8 | 
  e'4 e'4 e'4 d'8 e'8 | 
  fis'4 fis'4 fis'4 e'8 fis'8 | 
  g'4 g'8 g'8 fis'4 fis'8 ( d'8) | 
  e'2 r4 \break

  fis'8 e'8 | 
  d'4 d'4 d'4 e'8 d'8 | 
  d'4 b4 b4 d'8 e'8 | 
  fis'4. fis'8 fis'4 a'4 | \break

  a'4 g'4 r4 fis'8 e'8 | 
  d'4 d'8 d'8 cis'4. d'8 | 
  d'2 r4 \break
}

gpmempatpuluhempat_d_notes =
#(if is-svg?
     #{ \gpmempatpuluhempat_d_notes_svg #}
     #{ \gpmempatpuluhempat_d_notes_pdf #})

gpmempatpuluhempat_d_music = {
  \time 4/4
  \key d \major
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
    De -- ngan a -- pa -- kah 'kan ku ba -- yar -- kan se -- mu -- a pe -- ngor -- ba -- nan -- Mu.
    Ji -- wa ter -- sik -- sa ber -- pe -- luh do -- sa, na -- mun Kau me -- nga -- si --  hi -- ku. 
    B'ri -- kan -- lah a -- ku Roh dan Hik -- mat -- Mu bi -- ar a -- ku ja -- di ba -- ru
    mau i -- ku pa -- da fir -- man -- Mu.
}

gpmempatpuluhempat_lyricTwo = \lyricmode {
  De -- ngan a -- pa -- kah 'kan ku be -- ri -- kan yang a -- da pa -- da di -- ri -- ku.
  De -- ngan a -- pa -- kah 'kan ku buk -- ti -- kan se -- mu -- a pe -- ngab -- di -- an -- ku.
  Su -- rut lang -- kah -- ku me -- ngi -- ku -- ti -- Mu na -- mun Kau mau me -- mang -- gil -- ku.
  Bu -- ka ma -- ta -- ku, bu -- ka ha -- ti -- ku, bi -- ar a -- ku s'la -- ma hi -- dup
  se -- ti -- a pa -- da jan -- ji -- Mu.
}


gpmempatpuluhempat_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmempatpuluhempat_lyricOne
           \gpmempatpuluhempat_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmempatpuluhempat_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmempatpuluhempat_lyricTwo
         }
       >>
     #}
     )