\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 55. Tuhan Kasihani"
  subtitle = "Kyrie Eleison"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela, 1989"
    }
  }
}



gpmlimalima_c_notes_pdf = {
  \repeat volta 2 {
    r4 g'8 g'8 g'4. f'8 |
    a'4 g'2. |
    r4 \phrasingSlurDashed g'8\( a'8\) \phrasingSlurSolid bes'8 ( a'4) g'8 | 
    a'4 ( g'2 f'4 ) | \break
    e'8 r8 e'8 e'8 e'4. g'8 |
    \phrasingSlurDashed g'4\( f'2\) \phrasingSlurSolid g'8 ( f'8) |
    e'1 \break
  }
}


gpmlimalima_c_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    r4 g'8 g'8 g'4. f'8 |
    a'4 g'2. |
    r4 \phrasingSlurDashed g'8\( a'8\) \phrasingSlurSolid bes'8 ( a'4) g'8 | 
    a'4 ( g'2 f'4 ) | \break
    e'8 r8 e'8 e'8 e'4. g'8 |
    \phrasingSlurDashed g'4\( f'2\) \phrasingSlurSolid g'8 ( f'8) |
    e'1 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    r4 g'8 g'8 g'4. f'8 |
    a'4 g'2. |
    r4 \phrasingSlurDashed g'8\( a'8\) \phrasingSlurSolid bes'8 ( a'4) g'8 | 
    a'4 ( g'2 f'4 ) | \break
    e'8 r8 e'8 e'8 e'4. g'8 |
    \phrasingSlurDashed g'4\( f'2\) \phrasingSlurSolid g'8 ( f'8) |
    e'1 \break

}


gpmlimalima_c_notes =
#(if is-svg?
     #{\gpmlimalima_c_notes_svg#}
     #{\gpmlimalima_c_notes_pdf#})


gpmlimalima_c_music = {
  \time 4/4
  \key c \major
  \gpmlimalima_c_notes
  \bar "|."
}

gpmlimalima_c_music_solmisasi =
\solmisasiMusic \gpmlimalima_c_music


gpmlimalima_lyricOne = \lyricmode {
  Tu -- han, ka -- sih -- a -- ni, Kris -- tus, ka -- sih -- a -- ni. Tu -- han, ka -- sih -- an -- i ka -- mi.
}

gpmlimalima_lyricTwo = \lyricmode {
  Ky -- ri -- e, e -- lei -- son, Chris -- _ te e -- lei -- son. Ky -- ri -- e, e -- le -- _ i -- son
}

gpmlimalima_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmlimalima_lyricOne
\gpmlimalima_lyricTwo
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmlimalima_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmlimalima_lyricTwo
         }

       >>
     #})

