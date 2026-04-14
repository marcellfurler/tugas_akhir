\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 243. Ikut Yesus"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = A, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Bartje Istia, 2007"
    }
  }
}



gpmduaempattiga_a_notes_pdf = {
  \repeat volta 2 {
  e''4 fis''4 e''8 cis''8 r4 |
  a''8 a''4 a''8 gis''4 fis''4 |
  gis''2. r4 | \break
  d''4 e''4 d''8 b'8 r4 |
  gis''8 gis''4 a''8 gis''4 fis''4 |
  e''2. r4 | \break
  e''4 fis''4 e''8 cis''8 r4 |
  a''8 a''4 a''8 b''4 a''4 |
  fis''2 r4 fis''8 fis''8 | \break
  e''4 a''4 b''8 a''8 cis'''8 b''8 |
  a''2. r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  cis'''4 a''4 e''4 b''8 a''8 |
  gis''8 fis''8 gis''8 a''8 b''4 r4 |
  b''4 gis''4 e''4 b''8 d'''8 | \break
  cis'''4 b''4 cis'''4 r4 |
  cis'''4 a''4 e''4 a''8 a''8 |
  a''4 fis''4 fis''4. fis''8 | \break
  e''8 cis''8 e''8 a''8 gis''4 b''4 |
  a''2. r4 \break
  }
}


gpmduaempattiga_a_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  e''4 fis''4 e''8 cis''8 r4 |
  a''8 a''4 a''8 gis''4 fis''4 |
  gis''2. r4 | \break
  d''4 e''4 d''8 b'8 r4 |
  gis''8 gis''4 a''8 gis''4 fis''4 |
  e''2. r4 | \break
  e''4 fis''4 e''8 cis''8 r4 |
  a''8 a''4 a''8 b''4 a''4 |
  fis''2 r4 fis''8 fis''8 | \break
  e''4 a''4 b''8 a''8 cis'''8 b''8 |
  a''2. r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  cis'''4 a''4 e''4 b''8 a''8 |
  gis''8 fis''8 gis''8 a''8 b''4 r4 |
  b''4 gis''4 e''4 b''8 d'''8 | \break
  cis'''4 b''4 cis'''4 r4 |
  cis'''4 a''4 e''4 a''8 a''8 |
  a''4 fis''4 fis''4. fis''8 | \break
  e''8 cis''8 e''8 a''8 gis''4 b''4 |
  a''2. r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  e''4 fis''4 e''8 cis''8 r4 |
  a''8 a''4 a''8 gis''4 fis''4 |
  gis''2. r4 | \break
  d''4 e''4 d''8 b'8 r4 |
  gis''8 gis''4 a''8 gis''4 fis''4 |
  e''2. r4 | \break
  e''4 fis''4 e''8 cis''8 r4 |
  a''8 a''4 a''8 b''4 a''4 |
  fis''2 r4 fis''8 fis''8 | \break
  e''4 a''4 b''8 a''8 cis'''8 b''8 |
  a''2. r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  cis'''4 a''4 e''4 b''8 a''8 |
  gis''8 fis''8 gis''8 a''8 b''4 r4 |
  b''4 gis''4 e''4 b''8 d'''8 | \break
  cis'''4 b''4 cis'''4 r4 |
  cis'''4 a''4 e''4 a''8 a''8 |
  a''4 fis''4 fis''4. fis''8 | \break
  e''8 cis''8 e''8 a''8 gis''4 b''4 |
  a''2. r4 \break

}


gpmduaempattiga_a_notes =
#(if is-svg?
     #{\gpmduaempattiga_a_notes_svg#}
     #{\gpmduaempattiga_a_notes_pdf#})


gpmduaempattiga_a_music = {
  \time 4/4
  \key a \major
  \gpmduaempattiga_a_notes
  \bar "|."
}

gpmduaempattiga_a_music_solmisasi =
\solmisasiMusic \gpmduaempattiga_a_music


gpmduaempattiga_lyricOne = \lyricmode {
  I -- kut Ye -- sus a -- da ke -- da -- mai -- an I -- kut Ye -- sus a -- da su -- ka -- ci -- ta I -- kut Ye -- sus a -- da peng -- hi -- bur -- an I -- kut Ye -- sus i -- kut s'la -- ma -- nya 
}

gpmduaempattiga_lyricTwo = \lyricmode {
  De -- ngan Ye -- sus ja -- ngan lah kau bim -- bang De -- ngan Ye -- sus ja -- ngan lah kau gen -- tar De -- ngan Ye -- sus kau hi dup ba -- ha -- gia. De -- ngan Ye -- sus s'la -- ma -- la -- ma -- nya.
}

gpmduaempattiga_lyricReff = \lyricmode {
  Di -- a -- lah po -- kok ang -- gur yang be -- nar ki -- ta -- lah ran -- ting -- ran -- ting -- nya Su -- bur -- lah dan ber -- bu -- ah -- lah di ta -- man in -- dah ba -- ha -- gia
}



gpmduaempattiga_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
      \gpmduaempattiga_lyricOne
      \gpmduaempattiga_lyricReff
      \gpmduaempattiga_lyricTwo
      \gpmduaempattiga_lyricReff
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmduaempattiga_lyricOne
            \gpmduaempattiga_lyricReff
         }

         \new Lyrics \lyricsto melodi {
           \gpmduaempattiga_lyricTwo
           \lyricsOff
            \gpmduaempattiga_lyricReff
         }

       >>
     #})

