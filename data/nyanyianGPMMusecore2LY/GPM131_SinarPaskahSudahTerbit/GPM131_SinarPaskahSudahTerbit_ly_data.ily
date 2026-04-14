\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 131. Sinar Paskah Sudah Terbit"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = G, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela, 1995"
    }
  }
}



gpmseratustigasatu_g_notes_pdf = {
  \repeat volta 2 {
    \partial 4 b8 c'8 | d'4 d'4 g'8 d'8 g'8 ( a'8) | b'2. \break 
    c''8 b'8 | a'4 c''4 b'4 a'4 | g'2 r4 \break 
    b8 c'8 | d'4 d'4 g'8 ( d'8) g'8 ( a'8) | b'2. \break 
    c''8 b'8 | a'4 c''4 b'4 a'4 | g'2 r4  \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    e'8 fis'8 | g'4 g'4 g'4. a'8 | fis'2 r4 \break 
    e'8 fis'8 | g'4 g'4 fis'4. e'8 | d'2. r4 | \break 
    e'4 e'4 g'4. e'8 | d'4 g'2 r4 | \break
    fis'4 d'4 b'4 ( a'4) | g'2 r2 \break
  }
}


gpmseratustigasatu_g_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    \partial 4 b8 c'8 | d'4 d'4 g'8 d'8 g'8 ( a'8) | b'2. \break 
    c''8 b'8 | a'4 c''4 b'4 a'4 | g'2 r4 \break 
    b8 c'8 | d'4 d'4 g'8 ( d'8) g'8 ( a'8) | b'2. \break 
    c''8 b'8 | a'4 c''4 b'4 a'4 | g'2 r4  \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    e'8 fis'8 | g'4 g'4 g'4. a'8 | fis'2 r4 \break 
    e'8 fis'8 | g'4 g'4 fis'4. e'8 | d'2. r4 | \break 
    e'4 e'4 g'4. e'8 | d'4 g'2 r4 | \break
    fis'4 d'4 b'4 ( a'4) | g'2 r2 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    \partial 4 b8 c'8 | d'4 d'4 g'8 d'8 g'8 ( a'8) | b'2. \break 
    c''8 b'8 | a'4 c''4 b'4 a'4 | g'2 r4 \break 
    b8 c'8 | d'4 d'4 g'8 ( d'8) g'8 ( a'8) | b'2. \break 
    c''8 b'8 | a'4 c''4 b'4 a'4 | g'2 r4  \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    e'8 fis'8 | g'4 g'4 g'4. a'8 | fis'2 r4 \break 
    e'8 fis'8 | g'4 g'4 fis'4. e'8 | d'2. r4 | \break 
    e'4 e'4 g'4. e'8 | d'4 g'2 r4 | \break
    fis'4 d'4 b'4 ( a'4) | g'2 r2 \break

}


gpmseratustigasatu_g_notes =
#(if is-svg?
     #{\gpmseratustigasatu_g_notes_svg#}
     #{\gpmseratustigasatu_g_notes_pdf#})


gpmseratustigasatu_g_music = {
  \time 4/4
  \key g \major
  \gpmseratustigasatu_g_notes
  \bar "|."
}

gpmseratustigasatu_g_music_solmisasi =
\solmisasiMusic \gpmseratustigasatu_g_music


gpmseratustigasatu_lyricOne = \lyricmode {
  Si -- nar pas -- kah su -- dah ter -- bit, ha -- ti -- ku a -- mat se -- nang. Su -- dah bang -- kit pe -- ne -- bus, i -- tu ka -- bar yang be -- nar.
}

gpmseratustigasatu_lyricTwo = \lyricmode {
  Ke -- ge -- la -- pan su -- dah le -- nyap, ki -- ta hi -- dup da -- lam t'rang. Ber -- i -- man te -- tap te -- guh, wa -- lau mu -- suh me -- nye -- rang.
}

gpmseratustigasatu_lyricReff = \lyricmode {
  Ki -- ta si -- ar -- kan se -- g'ra ke se -- lu -- ruh du -- ni -- a. Ye -- sus su -- dah bang -- kit, ha -- le -- lu -- ya.
}

gpmseratustigasatu_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
        \gpmseratustigasatu_lyricOne
        \gpmseratustigasatu_lyricReff
        \gpmseratustigasatu_lyricTwo
        \gpmseratustigasatu_lyricReff
        } >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratustigasatu_lyricOne
           \gpmseratustigasatu_lyricReff
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratustigasatu_lyricTwo
           \lyricsOff
           \gpmseratustigasatu_lyricReff
         }

       >>
     #})

