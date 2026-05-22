\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 5. Datanglah Pada Tuhan"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
      \line {
        "Tanah Tanimbar (MTB)"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Ots. Kilanmasse, 2009"
    }
  }
}



gpmnolnollima_c_notes_pdf = {
  \repeat volta 3 {
    \partial 4 e'8 f'8 |
    g'2 g'4 a'8 a'8 |
    g'2. e'8 g'8 | \break
    c''2 c''4 b'8 a'8 |
    g'2. e'8 f'8 |
    g'2 g'4 a'8 a'8 | \break
    g'2. g'8 e'8 |
    f'8 f'8 f'8 f'8 f'8 d'8 e'8 f'8 |
    g'4 g'2 a'4 | \break
    g'4 e'8 f'8 g'8 g'8 f'4 |
    e'2 r4 \break
  }
}


gpmnolnollima_c_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    \partial 4 e'8 f'8 |
    g'2 g'4 a'8 a'8 |
    g'2. e'8 g'8 | \break
    c''2 c''4 b'8 a'8 |
    g'2. e'8 f'8 |
    g'2 g'4 a'8 a'8 | \break
    g'2. g'8 e'8 |
    f'8 f'8 f'8 f'8 f'8 d'8 e'8 f'8 |
    g'4 g'2 a'4 | \break
    g'4 e'8 f'8 g'8 g'8 f'4 |
    e'2 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    \partial 4 e'8 f'8 |
    g'2 g'4 a'8 a'8 |
    g'2. e'8 g'8 | \break
    c''2 c''4 b'8 a'8 |
    g'2. e'8 f'8 |
    g'2 g'4 a'8 a'8 | \break
    g'2. g'8 e'8 |
    f'8 f'8 f'8 f'8 f'8 d'8 e'8 f'8 |
    g'4 g'2 a'4 | \break
    g'4 e'8 f'8 g'8 g'8 f'4 |
    e'2 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
    \partial 4 e'8 f'8 |
    g'2 g'4 a'8 a'8 |
    g'2. e'8 g'8 | \break
    c''2 c''4 b'8 a'8 |
    g'2. e'8 f'8 |
    g'2 g'4 a'8 a'8 | \break
    g'2. g'8 e'8 |
    f'8 f'8 f'8 f'8 f'8 d'8 e'8 f'8 |
    g'4 g'2 a'4 | \break
    g'4 e'8 f'8 g'8 g'8 f'4 |
    e'2 r4 \break

}


gpmnolnollima_c_notes =
#(if is-svg?
     #{\gpmnolnollima_c_notes_svg#}
     #{\gpmnolnollima_c_notes_pdf#})


gpmnolnollima_c_music = {
  \time 4/4
  \key c \major
  \gpmnolnollima_c_notes
  \bar "|."
}

gpmnolnollima_c_music_solmisasi =
\solmisasiMusic \gpmnolnollima_c_music


gpmnolnollima_lyricOne = \lyricmode {
  Da -- tang -- lah pa -- da Tu -- han, da -- tang -- lah pa -- da Tu -- han. Da -- tang -- lah pa -- da Tuh -- han, ma -- suk -- lah ke da -- lam ru -- mah -- Nya dan sem -- bah Di -- a di pe -- la -- ta -- ran -- Nya.
}

gpmnolnollima_lyricTwo = \lyricmode {
  Te -- nang -- kan -- lah ha -- ti -- mu, su -- ci -- kan -- lah ha -- ti -- mu. Te -- nang -- kan -- lah ha -- ti -- mu, se -- rah -- kan -- lah s'lu -- ruh ke -- hi -- dup -- an -- mu pa -- da -- Nya dan sem -- bah -- lah Di -- a.
}

gpmnolnollima_lyricThree = \lyricmode {
  Su -- ci -- kan -- lah ha -- ti -- mu, su -- ci -- kan -- lah ha -- ti -- mu. Su -- ci -- kan -- lah ha -- ti -- mu, na -- ik -- kan -- lah tem -- bang pu -- ji -- an -- mu pa -- da Tu -- han mu -- lia -- kan na -- ma -- Nya.
}

gpmnolnollima_c_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmnolnollima_lyricOne
\gpmnolnollima_lyricTwo
\gpmnolnollima_lyricThree
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmnolnollima_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmnolnollima_lyricTwo
         }

         \new Lyrics \lyricsto melodi {
           \gpmnolnollima_lyricThree
         }

       >>
     #})

