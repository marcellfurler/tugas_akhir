\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 32. Pujilah Tuhan Dengan Tifa Gong"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Hennils Tamaela, 2009"
    }
  }
}



gpmtigadua_c_notes_pdf = {
  \repeat volta 2 {
    c'4 c'4 c'4 |
    g'4 g'4 g'8 g'8 |
    a'4 c''4 a'4 |
    g'2 r4 | \break
    e'4 e'4 e'4 |
    a'4 g'4 e'4 |
    d'4 d'4 e'4 |
    d'2 r4 | \break
    c'4 c'4 c'4 |
    g'4 g'4 g'8 g'8 |
    a'4 c''4 a'4 |
    g'2 r4 | \break
    a'4 c''4 a'4 |
    g'4 e'4 g'8 g'8 |
    a'4 g'4 a'4 |
    c''2. \break
  }
}


gpmtigadua_c_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    c'4 c'4 c'4 |
    g'4 g'4 g'8 g'8 |
    a'4 c''4 a'4 |
    g'2 r4 | \break
    e'4 e'4 e'4 |
    a'4 g'4 e'4 |
    d'4 d'4 e'4 |
    d'2 r4 | \break
    c'4 c'4 c'4 |
    g'4 g'4 g'8 g'8 |
    a'4 c''4 a'4 |
    g'2 r4 | \break
    a'4 c''4 a'4 |
    g'4 e'4 g'8 g'8 |
    a'4 g'4 a'4 |
    c''2. \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    c'4 c'4 c'4 |
    g'4 g'4 g'8 g'8 |
    a'4 c''4 a'4 |
    g'2 r4 | \break
    e'4 e'4 e'4 |
    a'4 g'4 e'4 |
    d'4 d'4 e'4 |
    d'2 r4 | \break
    c'4 c'4 c'4 |
    g'4 g'4 g'8 g'8 |
    a'4 c''4 a'4 |
    g'2 r4 | \break
    a'4 c''4 a'4 |
    g'4 e'4 g'8 g'8 |
    a'4 g'4 a'4 |
    c''2. \break

}


gpmtigadua_c_notes =
#(if is-svg?
     #{\gpmtigadua_c_notes_svg#}
     #{\gpmtigadua_c_notes_pdf#})


gpmtigadua_c_music = {
  \time 3/4
  \key c \major
  \gpmtigadua_c_notes
  \bar "|."
}

gpmtigadua_c_music_solmisasi =
\solmisasiMusic \gpmtigadua_c_music


gpmtigadua_lyricOne = \lyricmode {
  Pu -- ji -- lah Tu -- han de -- ngan ti -- fa dan gong. Nya -- nyi -- kan la -- gu mer -- du ba -- gi -- Nya. Ang -- kat ha -- ti -- mu de -- ngan ra -- sa syu -- kur. Den -- dang -- kan la -- gu ha -- le -- lu -- ya, A -- min.
}

gpmtigadua_lyricTwo = \lyricmode {
  Sam -- bil me -- na -- ri ki -- ta pu -- ji Tu -- han. A -- gung -- kan na -- ma -- Nya yang mu -- li -- a. Sak -- si -- kan kua -- sa -- Nya yang a -- mat a -- jaib Den -- dang -- kan la -- gu ha -- le -- lu -- ya, A -- min.
}

gpmtigadua_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
      \gpmtigadua_lyricOne
      \gpmtigadua_lyricTwo
      } >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmtigadua_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmtigadua_lyricTwo
         }

       >>
     #})

