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

gpmseratusdelapan_c_notes = {
  \key c \major
  \relative c'
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

    % Baris pertama
    \partial 4 r8 g'8 |
    g8 e8 g8 c8 |
    a4 a8 f8 |
    f8 d8 a'8 g8 |
    g4 g4 ~ |
    g4 \break

    % Baris kedua
    r8 e8 |
    e8 c8 f8 e8 |
    e4 c8 c8 |
    \slurDashed c8( a8) \slurSolid b8 c8 |
    d4 d4 ~ |
    d4 \break

    % Baris ketiga
    r8 g8 |
    g8 e8 g8 c8 |
    a4 a8 f8 |
    f8 d8 a'8 g8 |
    g4 g4 ~ |
    g4 \break

    % Baris keempat
    r8 e8 |
    e8 c8 f8 e8 |
    e8 (a8) a4 ~ |
    a4\fermata
    r8 a8 |
    a8( c8) c8 b8 |
    c4 c4 ~ |
    c4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusdelapan_c_music = {
  \time 4/4
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
  Ba -- ha -- gia -- lah me -- re -- ka yang re -- la ber -- ba -- gi.
  Ba -- ha -- gia -- lah me -- re -- ka yang sung -- guh  tu -- lus ha -- ti.
  Ba -- ha -- gia -- lah me -- re -- ka yang mem -- ba -- wa da -- mai.
}

gpmseratusdelapan_lyricTwo = \lyricmode {
  Ba -- ha -- gia -- lah me -- re -- ka yang tak me -- man -- dang mu -- ka.
  Ba -- ha -- gia -- lah me -- re -- ka yang
  \set ignoreMelismata = ##t
  \once\override LyricText.self-alignment-X = #LEFT
  ta --
  \once\override LyricText.self-alignment-X = #0.6
  bur
  \set ignoreMelismata = ##f
  ke a -- di -- lan.
  Ba -- ha -- gia -- lah me -- re -- ka yang rin -- du  ber -- se -- ku -- tu.
  Ba -- ha -- gia -- lah me -- re -- ka yang ta -- hu  ber -- syu -- kur.
}
