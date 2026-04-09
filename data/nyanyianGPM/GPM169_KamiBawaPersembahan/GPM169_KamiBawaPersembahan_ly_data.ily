% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 169. Kami Bawa Persembahan"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Alex Titawanno"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusenamsembilan_d_notes_pdf = {
  \repeat volta 2 {
    \partial 4 a8 a8 | fis'4 fis'4 e'8 d'8 e'8 fis'8 | a'4 a'4. \breathe fis'8 \break
    g'8 a'8 | b'4 b'8. a'16 b'8 a'8 | g'8 fis'8 | fis'4 e'4. \breathe e'8 \break
    e'8 fis'8 | g'4 g'8. fis'16 \phrasingSlurDashed g'8\( fis'8\) \phrasingSlurSolid e'8 d'8 | fis'4 e'4. cis'8 \break
    d'8 e'8 | fis'4 a'8. a'16 a'8 a'8 g'8 e'8 | d'4 d'2 \bar "||"  \break

    % reef
    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    r8 d'8 | e'4 e'8. e'16 fis'8 e'8 d'8 e'8 | fis'4 a'2 \break
    r8 fis'8 e'4 e'8. e'16 fis'8 e'8 d'8 e'8 | fis'4 fis'2 \break
    r8 d'8 | e'4 e'8. e'16 fis'8 e'8 d'8 e'8 | fis'4 a'2 \break
    r8 fis'8 | e'4 e'8. e'16 fis'8 e'8 d'8 cis'8 | d'4 d'4 r4 \break
  }
}

gpmseratusenamsembilan_d_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 4 a8 a8 | fis'4 fis'4 e'8 d'8 e'8 fis'8 | a'4 a'4. \breathe fis'8 \break
  g'8 a'8 | b'4 b'8. a'16 b'8 a'8 | g'8 fis'8 | fis'4 e'4. \breathe e'8 \break
    e'8 fis'8 | g'4 g'8. fis'16 \phrasingSlurDashed g'8\( fis'8\) \phrasingSlurSolid e'8 d'8 | fis'4 e'4. cis'8 \break
  d'8 e'8 | fis'4 a'8. a'16 a'8 a'8 g'8 e'8 | d'4 d'2 \bar "||"  \break

  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  r8 d'8 | e'4 e'8. e'16 fis'8 e'8 d'8 e'8 | fis'4 a'2 \break
  r8 fis'8 e'4 e'8. e'16 fis'8 e'8 d'8 e'8 | fis'4 fis'2 \break
  r8 d'8 | e'4 e'8. e'16 fis'8 e'8 d'8 e'8 | fis'4 a'2 \break
  r8 fis'8 | e'4 e'8. e'16 fis'8 e'8 d'8 cis'8 | d'4 d'4 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 4 a8 a8 | fis'4 fis'4 e'8 d'8 e'8 fis'8 | a'4 a'4. \breathe fis'8 \break
  g'8 a'8 | b'4 b'8. a'16 b'8 a'8 | g'8 fis'8 | fis'4 e'4. \breathe e'8 \break
    e'8 fis'8 | g'4 g'8. fis'16 \phrasingSlurDashed g'8\( fis'8\) \phrasingSlurSolid e'8 d'8 | fis'4 e'4. cis'8 \break
  d'8 e'8 | fis'4 a'8. a'16 a'8 a'8 g'8 e'8 | d'4 d'2 \bar "||"  \break

  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  r8 d'8 | e'4 e'8. e'16 fis'8 e'8 d'8 e'8 | fis'4 a'2 \break
  r8 fis'8 e'4 e'8. e'16 fis'8 e'8 d'8 e'8 | fis'4 fis'2 \break
  r8 d'8 | e'4 e'8. e'16 fis'8 e'8 d'8 e'8 | fis'4 a'2 \break
  r8 fis'8 | e'4 e'8. e'16 fis'8 e'8 d'8 cis'8 | d'4 d'4 r4 \break

}

gpmseratusenamsembilan_d_notes =
#(if is-svg?
     #{ \gpmseratusenamsembilan_d_notes_svg #}
     #{ \gpmseratusenamsembilan_d_notes_pdf #})

gpmseratusenamsembilan_d_music = {
  \time 4/4
  \key d \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenamsembilan_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenamsembilan_d_music_solmisasi = \solmisasiMusic \gpmseratusenamsembilan_d_music

gpmseratusenamsembilan_lyricOne = \lyricmode {
    Ka -- mi ba -- wa per -- sem -- ba -- han i -- ni dan s'lu -- ruh hi -- dup di ka -- ki sa -- lib Tu -- han.
    kar' -- na Eng -- kau per -- sem -- bah -- _ an yang A -- gung,
    Tu -- lus dan su -- ci, Pe -- ne -- bus do -- sa du -- nia. 
}

gpmseratusenamsembilan_lyricTwo = \lyricmode {
    A -- pa ar -- ti hi -- dup ka -- mi i -- ni ji -- ka ber -- ja -- lan tan -- pa per -- to -- lo -- ngan -- Mu.
    Bi -- la co -- ba -- an da -- tang si -- lih ber -- gan -- ti, ha -- nya Tu -- han -- lah san -- da -- ran ba -- gi ka -- mi.
}

gpmseratusenamsembilan_lyricReff = \lyricmode {
    Te -- ri -- ma -- lah Tu -- han hi -- dup ka -- mi,
    Te -- ri -- ma -- lah Tu -- han cin -- ta ka -- mi.
    Te -- ri -- ma -- lah per -- sem -- ba -- han ka -- mi,
    ba -- gi pe -- la -- ya -- nan -- Mu di -- du -- nia.
}
gpmseratusenamsembilan_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamsembilan_lyricOne
           \gpmseratusenamsembilan_lyricReff
           \gpmseratusenamsembilan_lyricTwo
           \gpmseratusenamsembilan_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamsembilan_lyricOne
           \gpmseratusenamsembilan_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamsembilan_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmseratusenamsembilan_lyricReff
         }
       >>
     #}
     )
