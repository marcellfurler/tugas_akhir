\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 144. Bersatu"
  subtitle = "1 Tesalonika 5 : 16 - 19"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = G, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Elly Toisutta, 1999"
    }
  }
}



gpmseratusempatempat_g_notes_pdf = {
  \repeat volta 2 {
    \partial 4 d'4 | g'4 g'4 d'4 | g'4 g'4 fis'8 g'8 | a'4 a'8 ( g'8) a'8 ( b'8) | g'2 \break
    d'4 | g'4 g'4 d'4 | g'4 g'4 fis'8 g'8 | a'4 a'8 ( g'8) a'8 ( b'8) |  g'2 \break
    d''4 | d''4 b'4 d''4 | d''4 b'4 d''8 d''8 | c''4 b'4 \break 
    c''8 ( d''8) |  b'2 d''4 | d''4 b'4 d''4 | \break
    d''4 b'4 d''8 d''8 | c''4 b'4 c''8 ( a'8) | g'2 r4 \break
  }
}


gpmseratusempatempat_g_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 4 d'4 | g'4 g'4 d'4 | g'4 g'4 fis'8 g'8 | a'4 a'8 ( g'8) a'8 ( b'8) | g'2 \break
  d'4 | g'4 g'4 d'4 | g'4 g'4 fis'8 g'8 | a'4 a'8 ( g'8) a'8 ( b'8) |  g'2 \break
  d''4 | d''4 b'4 d''4 | d''4 b'4 d''8 d''8 | c''4 b'4 \break 
  c''8 ( d''8) |  b'2 d''4 | d''4 b'4 d''4 | \break
  d''4 b'4 d''8 d''8 | c''4 b'4 c''8 ( a'8) | g'2 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 4 d'4 | g'4 g'4 d'4 | g'4 g'4 fis'8 g'8 | a'4 a'8 ( g'8) a'8 ( b'8) | g'2 \break
  d'4 | g'4 g'4 d'4 | g'4 g'4 fis'8 g'8 | a'4 a'8 ( g'8) a'8 ( b'8) |  g'2 \break
  d''4 | d''4 b'4 d''4 | d''4 b'4 d''8 d''8 | c''4 b'4 \break 
  c''8 ( d''8) |  b'2 d''4 | d''4 b'4 d''4 | \break
  d''4 b'4 d''8 d''8 | c''4 b'4 c''8 ( a'8) | g'2 r4 \break

}


gpmseratusempatempat_g_notes =
#(if is-svg?
     #{\gpmseratusempatempat_g_notes_svg#}
     #{\gpmseratusempatempat_g_notes_pdf#})


gpmseratusempatempat_g_music = {
  \time 3/4
  \key g \major
  \gpmseratusempatempat_g_notes
  \bar "|."
}

gpmseratusempatempat_g_music_solmisasi =
\solmisasiMusic \gpmseratusempatempat_g_music


gpmseratusempatempat_lyricOne = \lyricmode {
  Ber -- sa -- tu, ber -- sa -- tu, i -- tu -- lah yang per -- lu. Ber -- sa -- tu, ber -- sa -- tu, i -- tu -- lah yang per -- lu. Ber -- sa -- tu, ber -- sa -- tu, s'ba -- gai tu -- buh Kris -- tus. Ber -- sa -- tu, ber -- sa -- tu, s'ba -- gai tu -- buh Kris -- tus.
}

gpmseratusempatempat_lyricTwo = \lyricmode {
  Se -- ha -- t, se -- pi -- kir, i -- tu -- lah yang per -- lu. Se -- ha -- ti, se -- pi -- kir, i -- tu -- lah yang per -- lu. Se -- ha -- ti, se -- pi -- kir, s'ba -- gai tu -- buh Kris -- tus. Se -- ha -- ti, se -- pi -- kir, s'ba -- gai tu -- buh Kris -- tus.
}

gpmseratusempatempat_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmseratusempatempat_lyricOne
\gpmseratusempatempat_lyricTwo
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratusempatempat_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratusempatempat_lyricTwo
         }

       >>
     #})

