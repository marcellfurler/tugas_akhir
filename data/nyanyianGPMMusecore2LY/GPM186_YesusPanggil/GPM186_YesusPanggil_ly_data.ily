\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 186. Yesus Panggil"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = G, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Nus Tomatala, 2008"
    }
  }
}



gpmseratusdelapanenam_g_notes_pdf = {
  \repeat volta 3 {
    \partial 4 d'8 d'8 | g'4 b'2 a'8 b'8 | a'4 fis'2 \break
    a'8 g'8 | fis'4. g'8 a'8 g'8 e'8 g'8 | d'2.  \break
    d'8 d'8 | b'8 b'8 b'8 a'8 g'4 a'8 b'8 | c''8 c''8 c''8 b'8 a'4 \break
    g'8 a'8 | b'4. g'8 a'8 g'8 b'8 a'8 | g'2. \break
  }
}


gpmseratusdelapanenam_g_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    \partial 4 d'8 d'8 | g'4 b'2 a'8 b'8 | a'4 fis'2 \break
    a'8 g'8 | fis'4. g'8 a'8 g'8 e'8 g'8 | d'2.  \break
    d'8 d'8 | b'8 b'8 b'8 a'8 g'4 a'8 b'8 | c''8 c''8 c''8 b'8 a'4 \break
    g'8 a'8 | b'4. g'8 a'8 g'8 b'8 a'8 | g'2. \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    \partial 4 d'8 d'8 | g'4 b'2 a'8 b'8 | a'4 fis'2 \break
    a'8 g'8 | fis'4. g'8 a'8 g'8 e'8 g'8 | d'2.  \break
    d'8 d'8 | b'8 b'8 b'8 a'8 g'4 a'8 b'8 | c''8 c''8 c''8 b'8 a'4 \break
    g'8 a'8 | b'4. g'8 a'8 g'8 b'8 a'8 | g'2. \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
    \partial 4 d'8 d'8 | g'4 b'2 a'8 b'8 | a'4 fis'2 \break
    a'8 g'8 | fis'4. g'8 a'8 g'8 e'8 g'8 | d'2.  \break
    d'8 d'8 | b'8 b'8 b'8 a'8 g'4 a'8 b'8 | c''8 c''8 c''8 b'8 a'4 \break
    g'8 a'8 | b'4. g'8 a'8 g'8 b'8 a'8 | g'2. \break

}


gpmseratusdelapanenam_g_notes =
#(if is-svg?
     #{\gpmseratusdelapanenam_g_notes_svg#}
     #{\gpmseratusdelapanenam_g_notes_pdf#})


gpmseratusdelapanenam_g_music = {
  \time 4/4
  \key g \major
  \gpmseratusdelapanenam_g_notes
  \bar "|."
}

gpmseratusdelapanenam_g_music_solmisasi =
\solmisasiMusic \gpmseratusdelapanenam_g_music


gpmseratusdelapanenam_lyricOne = \lyricmode {
  Ye -- sus pang -- gil, Ye -- sus pang -- gil ma -- ri -- lah hai a -- nak -- a -- nak -- Ku. T'ri -- ma -- lah a -- ir hi -- dup ku -- per -- cik -- kan ba -- gi -- mu, ma -- ri -- lah hai a -- nak -- a -- nak -- Ku
}

gpmseratusdelapanenam_lyricTwo = \lyricmode {
  Ye -- sus pang -- gil, Ye -- sus pang -- gil hai i -- bu re -- la -- kan a -- nak -- mu. De -- ngan bap -- tis -- an ku -- dus Ba -- pa, A -- nak, Roh Ku -- dus s'la -- mat -- lah, s'la -- mat -- lah a -- nak -- mu.
}

gpmseratusdelapanenam_lyricThree = \lyricmode {
  Ye -- sus paang -- gil, Ye -- sus pang -- gil hai a -- yah re -- la -- kan a -- nak -- mu. A -- jar -- lah i -- a hi -- dup di te -- rang Fir -- man Kris -- tus tun -- tun -- lah, tun -- tun -- lah a -- nak -- mu.
}

gpmseratusdelapanenam_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmseratusdelapanenam_lyricOne
\gpmseratusdelapanenam_lyricTwo
\gpmseratusdelapanenam_lyricThree
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapanenam_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapanenam_lyricTwo
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapanenam_lyricThree
         }

       >>
     #})

