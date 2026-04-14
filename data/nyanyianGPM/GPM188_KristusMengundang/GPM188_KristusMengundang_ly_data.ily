\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 188. Kristus Mengundang"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = E, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    \column {
      \line {
        Lagu :
        \caps "Monike hukubun"
        ", 2010"
      }
      \line {
        Syair :
        \caps "Monica Pariela - Parera"
        ", 2010"
      }
    }
  }
}



gpmseratusdelapandelapan_e_notes_pdf = {
  \repeat volta 2 {
    gis'4 fis'8 gis'8 a'8 gis'8 fis'8 gis'8 |
    fis'4 eis'8 fis'8 a'4 fis'4 | \break
    fis'4 eis'8 fis'8 a'8 fis'8 eis'8 fis'8 |
    a'8 fis'8 \phrasingSlurDashed eis'8\( fis'8\) \phrasingSlurSolid a'4 gis'4 | \break
    e'4 e'8 ( gis'8) b'8 gis'8 fis'8 gis'8 |
    a'4 \phrasingSlurDashed b'8\( cis''8\) \phrasingSlurSolid d''4 cis''4 | \break
    cis''4 fis'8 gis'8 a'8 gis'8 fis'8 gis'8 |
    e'4 \phrasingSlurDashed dis'8\( fis'8\) \phrasingSlurSolid e'2 | \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    b'4 fis'4 b'4 fis'4 |
    e'8 fis'8 gis'8 a'8 gis'2 | \break
    cis''8 cis''8 cis''8 cis''8 b'8 b'8 e'8 gis'8 |
    fis'4 e'4 fis'8 fis'8 r4 | \break
    gis'8 a'8 gis'8 fis'8 gis'8 a'8 gis'8 fis'8 |
    e'8 ( fis'8) gis'8 a'8 dis'4 fis'4 |
    e'2. r4 \break
  }
}


gpmseratusdelapandelapan_e_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    gis'4 fis'8 gis'8 a'8 gis'8 fis'8 gis'8 |
    fis'4 eis'8 fis'8 a'4 fis'4 | \break
    fis'4 eis'8 fis'8 a'8 fis'8 eis'8 fis'8 |
    a'8 fis'8 \phrasingSlurDashed eis'8\( fis'8\) \phrasingSlurSolid a'4 gis'4 | \break
    e'4 e'8 ( gis'8) b'8 gis'8 fis'8 gis'8 |
    a'4 \phrasingSlurDashed b'8\( cis''8\) \phrasingSlurSolid d''4 cis''4 | \break
    cis''4 fis'8 gis'8 a'8 gis'8 fis'8 gis'8 |
    e'4 \phrasingSlurDashed dis'8\( fis'8\) \phrasingSlurSolid e'2 | \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    b'4 fis'4 b'4 fis'4 |
    e'8 fis'8 gis'8 a'8 gis'2 | \break
    cis''8 cis''8 cis''8 cis''8 b'8 b'8 e'8 gis'8 |
    fis'4 e'4 fis'8 fis'8 r4 | \break
    gis'8 a'8 gis'8 fis'8 gis'8 a'8 gis'8 fis'8 |
    e'8 ( fis'8) gis'8 a'8 dis'4 fis'4 |
    e'2. r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    gis'4 fis'8 gis'8 a'8 gis'8 fis'8 gis'8 |
    fis'4 eis'8 fis'8 a'4 fis'4 | \break
    fis'4 eis'8 fis'8 a'8 fis'8 eis'8 fis'8 |
    a'8 fis'8 \phrasingSlurDashed eis'8\( fis'8\) \phrasingSlurSolid a'4 gis'4 | \break
    e'4 e'8 ( gis'8) b'8 gis'8 fis'8 gis'8 |
    a'4 \phrasingSlurDashed b'8\( cis''8\) \phrasingSlurSolid d''4 cis''4 | \break
    cis''4 fis'8 gis'8 a'8 gis'8 fis'8 gis'8 |
    e'4 \phrasingSlurDashed dis'8\( fis'8\) \phrasingSlurSolid e'2 | \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    b'4 fis'4 b'4 fis'4 |
    e'8 fis'8 gis'8 a'8 gis'2 | \break
    cis''8 cis''8 cis''8 cis''8 b'8 b'8 e'8 gis'8 |
    fis'4 e'4 fis'8 fis'8 r4 | \break
    gis'8 a'8 gis'8 fis'8 gis'8 a'8 gis'8 fis'8 |
    e'8 ( fis'8) gis'8 a'8 dis'4 fis'4 |
    e'2. r4 \break

}


gpmseratusdelapandelapan_e_notes =
#(if is-svg?
     #{\gpmseratusdelapandelapan_e_notes_svg#}
     #{\gpmseratusdelapandelapan_e_notes_pdf#})


gpmseratusdelapandelapan_e_music = {
  \time 4/4
  \key e \major
  \gpmseratusdelapandelapan_e_notes
  \bar "|."
}

gpmseratusdelapandelapan_e_music_solmisasi =
\solmisasiMusic \gpmseratusdelapandelapan_e_music


gpmseratusdelapandelapan_lyricOne = \lyricmode {
  Kris -- tus me -- ngun -- dang ki -- ta di ja -- mu -- an -- Nya, du -- duk se -- me -- ja, lam -- bang per -- se -- ku -- _ tu -- an ma -- kan ro -- ti lam -- bang tu -- buh _ Kris -- tus dan mi -- num ang -- gur lam -- bang da -- rah -- _ Nya.
  }

gpmseratusdelapandelapan_lyricTwo = \lyricmode {
  Kris -- tus me -- ngun -- dang ki -- ta di ja -- mu -- an -- Nya, pa -- ha -- mi ar -- ti ser -- ta ha -- yat -- i mak -- na -- nya, bu -- ka ha -- ti sam -- bil wu -- jud -- kan te -- kad, ma -- ri ber -- ja -- lan di -- ja -- lan sa -- lin Nya.
}

gpmseratusdelapandelapan_lyricReff = \lyricmode {
  A -- gung, a -- gung pe -- ngor -- ban -- an -- Nya, wu -- jud -- kan -- lah i -- tu da -- lam hi -- dup ki -- ta da -- lam ka -- ta, da -- lam ak -- ta sa -- ling meng -- a -- si -- hi.
}

gpmseratusdelapandelapan_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmseratusdelapandelapan_lyricOne
\gpmseratusdelapandelapan_lyricReff
\gpmseratusdelapandelapan_lyricTwo
\gpmseratusdelapandelapan_lyricReff
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapandelapan_lyricOne
           \gpmseratusdelapandelapan_lyricReff
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapandelapan_lyricTwo
           \lyricsOff
            \gpmseratusdelapandelapan_lyricReff
         }

       >>
     #})

