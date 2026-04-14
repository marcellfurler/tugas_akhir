\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 185. Siapkan Beta Jua Yesus E"

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
      \caps "Nus Tomatala"
    }
  }
}



gpmseratusdelapanlima_c_notes_pdf = {
  \repeat volta 2 {
    \partial 4 r8 c'8 | e'8 e'8 e'8 f'8 g'8 e'8 a'8 g'8 | e'2. \break
    r8 c'8 | e'8 e'8 e'8 f'8 g'8 e'8 a'8 g'8 | d'2. \break 
    r8 g'8 | a'8 c''8 b'8 a'8 g'8 e'8 d'8 c'8 | d'8 d'8 g'8 d'8 e'4 \break
    r8 g'8 | a'8 c''8 b'8 a'8 g'8 e'8 d'8 c'8 | d'2 g'2 | e'2. \break
  }
}


gpmseratusdelapanlima_c_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    \partial 4 r8 c'8 | e'8 e'8 e'8 f'8 g'8 e'8 a'8 g'8 | e'2. \break
    r8 c'8 | e'8 e'8 e'8 f'8 g'8 e'8 a'8 g'8 | d'2. \break 
    r8 g'8 | a'8 c''8 b'8 a'8 g'8 e'8 d'8 c'8 | d'8 d'8 g'8 d'8 e'4 \break
    r8 g'8 | a'8 c''8 b'8 a'8 g'8 e'8 d'8 c'8 | d'2 g'2 | e'2. \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    \partial 4 r8 c'8 | e'8 e'8 e'8 f'8 g'8 e'8 a'8 g'8 | e'2. \break
    r8 c'8 | e'8 e'8 e'8 f'8 g'8 e'8 a'8 g'8 | d'2. \break 
    r8 g'8 | a'8 c''8 b'8 a'8 g'8 e'8 d'8 c'8 | d'8 d'8 g'8 d'8 e'4 \break
    r8 g'8 | a'8 c''8 b'8 a'8 g'8 e'8 d'8 c'8 | d'2 g'2 | e'2. \break

}


gpmseratusdelapanlima_c_notes =
#(if is-svg?
     #{\gpmseratusdelapanlima_c_notes_svg#}
     #{\gpmseratusdelapanlima_c_notes_pdf#})


gpmseratusdelapanlima_c_music = {
  \time 4/4
  \key c \major
  \gpmseratusdelapanlima_c_notes
  \bar "|."
}

gpmseratusdelapanlima_c_music_solmisasi =
\solmisasiMusic \gpmseratusdelapanlima_c_music


gpmseratusdelapanlima_lyricOne = \lyricmode {
  Si -- ap -- kan be -- ta ju -- a, Ye -- sus e. Te -- guh -- kan be -- ta ju -- a Ye -- sus e. Bi -- ar be -- ta ber -- gu -- na, i -- ring Ye -- sus ma -- nis -- e. Te -- tap pi -- kul sa -- lib se -- la -- ma -- la -- ma -- nya.
}

gpmseratusdelapanlima_lyricTwo = \lyricmode {
  Ben -- tuk -- lah be -- ta ju -- a, Ye -- sus e, de -- ngan kua -- sa -- Mu sa -- ja, Ye -- sus e. Bi -- ar be -- ta ber -- ja -- lan pa -- da ja -- lan yang be -- nar, sam -- bil mem -- ba -- gi ka -- sih, Ye -- sus ma -- nis e.
}

gpmseratusdelapanlima_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmseratusdelapanlima_lyricOne
\gpmseratusdelapanlima_lyricTwo
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapanlima_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratusdelapanlima_lyricTwo
         }

       >>
     #})

