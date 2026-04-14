\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 122. Siang Itu"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    \column {
      \line {
        Syair :
        \caps "C. Suripatty, 2009"
      }
      \line {
        Lagu :
        \caps "Ots. Kilanmasse, 2009"
      }
    }
  }
}



gpmseratusduadua_d_notes_pdf = {
  \repeat volta 2 {
    a4 d'4 e'4 |
    fis'4 r8 e'8 fis'8 g'8 |
    fis'2 e'4 | 
    d'4 ( cis'4) d'4 | \break
    e'4 d'4 b4 |
    a2 r4 | 
    d'4 d'4 e'4 |
    fis'4 fis'4. e'8 | \break
    d'4 cis'4 d'4 | 
    \once \override Tie.stencil = ##f e'2.~ (| e'4) r4 r4 | 
    a'2 b'4 |
    a'4. fis'8 d'8 d'8 | \break
    e'4 d'4 b4 | 
    d'2 r4 |
    d'4 d'4 e'4 |
    fis'4 a'4. d'8 | \break
    e'4 fis'4 e'4 |
    \once \override Tie.stencil = ##f d'2. ~ ( | d'4) r4 r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
    d''4 ( cis''4) b'4 | a'4 ( fis'4) g'4 | a'2 b'4 | a'2 r4 | \break 
    fis'4 fis'4 fis'4 | fis'4 e'4 d'4 | \once \override Tie.stencil = ##f b'2. ~ ( | b'2) r4 | \break
    b'4 a'4 b'4 | cis''4 cis''4 d''4 | cis''4 r8 a'8 b'8 cis''8 | d''4 d''4 d''4 | \break
     d''2 e''4 |  d''2 r4 | d''4 ( cis''4) b'4 | a'4 g'4 a'4 | \break
    \once \override Tie.stencil = ##f b'2. ~ ( | b'2) r4 | a'2. | a'2. | \break
    b'4 cis''4 d''4 | d''2 cis''4 | d''2 r4 \break
  }
}


gpmseratusduadua_d_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    a4 d'4 e'4 |
    fis'4 r8 e'8 fis'8 g'8 |
    fis'2 e'4 | 
    d'4 ( cis'4) d'4 | \break
    e'4 d'4 b4 |
    a2 r4 | 
    d'4 d'4 e'4 |
    fis'4 fis'4. e'8 | \break
    d'4 cis'4 d'4 | 
    \once \override Tie.stencil = ##f e'2.~ (| e'4) r4 r4 | 
    a'2 b'4 |
    a'4. fis'8 d'8 d'8 | \break
    e'4 d'4 b4 | 
    d'2 r4 |
    d'4 d'4 e'4 |
    fis'4 a'4. d'8 | \break
    e'4 fis'4 e'4 |
    \once \override Tie.stencil = ##f d'2. ~ ( | d'4) r4 r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
    d''4 ( cis''4) b'4 | a'4 ( fis'4) g'4 | a'2 b'4 | a'2 r4 | \break 
    fis'4 fis'4 fis'4 | fis'4 e'4 d'4 | \once \override Tie.stencil = ##f b'2. ~ ( | b'2) r4 | \break
    b'4 a'4 b'4 | cis''4 cis''4 d''4 | cis''4 r8 a'8 b'8 cis''8 | d''4 d''4 d''4 | \break
     d''2 e''4 |  d''2 r4 | d''4 ( cis''4) b'4 | a'4 g'4 a'4 | \break
    \once \override Tie.stencil = ##f b'2. ~ ( | b'2) r4 | a'2. | a'2. | \break
    b'4 cis''4 d''4 | d''2 cis''4 | d''2 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    a4 d'4 e'4 |
    fis'4 r8 e'8 fis'8 g'8 |
    fis'2 e'4 | 
    d'4 ( cis'4) d'4 | \break
    e'4 d'4 b4 |
    a2 r4 | 
    d'4 d'4 e'4 |
    fis'4 fis'4. e'8 | \break
    d'4 cis'4 d'4 | 
    \once \override Tie.stencil = ##f e'2.~ (| e'4) r4 r4 | 
    a'2 b'4 |
    a'4. fis'8 d'8 d'8 | \break
    e'4 d'4 b4 | 
    d'2 r4 |
    d'4 d'4 e'4 |
    fis'4 a'4. d'8 | \break
    e'4 fis'4 e'4 |
    \once \override Tie.stencil = ##f d'2. ~ ( | d'4) r4 r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
    d''4 ( cis''4) b'4 | a'4 ( fis'4) g'4 | a'2 b'4 | a'2 r4 | \break 
    fis'4 fis'4 fis'4 | fis'4 e'4 d'4 | \once \override Tie.stencil = ##f b'2. ~ ( | b'2) r4 | \break
    b'4 a'4 b'4 | cis''4 cis''4 d''4 | cis''4 r8 a'8 b'8 cis''8 | d''4 d''4 d''4 | \break
     d''2 e''4 |  d''2 r4 | d''4 ( cis''4) b'4 | a'4 g'4 a'4 | \break
    \once \override Tie.stencil = ##f b'2. ~ ( | b'2) r4 | a'2. | a'2. | \break
    b'4 cis''4 d''4 | d''2 cis''4 | d''2 r4 \break

}


gpmseratusduadua_d_notes =
#(if is-svg?
     #{\gpmseratusduadua_d_notes_svg#}
     #{\gpmseratusduadua_d_notes_pdf#})


gpmseratusduadua_d_music = {
  \time 3/4
  \key d \major
  \gpmseratusduadua_d_notes
  \bar "|."
}

gpmseratusduadua_d_music_solmisasi =
\solmisasiMusic \gpmseratusduadua_d_music


gpmseratusduadua_lyricOne = \lyricmode {
  Si -- ang i -- tu ka -- la men -- ta -- ri be -- gi -- tu me -- nye -- ngat mem -- ba -- kar bu -- mi pa -- nas mem -- ba -- ra ter -- ta -- tih Eng -- kau me -- lang -- kah be -- rat me -- mang -- gul pa -- lang ka -- yu ber -- u -- rat.
}

gpmseratusduadua_lyricTwo = \lyricmode {
  Si -- ang i -- tu, sa -- at s'mu -- a ma -- ta me -- li -- hat Di -- a, ti -- a -- da i -- ba ra -- sa di da -- da se -- a -- kan do -- sa -- Nya yang di -- ba -- wa sam -- bil me -- na -- han d'ri -- ta yang pa -- rah.
}

gpmseratusduadua_lyricReff = \lyricmode {
  Sung -- guh pa -- rah lu -- ka -- Mu, sung -- guh tra -- gis d'ri -- ta -- Mu. Sung -- guh pi -- lu de -- sah -- Mu, sung -- guh mer -- ra -- na dan ter -- hi -- na, ja -- lan yang Kau tem -- puh ja -- lan Vi -- a Do -- lo Ro -- sa.
}

gpmseratusduadua_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
        \gpmseratusduadua_lyricOne
        \gpmseratusduadua_lyricReff
        \gpmseratusduadua_lyricTwo
        \gpmseratusduadua_lyricReff
        } >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratusduadua_lyricOne
           \gpmseratusduadua_lyricReff
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratusduadua_lyricTwo
           \lyricsOff
           \gpmseratusduadua_lyricReff
         }

       >>
     #})

