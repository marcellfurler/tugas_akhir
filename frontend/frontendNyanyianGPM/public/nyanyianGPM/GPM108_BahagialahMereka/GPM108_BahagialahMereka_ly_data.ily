% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 108. Bahagialah Mereka"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 2/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Sonia C. Parera - Hummel"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusdelapan_c_notes_pdf = {
  \repeat volta 2 {
    % Baris pertama
    \partial 4 r8 g'8 |
    g'8 e'8 g'8 c''8 |
    a'4 a'8 f'8 |
    f'8 d'8 a'8 g'8 |
    g'4 g'4 ( |
    g'4) \break

    % Baris kedua
    r8 e'8 |
    e'8 c'8 f'8 e'8 |
    e'4 c'8 c'8 |
    \phrasingSlurDashed c'8\( a8\) \phrasingSlurSolid b8 c'8 |
    d'4 d'4 ( |
    d'4) \break

    % Baris ketiga
    r8 g'8 |
    g'8 e'8 g'8 c''8 |
    a'4 a'8 f'8 |
    f'8 d'8 a'8 g'8 |
    g'4 g'4 ( |
    g'4) \break

    % Baris keempat
    r8 e'8 |
    e'8 c'8 f'8 e'8 |
    e'8 ( a'8) a'4 ( |
    a'4)\fermata
    r8 a'8 |
    a'8( c''8) c''8 b'8 |
    c''4 c''4 ( |
    c''4) \break
  }
}

gpmseratusdelapan_c_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 4 r8 g'8 |
  g'8 e'8 g'8 c''8 |
  a'4 a'8 f'8 |
  f'8 d'8 a'8 g'8 |
  g'4 g'4 ( |
  g'4) \break

  % Baris kedua
  r8 e'8 |
  e'8 c'8 f'8 e'8 |
  e'4 c'8 c'8 |
  \phrasingSlurDashed c'8\( a8\) \phrasingSlurSolid b8 c'8 |
  d'4 d'4 ( |
  d'4) \break

  % Baris ketiga
  r8 g'8 |
  g'8 e'8 g'8 c''8 |
  a'4 a'8 f'8 |
  f'8 d'8 a'8 g'8 |
  g'4 g'4 ( |
  g'4) \break

  % Baris keempat
  r8 e'8 |
  e'8 c'8 f'8 e'8 |
  e'8 ( a'8) a'4 ( |
  a'4)\fermata
  r8 a'8 |
  a'8( c''8) c''8 b'8 |
  c''4 c''4 ( |
  c''4) \break
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 4 r8 g'8 |
  g'8 e'8 g'8 c''8 |
  a'4 a'8 f'8 |
  f'8 d'8 a'8 g'8 |
  g'4 g'4 ( |
  g'4) \break

  % Baris kedua
  r8 e'8 |
  e'8 c'8 f'8 e'8 |
  e'4 c'8 c'8 |
  \phrasingSlurDashed c'8\( a8\) \phrasingSlurSolid b8 c'8 |
  d'4 d'4 ( |
  d'4) \break

  % Baris ketiga
  r8 g'8 |
  g'8 e'8 g'8 c''8 |
  a'4 a'8 f'8 |
  f'8 d'8 a'8 g'8 |
  g'4 g'4 ( |
  g'4) \break

  % Baris keempat
  r8 e'8 |
  e'8 c'8 f'8 e'8 |
  e'8 ( a'8) a'4 ( |
  a'4)\fermata
  r8 a'8 |
  a'8( c''8) c''8 b'8 |
  c''4 c''4 ( |
  c''4) \break
}

gpmseratusdelapan_c_notes =
#(if is-svg?
     #{ \gpmseratusdelapan_c_notes_svg #}
     #{ \gpmseratusdelapan_c_notes_pdf #})

gpmseratusdelapan_c_music = {
  \time 2/4
  \key c \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusdelapan_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusdelapan_c_music_solmisasi = \solmisasiMusic \gpmseratusdelapan_c_music

gpmseratusdelapan_lyricOne = \lyricmode {
  Ba -- ha -- gia -- lah me -- re -- ka yang hi -- dup se -- der -- ha -- na.
  Ba -- ha -- gia -- lah me -- re -- ka yang re -- _ la  ber -- ba -- gi.
  Ba -- ha -- gia -- lah me -- re -- ka yang sung -- guh  tu -- lus ha -- ti.
  Ba -- ha -- gia -- lah me -- re -- ka yang mem -- ba -- wa da -- mai.
}

gpmseratusdelapan_lyricTwo = \lyricmode {
  Ba -- ha -- gia -- lah me -- re -- ka yang tak me -- man -- dang mu -- ka.
  Ba -- ha -- gia -- lah me -- re -- ka yang ta -- bur
  ke a -- di -- lan.
  Ba -- ha -- gia -- lah me -- re -- ka yang rin -- du  ber -- se -- ku -- tu.
  Ba -- ha -- gia -- lah me -- re -- ka yang ta -- hu  ber -- syu -- kur.
}

gpmseratusdelapan_lyricsAll = 
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapan_lyricOne
           \gpmseratusdelapan_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapan_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapan_lyricTwo
          }
       >>
     #}
     )
