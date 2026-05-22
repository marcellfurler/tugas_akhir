\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 21. Mari Berdendang"

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
      \caps "Alex Titawanno, 2007"
    }
  }
}



gpmduasatu_d_notes_pdf = {
  \repeat volta 2 {
    d'8. a16 b8 d'8 d'2 |
    d'8. a16 b8 d'8 e'2 | \break
    d'8. a16 b8 d'8 d'8 d'8 d'8 d'8 |
    e'8. d'16 fis'8 e'8 d'2 | \break
    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    a'8. a'16 b'8 ( d''8) d''2 |
    a'8. a'16 b'8 a'8 fis'2 | \break
    fis'8. fis'16 e'8 fis'8 a'8. a'16 b'8 a'8 |
    fis'8. fis'16 a'8 fis'8 e'2 | \break
    a'8. a'16 b'8 ( d''8) d''2 |
    a'8. a'16 b'8 a'8 fis'2 | \break
    fis'8 fis'16 fis'16 e'8 fis'8 a'8. a'16 b'8 a'8 |
    fis'8 e'16 d'16 fis'8 e'8 d'2 \break
  }
}


gpmduasatu_d_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    d'8. a16 b8 d'8 d'2 |
    d'8. a16 b8 d'8 e'2 | \break
    d'8. a16 b8 d'8 d'8 d'8 d'8 d'8 |
    e'8. d'16 fis'8 e'8 d'2 | \break
    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    a'8. a'16 b'8 ( d''8) d''2 |
    a'8. a'16 b'8 a'8 fis'2 | \break
    fis'8. fis'16 e'8 fis'8 a'8. a'16 b'8 a'8 |
    fis'8. fis'16 a'8 fis'8 e'2 | \break
    a'8. a'16 b'8 ( d''8) d''2 |
    a'8. a'16 b'8 a'8 fis'2 | \break
    fis'8 fis'16 fis'16 e'8 fis'8 a'8. a'16 b'8 a'8 |
    fis'8 e'16 d'16 fis'8 e'8 d'2 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    d'8. a16 b8 d'8 d'2 |
    d'8. a16 b8 d'8 e'2 | \break
    d'8. a16 b8 d'8 d'8 d'8 d'8 d'8 |
    e'8. d'16 fis'8 e'8 d'2 | \break
    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    a'8. a'16 b'8 ( d''8) d''2 |
    a'8. a'16 b'8 a'8 fis'2 | \break
    fis'8. fis'16 e'8 fis'8 a'8. a'16 b'8 a'8 |
    fis'8. fis'16 a'8 fis'8 e'2 | \break
    a'8. a'16 b'8 ( d''8) d''2 |
    a'8. a'16 b'8 a'8 fis'2 | \break
    fis'8 fis'16 fis'16 e'8 fis'8 a'8. a'16 b'8 a'8 |
    fis'8 e'16 d'16 fis'8 e'8 d'2 \break

}


gpmduasatu_d_notes =
#(if is-svg?
     #{\gpmduasatu_d_notes_svg#}
     #{\gpmduasatu_d_notes_pdf#})


gpmduasatu_d_music = {
  \time 4/4
  \key d \major
  \gpmduasatu_d_notes
  \bar "|."
}

gpmduasatu_d_music_solmisasi =
\solmisasiMusic \gpmduasatu_d_music


gpmduasatu_lyricOne = \lyricmode {
  Ma -- ri ber -- den -- dang, ma -- ri me -- mu -- ji. Nya -- nyi -- kan syu -- kur dan ber -- ge -- ma ba -- gi Tu -- han. 
  }

gpmduasatu_lyricTwo = \lyricmode {
  In -- dah -- lah ki -- ni ke -- ra -- ja -- an -- Nya. Ja -- ya tah -- ta -- Nya di a -- tas pu -- ji pu -- ji -- an.
}

gpmduasatu_lyricReff = \lyricmode {
  Ha -- le -- lu -- ya, pu -- ji Tu -- han -- mu Bu -- nyi -- kan ti -- fa to -- to -- bu -- ang dan ta -- hu -- ri. Ha -- le -- lu -- ya, pu -- ji na -- ma -- Nya. Hai ma -- ri ber -- nya -- nyi dan ber -- den -- dang ba -- gi ra -- ja -- mu.
}


gpmduasatu_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmduasatu_lyricOne
\gpmduasatu_lyricReff
\gpmduasatu_lyricTwo
\gpmduasatu_lyricReff
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmduasatu_lyricOne
            \gpmduasatu_lyricReff
         }

         \new Lyrics \lyricsto melodi {
           \gpmduasatu_lyricTwo
           \lyricsOff
            \gpmduasatu_lyricReff
         }

       >>
     #})

