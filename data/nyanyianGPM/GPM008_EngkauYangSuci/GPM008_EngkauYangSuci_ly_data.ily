\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 8. Engkau Yang Suci"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = G, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    \column {
      \line {
        Lagu :
        \caps "Veby Pelmelay & Nus Tomatala"
      }
      \line {
        Syair :
        \caps "Nus Tomatala"
      }
    }
  }
}



gpmnolnoldelapan_g_notes_pdf = {
  \repeat volta 3 {
  r4  d'4 b'4 a'4 |
  c''2 a'2 |
  r4 a'8 b'8 a'4. g'8 |
  b'1 | \break
  r4 d'4 b'4 a'4 |
  c''2 a'2 |
  r4 a'8 b'8 a'4. b'8 |
  d''1 | \break
  r4 d''4 d''4 d''4 |
  b'2 b'2 |
  r4 b'8 b'8 a'4. g'8 |
  d''2 c''2 | \break
  r4 c''4 d''4 c''4 |
  b'4 b'4 a'4 g'4 |
  a'2. g'4 |
  g'1 | \break
  }
}


gpmnolnoldelapan_g_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  r4  d'4 b'4 a'4 |
  c''2 a'2 |
  r4 a'8 b'8 a'4. g'8 |
  b'1 | \break
  r4 d'4 b'4 a'4 |
  c''2 a'2 |
  r4 a'8 b'8 a'4. b'8 |
  d''1 | \break
  r4 d''4 d''4 d''4 |
  b'2 b'2 |
  r4 b'8 b'8 a'4. g'8 |
  d''2 c''2 | \break
  r4 c''4 d''4 c''4 |
  b'4 b'4 a'4 g'4 |
  a'2. g'4 |
  g'1 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  r4  d'4 b'4 a'4 |
  c''2 a'2 |
  r4 a'8 b'8 a'4. g'8 |
  b'1 | \break
  r4 d'4 b'4 a'4 |
  c''2 a'2 |
  r4 a'8 b'8 a'4. b'8 |
  d''1 | \break
  r4 d''4 d''4 d''4 |
  b'2 b'2 |
  r4 b'8 b'8 a'4. g'8 |
  d''2 c''2 | \break
  r4 c''4 d''4 c''4 |
  b'4 b'4 a'4 g'4 |
  a'2. g'4 |
  g'1 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  r4  d'4 b'4 a'4 |
  c''2 a'2 |
  r4 a'8 b'8 a'4. g'8 |
  b'1 | \break
  r4 d'4 b'4 a'4 |
  c''2 a'2 |
  r4 a'8 b'8 a'4. b'8 |
  d''1 | \break
  r4 d''4 d''4 d''4 |
  b'2 b'2 |
  r4 b'8 b'8 a'4. g'8 |
  d''2 c''2 | \break
  r4 c''4 d''4 c''4 |
  b'4 b'4 a'4 g'4 |
  a'2. g'4 |
  g'1 | \break

}


gpmnolnoldelapan_g_notes =
#(if is-svg?
     #{\gpmnolnoldelapan_g_notes_svg#}
     #{\gpmnolnoldelapan_g_notes_pdf#})


gpmnolnoldelapan_g_music = {
  \time 4/4
  \key g \major
  \gpmnolnoldelapan_g_notes
  \bar "|."
}

gpmnolnoldelapan_g_music_solmisasi =
\solmisasiMusic \gpmnolnoldelapan_g_music


gpmnolnoldelapan_lyricOne = \lyricmode {
  Eng -- kau yang su -- ci, su -- ci -- lah Tu -- han. Eng -- kau yang ku -- dus, ku -- dus -- lah Tu -- han. Ka -- mi yang hi -- na da -- tang dan me -- nyem -- bah, dan mu -- li -- a -- kan ka -- sih -- Mu Tu -- han.
}

gpmnolnoldelapan_lyricTwo = \lyricmode {
  Yang a -- ku rin -- du, ka -- sih -- Mu Tu -- han, a -- gar ku hi -- dup tia -- da me -- nge -- luh. Ang -- kat -- lah su -- sah gan -- ti de -- ngan su -- ka, dan a -- ku -- pun ber -- syu -- kur pa -- da -- Mu.
}

gpmnolnoldelapan_lyricThree = \lyricmode {
  Mes -- ki hi -- dup -- ku sa -- ngat ber -- ce -- la, ku da -- tang sa -- ja pa -- da Mu, Tu -- han. Kar -- 'na ku ya -- kin, Kau ma -- ha pe -- mu -- rah, Kau bu -- at hi -- dup -- ku ja -- di ba -- ru.
}

gpmnolnoldelapan_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmnolnoldelapan_lyricOne
\gpmnolnoldelapan_lyricTwo
\gpmnolnoldelapan_lyricThree
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmnolnoldelapan_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmnolnoldelapan_lyricTwo
         }

         \new Lyrics \lyricsto melodi {
           \gpmnolnoldelapan_lyricThree
         }

       >>
     #})

