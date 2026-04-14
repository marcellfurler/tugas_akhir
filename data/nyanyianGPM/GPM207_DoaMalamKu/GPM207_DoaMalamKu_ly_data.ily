\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 207. Doa Malam Ku"

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



gpmduaratustujuh_d_notes_pdf = {
  \repeat volta 3 {
    \partial 4 fis'8 e'8 |
    d'4 e'4 fis'4 fis'8 a'8 |
    a'4 g'4 g'4 g'8 fis'8 | \break
    e'4 fis'4 g'4 g'8 b'8 |
    b'8 ( a'8) g'4 a'4 fis'8 a'8 |
    d''4 d''4 d''4 d''8 cis''8 | \break
    b'4 b'4 d''4 cis''8 b'8 |
    a'8 a'8 a'8 b'8 fis'4 e'4 |
    d'2. \break
  }
}


gpmduaratustujuh_d_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 4 fis'8 e'8 |
  d'4 e'4 fis'4 fis'8 a'8 |
  a'4 g'4 g'4 g'8 fis'8 | \break
  e'4 fis'4 g'4 g'8 b'8 |
  b'8 ( a'8) g'4 a'4 fis'8 a'8 |
  d''4 d''4 d''4 d''8 cis''8 | \break
  b'4 b'4 d''4 cis''8 b'8 |
  a'8 a'8 a'8 b'8 fis'4 e'4 |
  d'2. \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 4 fis'8 e'8 |
  d'4 e'4 fis'4 fis'8 a'8 |
  a'4 g'4 g'4 g'8 fis'8 | \break
  e'4 fis'4 g'4 g'8 b'8 |
  b'8 ( a'8) g'4 a'4 fis'8 a'8 |
  d''4 d''4 d''4 d''8 cis''8 | \break
  b'4 b'4 d''4 cis''8 b'8 |
  a'8 a'8 a'8 b'8 fis'4 e'4 |
  d'2. \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  \partial 4 fis'8 e'8 |
  d'4 e'4 fis'4 fis'8 a'8 |
  a'4 g'4 g'4 g'8 fis'8 | \break
  e'4 fis'4 g'4 g'8 b'8 |
  b'8 ( a'8) g'4 a'4 fis'8 a'8 |
  d''4 d''4 d''4 d''8 cis''8 | \break
  b'4 b'4 d''4 cis''8 b'8 |
  a'8 a'8 a'8 b'8 fis'4 e'4 |
  d'2. \break

}


gpmduaratustujuh_d_notes =
#(if is-svg?
     #{\gpmduaratustujuh_d_notes_svg#}
     #{\gpmduaratustujuh_d_notes_pdf#})


gpmduaratustujuh_d_music = {
  \time 4/4
  \key d \major
  \gpmduaratustujuh_d_notes
  \bar "|."
}

gpmduaratustujuh_d_music_solmisasi =
\solmisasiMusic \gpmduaratustujuh_d_music


gpmduaratustujuh_lyricOne = \lyricmode {
  Do -- a ma -- lam -- ku ku naik kan s'la -- lu ha -- nya pa -- da -- Mu, Ye -- sus Tu -- han -- ku sam -- bu -- lah a -- ku de -- ngan ka -- sih -- Mu a -- gar ji -- wa -- ku ten -- tram te -- duh.
}

gpmduaratustujuh_lyricTwo = \lyricmode {
  Do -- a ma -- lam -- ku ter -- u -- cap tu -- lus a -- gar ti -- dur -- ku ti -- dak ter -- gang -- gu da -- tang -- lah Ye -- sus te -- ma -- ni a -- ku sam -- pai ti -- ba e -- sok yang ba -- ru.
}

gpmduaratustujuh_lyricThree = \lyricmode {
  Do -- a ma -- lam -- ku sing -- kat dan u -- tuh ku -- rang -- kai i -- tu de -- ngan i -- man -- ku ku ya -- kin pas -- ti di -- sam -- but Ye -- sus dan ja -- wa -- ban -- Nya te -- pat wak -- tu.
}

gpmduaratustujuh_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmduaratustujuh_lyricOne
\gpmduaratustujuh_lyricTwo
\gpmduaratustujuh_lyricThree
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmduaratustujuh_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmduaratustujuh_lyricTwo
         }

         \new Lyrics \lyricsto melodi {
           \gpmduaratustujuh_lyricThree
         }

       >>
     #})

