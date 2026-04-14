\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 211. Waktu Berlalu"

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
      \caps "Nus Tomatala"
      ", 2008"
    }
  }
}



gpmduaratussebelas_d_notes_pdf = {
  \repeat volta 2 {
    \partial 2 r8 a8 d'8 e'8 |
    fis'8 ( a'8) a'4. fis'8 e'8 d'8 | 
    e'8 ( a'8) a'4 r8 e'8 e'8 fis'8 | \break
    g'4. fis'8 e'8 e'8 fis'8 g'8 | 
    a'4 a'4 r8 a8 d'8 e'8 |
    fis'8 ( a'8) a'4. d''8 d''8 cis''8 | \break
    \phrasingSlurDashed b'4\( d''2\)\phrasingSlurSolid g'8 b'8 | 
    a'8 a'8 a'8 a'8 g'8 fis'8 e'8 a'8 | d'2 \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    r8 fis'8 fis'8 g'8 | 
    a'8 a'2 b'8 g'8 fis'8 | \break
    g'8 e'4. r8 e'8 e'8 fis'8 |
    g'8 b'4. a'8 e'8 a'8. g'16 | \break
    fis'2 r8 fis'8 fis'8 g'8 | 
    a'8 fis'2 d''8 d''8 d''8 | \break
    d''4 b'4 b'4 r8 b'8 | 
    a'8 a'8 a'8 a'8 b'4 cis''4 |
    d''2 
  }
}


gpmduaratussebelas_d_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 2 r8 a8 d'8 e'8 |
  fis'8 ( a'8) a'4. fis'8 e'8 d'8 | 
  e'8 ( a'8) a'4 r8 e'8 e'8 fis'8 | \break
  g'4. fis'8 e'8 e'8 fis'8 g'8 | 
  a'4 a'4 r8 a8 d'8 e'8 |
  fis'8 ( a'8) a'4. d''8 d''8 cis''8 | \break
  \phrasingSlurDashed b'4\( d''2\)\phrasingSlurSolid g'8 b'8 | 
  a'8 a'8 a'8 a'8 g'8 fis'8 e'8 a'8 | d'2 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  r8 fis'8 fis'8 g'8 | 
  a'8 a'2 b'8 g'8 fis'8 | \break
  g'8 e'4. r8 e'8 e'8 fis'8 |
  g'8 b'4. a'8 e'8 a'8. g'16 | \break
  fis'2 r8 fis'8 fis'8 g'8 | 
  a'8 fis'2 d''8 d''8 d''8 | \break
  d''4 b'4 b'4 r8 b'8 | 
  a'8 a'8 a'8 a'8 b'4 cis''4 |
  d''2 

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 2 r8 a8 d'8 e'8 |
  fis'8 ( a'8) a'4. fis'8 e'8 d'8 | 
  e'8 ( a'8) a'4 r8 e'8 e'8 fis'8 | \break
  g'4. fis'8 e'8 e'8 fis'8 g'8 | 
  a'4 a'4 r8 a8 d'8 e'8 |
  fis'8 ( a'8) a'4. d''8 d''8 cis''8 | \break
  \phrasingSlurDashed b'4\( d''2\)\phrasingSlurSolid g'8 b'8 | 
  a'8 a'8 a'8 a'8 g'8 fis'8 e'8 a'8 | d'2 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  r8 fis'8 fis'8 g'8 | 
  a'8 a'2 b'8 g'8 fis'8 | \break
  g'8 e'4. r8 e'8 e'8 fis'8 |
  g'8 b'4. a'8 e'8 a'8. g'16 | \break
  fis'2 r8 fis'8 fis'8 g'8 | 
  a'8 fis'2 d''8 d''8 d''8 | \break
  d''4 b'4 b'4 r8 b'8 | 
  a'8 a'8 a'8 a'8 b'4 cis''4 |
  d''2 

}


gpmduaratussebelas_d_notes =
#(if is-svg?
     #{\gpmduaratussebelas_d_notes_svg#}
     #{\gpmduaratussebelas_d_notes_pdf#})


gpmduaratussebelas_d_music = {
  \time 4/4
  \key d \major
  \gpmduaratussebelas_d_notes
  \bar "|."
}

gpmduaratussebelas_d_music_solmisasi =
\solmisasiMusic \gpmduaratussebelas_d_music


gpmduaratussebelas_lyricOne = \lyricmode {
  Wak -- tu ber -- la -- lu mu -- sim ber -- gan -- ti 'tak te -- ra -- sa da -- tang ta -- hun yang ba -- ru. Ma -- ri ber -- nya -- nyi u -- cap syu -- kur _  ka -- ta -- kan Ye -- sus me -- mang sung -- guh ba -- ik
}

gpmduaratussebelas_lyricTwo = \lyricmode {
  Ja -- ngan ke -- nang -- kang ke -- ga -- ga -- lan -- mu, ang -- gap sa -- ja se -- ba -- gai a -- ngin la -- lu pan -- dang di mu -- ka e -- sok me -- nung -- gu Ga -- pai -- lah ba -- ha -- gia ber -- sa -- ma Ye -- sus
}

gpmduaratussebelas_lyricReff = \lyricmode {
  Se -- la -- mat ma -- suk ta -- hun yang ba -- ru se -- la -- mat ma -- suk hi -- dup yang ba -- ru ya -- kin -- lah Ye -- sus na -- u -- ngi se -- la -- lu s'ka -- rang sam -- pai se -- la -- ma -- nya
}

gpmduaratussebelas_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
      \gpmduaratussebelas_lyricOne
      \gpmduaratussebelas_lyricReff
      \gpmduaratussebelas_lyricTwo
      \gpmduaratussebelas_lyricReff
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmduaratussebelas_lyricOne
            \gpmduaratussebelas_lyricReff
         }

         \new Lyrics \lyricsto melodi {
           \gpmduaratussebelas_lyricTwo
           \lyricsOff
            \gpmduaratussebelas_lyricReff
         }

       >>
     #})

