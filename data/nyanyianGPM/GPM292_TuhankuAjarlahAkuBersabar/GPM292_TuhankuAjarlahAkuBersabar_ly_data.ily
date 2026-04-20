\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 292. Tuhanku, Ajarlah Aku Bersabar"

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
      \caps "John F. Beay, 2009"
    }
  }
}



gpmduasembilandua_d_notes_pdf = {
  \repeat volta 2 {
 a8 d'8 fis'4 e'8 d'8 b8 d'8 |
 e'8 d'8 fis'4 fis'2 | \break
 a'8 b'8 a'4 fis'8 d'8 b8 d'8 |
 fis'8 d'8 e'4 e'2 | \break
 a8 d'8 fis'4 e'8 d'8 b8 d'8 |
 e'8 d'8 fis'4 fis'2 | \break
 a'8 b'8 a'4 fis'8 d'8 b8 d'8 |
 fis'8 d'8 d'2. \break
  }
}


gpmduasembilandua_d_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  a8 d'8 fis'4 e'8 d'8 b8 d'8 |
  e'8 d'8 fis'4 fis'2 | \break
  a'8 b'8 a'4 fis'8 d'8 b8 d'8 |
  fis'8 d'8 e'4 e'2 | \break
  a8 d'8 fis'4 e'8 d'8 b8 d'8 |
  e'8 d'8 fis'4 fis'2 | \break
  a'8 b'8 a'4 fis'8 d'8 b8 d'8 |
  fis'8 d'8 d'2. \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  a8 d'8 fis'4 e'8 d'8 b8 d'8 |
  e'8 d'8 fis'4 fis'2 | \break
  a'8 b'8 a'4 fis'8 d'8 b8 d'8 |
  fis'8 d'8 e'4 e'2 | \break
  a8 d'8 fis'4 e'8 d'8 b8 d'8 |
  e'8 d'8 fis'4 fis'2 | \break
  a'8 b'8 a'4 fis'8 d'8 b8 d'8 |
  fis'8 d'8 d'2. \break

}


gpmduasembilandua_d_notes =
#(if is-svg?
     #{\gpmduasembilandua_d_notes_svg#}
     #{\gpmduasembilandua_d_notes_pdf#})


gpmduasembilandua_d_music = {
  \time 4/4
  \key d \major
  \gpmduasembilandua_d_notes
  \bar "|."
}

gpmduasembilandua_d_music_solmisasi =
\solmisasiMusic \gpmduasembilandua_d_music


gpmduasembilandua_lyricOne = \lyricmode {
  Tu -- han -- ku, a -- jar -- lah a -- ku ber -- sa -- bar ha -- da -- pi hi -- dup yang se -- ma -- kin ga -- nas, a -- gar ka -- sih Tu -- han tak a -- kan pu -- dar da -- lam kar -- ya dan pe -- ngab -- di -- an -- ku.
}

gpmduasembilandua_lyricTwo = \lyricmode {
  Tu -- han -- ku ba -- nyak o -- rang men -- de -- ri -- ta ha -- da -- pi hi -- dup yang se -- ma -- kin ga -- nas, bi -- ar a -- ku tak hen -- ti me -- la -- ya -- ni me -- nga -- mal -- kan ka -- sih, ya Tu -- han -- ku.
}

gpmduasembilandua_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmduasembilandua_lyricOne
\gpmduasembilandua_lyricTwo
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmduasembilandua_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmduasembilandua_lyricTwo
         }

       >>
     #})

