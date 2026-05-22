\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 12. Indah NamaMu, Bapa"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela, 2003"
    }
  }
}



gpmduabelas_c_notes_pdf = {
  \repeat volta 3 {
    e'2 e'4 |
    e'2 f'4 |
    e'2 d'4 |
    d'2. | \break
    f'2 f'4 |
    f'2 g'4 |
    f'2 e'4 |
    e'2. | \break
    g'4 g'4 g'4 |
    g'2 g'4 |
    a'2 g'4 |
    f'2. | \break
    g'4 e'4 f'4 |
    e'2 d'4 |
    \once \override Tie.stencil = ##f c'2.~ ( |
    c'2) r4 \break
  }
}


gpmduabelas_c_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  e'2 e'4 | e'2 f'4 | e'2 d'4 | d'2. | \break
  f'2 f'4 | f'2 g'4 | f'2 e'4 | e'2. | \break
  g'4 g'4 g'4 | g'2 g'4 | a'2 g'4 | f'2. | \break
  g'4 e'4 f'4 | e'2 d'4 | \once \override Tie.stencil = ##f c'2.~ ( |c'2) r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  e'2 e'4 | e'2 f'4 | e'2 d'4 | d'2. | \break
  f'2 f'4 | f'2 g'4 | f'2 e'4 | e'2. | \break
  g'4 g'4 g'4 | g'2 g'4 | a'2 g'4 | f'2. | \break
  g'4 e'4 f'4 | e'2 d'4 | \once \override Tie.stencil = ##f c'2.~ ( |c'2) r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  e'2 e'4 | e'2 f'4 | e'2 d'4 | d'2. | \break
  f'2 f'4 | f'2 g'4 | f'2 e'4 | e'2. | \break
  g'4 g'4 g'4 | g'2 g'4 | a'2 g'4 | f'2. | \break
  g'4 e'4 f'4 | e'2 d'4 | \once \override Tie.stencil = ##f c'2.~ ( |c'2) r4 | \break

}


gpmduabelas_c_notes =
#(if is-svg?
     #{\gpmduabelas_c_notes_svg#}
     #{\gpmduabelas_c_notes_pdf#})


gpmduabelas_c_music = {
  \time 3/4
  \key c \major
  \gpmduabelas_c_notes
  \bar "|."
}

gpmduabelas_c_music_solmisasi =
\solmisasiMusic \gpmduabelas_c_music


gpmduabelas_lyricOne = \lyricmode {
  In -- dah na -- ma -- Mu, Ba -- pa. In -- dah ka -- sih -- Mu, Ba -- pa. In -- dah ber -- kat -- Mu, ya Ba -- pa. In -- dah se -- mu -- a -- nya.
}

gpmduabelas_lyricTwo = \lyricmode {
  A -- gung na -- ma -- Mu, Ba -- pa. A -- gung ka -- sih -- Mu, Ba -- pa. A -- gung ber -- kat -- Mu, ya Ba -- pa. A -- gung se -- mu -- a -- nya.
}

gpmduabelas_lyricThree = \lyricmode {
  Su -- ci na -- ma -- Mu, Ba -- pa. Su -- cu ka -- sih -- Mu, Ba -- pa. Su -- ci ber -- kat -- Mu, ya Ba -- pa. Su -- ci se -- mu -- a -- nya.
}

gpmduabelas_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmduabelas_lyricOne
\gpmduabelas_lyricTwo
\gpmduabelas_lyricThree
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmduabelas_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmduabelas_lyricTwo
         }

         \new Lyrics \lyricsto melodi {
           \gpmduabelas_lyricThree
         }

       >>
     #})

