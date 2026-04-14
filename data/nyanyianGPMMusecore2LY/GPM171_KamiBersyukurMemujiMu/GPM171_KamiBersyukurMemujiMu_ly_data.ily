\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 171. Kami Bersyukur MemujiMu"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Nus Tomatala, 2009"
    }
  }
}



gpmseratustujuhsatu_d_notes_pdf = {
  \repeat volta 2 {
    b8 b8 b8 b8 fis'4 e'8 d'8 |
    cis'2 b2 | \break
    d'8 d'8 d'8 d'8 a'4 e'8 g'8 |
    g'2 fis'4 r4 | \break
    b8 b8 b8 b8 fis'4 \phrasingSlurDashed e'8\( d'8\) \phrasingSlurSolid  |
    cis'2 b4 r8 g'8 | \break
    fis'8 fis'8 a'8 fis'8 e'8 d'8 cis'8 a8 |
    b2 b4 r4 \break
  }
}


gpmseratustujuhsatu_d_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    b8 b8 b8 b8 fis'4 e'8 d'8 |
    cis'2 b2 | \break
    d'8 d'8 d'8 d'8 a'4 e'8 g'8 |
    g'2 fis'4 r4 | \break
    b8 b8 b8 b8 fis'4 \phrasingSlurDashed e'8\( d'8\) \phrasingSlurSolid  |
    cis'2 b4 r8 g'8 | \break
    fis'8 fis'8 a'8 fis'8 e'8 d'8 cis'8 a8 |
    b2 b4 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    b8 b8 b8 b8 fis'4 e'8 d'8 |
    cis'2 b2 | \break
    d'8 d'8 d'8 d'8 a'4 e'8 g'8 |
    g'2 fis'4 r4 | \break
    b8 b8 b8 b8 fis'4 \phrasingSlurDashed e'8\( d'8\) \phrasingSlurSolid  |
    cis'2 b4 r8 g'8 | \break
    fis'8 fis'8 a'8 fis'8 e'8 d'8 cis'8 a8 |
    b2 b4 r4 \break

}


gpmseratustujuhsatu_d_notes =
#(if is-svg?
     #{\gpmseratustujuhsatu_d_notes_svg#}
     #{\gpmseratustujuhsatu_d_notes_pdf#})


gpmseratustujuhsatu_d_music = {
  \time 4/4
  \key d \major
  \gpmseratustujuhsatu_d_notes
  \bar "|."
}

gpmseratustujuhsatu_d_music_solmisasi =
\solmisasiMusic \gpmseratustujuhsatu_d_music


gpmseratustujuhsatu_lyricOne = \lyricmode {
  Ka -- mi ber -- syu -- kur me -- mu -- ji -- Mu, ka -- mi ber -- syu -- kur me -- nyem -- bah -- Mu. Kar' -- na ka -- sih -- Mu yang mu -- li -- a, pa -- da -- Mu Ye -- sus ka -- mi mau ber -- syu -- kur.
}

gpmseratustujuhsatu_lyricTwo = \lyricmode {
  Fir -- man -- Mu pe -- li -- ta di ha -- ti, ba -- gai -- kan te -- rang ma -- ta -- ha -- ri. Ja -- di -- kan hi -- dup ber -- _ ar -- ti se -- ba -- gai sak -- si -- Mu di da -- lam du -- nia.
}

gpmseratustujuhsatu_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmseratustujuhsatu_lyricOne
\gpmseratustujuhsatu_lyricTwo
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratustujuhsatu_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratustujuhsatu_lyricTwo
         }

       >>
     #})

