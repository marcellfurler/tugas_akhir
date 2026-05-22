\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 257. Tuhan, Ku Memerlukan Mu"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = F, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Hendry Tuhusula"
      ", 2008"
    }
  }
}



gpmdualimatujuh_f_notes_pdf = {
  \repeat volta 3 {
    \partial 4 a'4 | a'4. a'8 bes'8 a'8 g'8 f'8 | \phrasingSlurDashed g'4.\(  d'8\) \phrasingSlurSolid d'4 \break
    g'4 | g'4. g'8 a'8 g'8 f'8 e'8 | \phrasingSlurDashed f'4.\(  d'8\) \phrasingSlurSolid c'4 \break
    d'4 | d'4. d'8 f'8 f'8 g'8 bes'8 | a'4. ( g'8) f'4 bes'8 ( a'8) | \break
    g'4. f'8 e'8 e'8 a'8 g'8 | f'2 r4 \break
  }
}


gpmdualimatujuh_f_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 2 a'4 | a'4. a'8 bes'8 a'8 g'8 f'8 | \phrasingSlurDashed g'4.\(  d'8\) \phrasingSlurSolid d'4 \break
  g'4 | g'4. g'8 a'8 g'8 f'8 e'8 | \phrasingSlurDashed f'4.\(  d'8\) \phrasingSlurSolid c'4 \break
  d'4 | d'4. d'8 f'8 f'8 g'8 bes'8 | a'4. ( g'8) f'4 bes'8 ( a'8) | \break
  g'4. f'8 e'8 e'8 a'8 g'8 | f'2 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 2 a'4 | a'4. a'8 bes'8 a'8 g'8 f'8 | \phrasingSlurDashed g'4.\(  d'8\) \phrasingSlurSolid d'4 \break
  g'4 | g'4. g'8 a'8 g'8 f'8 e'8 | \phrasingSlurDashed f'4.\(  d'8\) \phrasingSlurSolid c'4 \break
  d'4 | d'4. d'8 f'8 f'8 g'8 bes'8 | a'4. ( g'8) f'4 bes'8 ( a'8) | \break
  g'4. f'8 e'8 e'8 a'8 g'8 | f'2 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  \partial 2 a'4 | a'4. a'8 bes'8 a'8 g'8 f'8 | \phrasingSlurDashed g'4.\(  d'8\) \phrasingSlurSolid d'4 \break
  g'4 | g'4. g'8 a'8 g'8 f'8 e'8 | \phrasingSlurDashed f'4.\(  d'8\) \phrasingSlurSolid c'4 \break
  d'4 | d'4. d'8 f'8 f'8 g'8 bes'8 | a'4. ( g'8) f'4 bes'8 ( a'8) | \break
  g'4. f'8 e'8 e'8 a'8 g'8 | f'2 r4 \break

}


gpmdualimatujuh_f_notes =
#(if is-svg?
     #{\gpmdualimatujuh_f_notes_svg#}
     #{\gpmdualimatujuh_f_notes_pdf#})


gpmdualimatujuh_f_music = {
  \time 4/4
  \key f \major
  \gpmdualimatujuh_f_notes
  \bar "|."
}

gpmdualimatujuh_f_music_solmisasi =
\solmisasiMusic \gpmdualimatujuh_f_music


gpmdualimatujuh_lyricOne = \lyricmode {
  Tu -- han, ku s'la -- lu me -- mer -- lu -- kan -- Mu. Tu -- han, ku s'la -- lu meng -- ha -- rap -- kan Mu. Tu -- han dam -- pi -- ngi -- lah se -- la -- lu. Tu -- han, ja -- lan ber -- sa -- ma -- ku
}

gpmdualimatujuh_lyricTwo = \lyricmode {
  Tu -- han, pe -- nu -- hi -- lah ha -- ti -- _ ku. Tu -- han, a -- ja -- ri -- lah mak -- sud -- _ Mu. Tu -- han, ku ber -- syu -- kur se -- la -- lu. Tu -- han, ja -- lan ber -- sa -- ma -- ku.
}

gpmdualimatujuh_lyricThree = \lyricmode {
  Tu -- han, ja -- ga se -- ti -- ap lang -- kah -- ku. Tu -- han, dam -- ping -- i -- lah di -- ri -- _ ku. Tu -- han, ku per -- lu Kau se -- la -- lu. Tu -- han, ja -- lan ber -- sa -- ma -- ku.
}

gpmdualimatujuh_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
      \gpmdualimatujuh_lyricOne
      \gpmdualimatujuh_lyricTwo
      \gpmdualimatujuh_lyricThree
      } >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmdualimatujuh_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmdualimatujuh_lyricTwo
         }

         \new Lyrics \lyricsto melodi {
           \gpmdualimatujuh_lyricThree
         }

       >>
     #})

