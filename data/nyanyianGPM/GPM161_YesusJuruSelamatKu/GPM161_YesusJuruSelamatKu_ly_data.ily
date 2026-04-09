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

gpmseratusenamsatu_d_note_pdf = {
  \repeat volta 3 {
    fis'8 fis'4 d'8 cis'8 d'8 e'8 fis'8 | d'2. r4 | \break
    a'8 a'4 fis'8 e'8 fis'8 g'8 a'8 | fis'2. r4 | \break
    b'8 b'4 b'8 a'8 a'8 a'8 g'8 | fis'8 fis'8 g'8 a'8 g'4 r4 | \break
    fis'8 fis'4 d'8 cis'8 d'8 e'8 cis'8 | d'2. r4 \break
  }
}

gpmseratusenamsatu_d_note_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  fis'8 fis'4 d'8 cis'8 d'8 e'8 fis'8 | d'2. r4 | \break
  a'8 a'4 fis'8 e'8 fis'8 g'8 a'8 | fis'2. r4 | \break
  b'8 b'4 b'8 a'8 a'8 a'8 g'8 | fis'8 fis'8 g'8 a'8 g'4 r4 | \break
  fis'8 fis'4 d'8 cis'8 d'8 e'8 cis'8 | d'2. r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  fis'8 fis'4 d'8 cis'8 d'8 e'8 fis'8 | d'2. r4 | \break
  a'8 a'4 fis'8 e'8 fis'8 g'8 a'8 | fis'2. r4 | \break
  b'8 b'4 b'8 a'8 a'8 a'8 g'8 | fis'8 fis'8 g'8 a'8 g'4 r4 | \break
  fis'8 fis'4 d'8 cis'8 d'8 e'8 cis'8 | d'2. r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  fis'8 fis'4 d'8 cis'8 d'8 e'8 fis'8 | d'2. r4 | \break
  a'8 a'4 fis'8 e'8 fis'8 g'8 a'8 | fis'2. r4 | \break
  b'8 b'4 b'8 a'8 a'8 a'8 g'8 | fis'8 fis'8 g'8 a'8 g'4 r4 | \break
  fis'8 fis'4 d'8 cis'8 d'8 e'8 cis'8 | d'2. r4 \break

}

gpmseratusenamsatu_d_notes =
#(if is-svg?
     #{ \gpmseratusenamsatu_d_note_svg #}
     #{ \gpmseratusenamsatu_d_note_pdf #})

gpmseratusenamsatu_d_music = {
  \time 4/4
  \key d \major
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

gpmseratusenamsatu_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamsatu_lyricOne
           \gpmseratusenamsatu_lyricTwo
           \gpmseratusenamsatu_lyricThree
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamsatu_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamsatu_lyricTwo
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamsatu_lyricThree
         }
       >>
     #}
     )