\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 187. Di Perjamuan Mu"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 75"
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



gpmseratusdelapantujuh_c_notes_pdf = {
  \repeat volta 2 {
    g'4 g'8 g'8 g'8 g'8 a'8 g'8 |
    g'4 e'2 r4 | \break
    e'8 e'8 e'8 e'8 e'8 f'8 g'8 f'8 |
    e'2. r4 | \break
    c'8 e'8  g'8 c''8 b'8 c''8 b'4 |
    c'8 e'8 g'8 b'8 a'8 b'8 a'4 | \break
    d'8 d'8 d'8 d'8 d'8 d'8 e'8 fis'8 |
    g'2. r4 | \break
    g'4 g'8 g'8 g'8 g'8 a'8 g'8 |
    g'4 c''2 r4 | \break
    g'8 g'8 c''8 g'8 e'8 d'8 f'8 d'8 |
    c'1 \break
  }
}


gpmseratusdelapantujuh_c_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    g'4 g'8 g'8 g'8 g'8 a'8 g'8 |
    g'4 e'2 r4 | \break
    e'8 e'8 e'8 e'8 e'8 f'8 g'8 f'8 |
    e'2. r4 | \break
    c'8 e'8  g'8 c''8 b'8 c''8 b'4 |
    c'8 e'8 g'8 b'8 a'8 b'8 a'4 | \break
    d'8 d'8 d'8 d'8 d'8 d'8 e'8 fis'8 |
    g'2. r4 | \break
    g'4 g'8 g'8 g'8 g'8 a'8 g'8 |
    g'4 c''2 r4 | \break
    g'8 g'8 c''8 g'8 e'8 d'8 f'8 d'8 |
    c'1 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    g'4 g'8 g'8 g'8 g'8 a'8 g'8 |
    g'4 e'2 r4 | \break
    e'8 e'8 e'8 e'8 e'8 f'8 g'8 f'8 |
    e'2. r4 | \break
    c'8 e'8  g'8 c''8 b'8 c''8 b'4 |
    c'8 e'8 g'8 b'8 a'8 b'8 a'4 | \break
    d'8 d'8 d'8 d'8 d'8 d'8 e'8 fis'8 |
    g'2. r4 | \break
    g'4 g'8 g'8 g'8 g'8 a'8 g'8 |
    g'4 c''2 r4 | \break
    g'8 g'8 c''8 g'8 e'8 d'8 f'8 d'8 |
    c'1 \break

}


gpmseratusdelapantujuh_c_notes =
#(if is-svg?
     #{\gpmseratusdelapantujuh_c_notes_svg#}
     #{\gpmseratusdelapantujuh_c_notes_pdf#})


gpmseratusdelapantujuh_c_music = {
  \time 4/4
  \key c \major
  \gpmseratusdelapantujuh_c_notes
  \bar "|."
}

gpmseratusdelapantujuh_c_music_solmisasi =
\solmisasiMusic \gpmseratusdelapantujuh_c_music


gpmseratusdelapantujuh_lyricOne = \lyricmode {
  Di per -- ja -- mu -- an -- Mu yang ku -- dus, ku -- te -- ri -- ma pe -- ngam -- pu -- nan -- Mu. Sa -- at ku ma -- kan ro -- ti dan ku mi -- num ang -- gur -- Mu, ku la -- yak men -- ja -- di a -- nak -- Mu. Oh Ye -- sus, Kau Ju -- ru S'la -- mat -- ku, ku a -- gung -- kan pe -- ngor -- ba -- nan -- Mu.
}

gpmseratusdelapantujuh_lyricTwo = \lyricmode {
  Di de -- pan ma -- ta -- Mu, ya Ye -- sus, Kau tak ang -- gap hi -- na di -- ri -- ku. Ka -- u pun re -- la ma -- ti a -- gar a -- ku ter -- te -- bus da -- rah -- Mu ter -- cu -- rah di sa -- lib. dan ki -- ni ku da -- tang ber -- syu -- kur, ku mu -- lia -- kan ka -- sih a -- gung Mu.
}

gpmseratusdelapantujuh_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmseratusdelapantujuh_lyricOne
\gpmseratusdelapantujuh_lyricTwo
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapantujuh_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapantujuh_lyricTwo
         }

       >>
     #})

