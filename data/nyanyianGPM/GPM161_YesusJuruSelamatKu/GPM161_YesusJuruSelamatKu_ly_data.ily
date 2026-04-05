% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 161. Yesus Juru Selamat Ku"

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
      \caps "Berthy Pattiasina"
      ", 2010"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusenamsatu_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 3 {
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
           \volta 3 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 3"
           }
         #}
         ; else/defaulte
         (empty-music)
         )

    fis8 fis4 d8 cis8 d8 e8 fis8 | d2. r4 | \break
    a'8 a4 fis8 e8 fis8 g8 a8 | fis2. r4 | \break
    b8 b4 b8 a8 a8 a8 g8 | fis8 fis8 g8 a8 g4 r4 | \break
    fis8 fis4 d8 cis8 d8 e8 cis8 | d2. r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusenamsatu_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenamsatu_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenamsatu_d_music_solmisasi = \solmisasiMusic \gpmseratusenamsatu_d_music

gpmseratusenamsatu_lyricOne = \lyricmode {
    Ye -- sus ju -- ru se -- la -- mat -- ku.
    Ye -- sus ju -- ru se -- la -- mat -- mu.
    Ye -- sus ju -- ru se -- la -- mat ki -- ta se -- mu -- a.
    Ye -- sus ju -- ru se -- la -- mat -- ku.
}

gpmseratusenamsatu_lyricTwo = \lyricmode {
    Ye -- sus na -- ko -- da ba -- gi -- ku.
    Ye -- sus na -- ko -- da ba -- gi -- mu.
    Ye -- sus na -- ko -- da ba -- gi ki -- ta se -- mu -- a.
    Ye -- sus na -- ko -- da ba -- gi -- ku.
}
gpmseratusenamsatu_lyricThree = \lyricmode {
    Ye -- sus pe -- lin -- dung hi -- dup -- ku.
    Ye -- sus pe -- lin -- dung hi -- dup -- mu.
    Ye -- sus pe -- lin -- dung hi -- dup ki -- ta se -- mu -- a.
    Ye -- sus pe -- lin -- dung hi -- dup -- ku.
}