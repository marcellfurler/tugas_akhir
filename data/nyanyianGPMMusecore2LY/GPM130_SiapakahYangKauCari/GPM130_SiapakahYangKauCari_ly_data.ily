\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 130. Siapakah Yang Kau Cari?"

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
      \caps "Bartje Istia, 2007"
    }
  }
}



gpmseratustigapuluh_d_notes_pdf = {
  \repeat volta 3 {
    fis'8 fis'8 fis'8 g'8 fis'4 e'4 |
    d'2. r4 | \break
    a'8 a'8 a'8 b'8 a'4 g'4 |
    fis'2. r4 | \break
    b'8 b'4 a'8 b'8 a'8 g'4 |
    a'8 a'4 g'8 a'8 g'8 fis'4 | \break
    g'8 g'8 g'8 g'8 fis'8 fis'8 e'4 |
    d'2. r4 \break
  }
}


gpmseratustigapuluh_d_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    fis'8 fis'8 fis'8 g'8 fis'4 e'4 |
    d'2. r4 | \break
    a'8 a'8 a'8 b'8 a'4 g'4 |
    fis'2. r4 | \break
    b'8 b'4 a'8 b'8 a'8 g'4 |
    a'8 a'4 g'8 a'8 g'8 fis'4 | \break
    g'8 g'8 g'8 g'8 fis'8 fis'8 e'4 |
    d'2. r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    fis'8 fis'8 fis'8 g'8 fis'4 e'4 |
    d'2. r4 | \break
    a'8 a'8 a'8 b'8 a'4 g'4 |
    fis'2. r4 | \break
    b'8 b'4 a'8 b'8 a'8 g'4 |
    a'8 a'4 g'8 a'8 g'8 fis'4 | \break
    g'8 g'8 g'8 g'8 fis'8 fis'8 e'4 |
    d'2. r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
    fis'8 fis'8 fis'8 g'8 fis'4 e'4 |
    d'2. r4 | \break
    a'8 a'8 a'8 b'8 a'4 g'4 |
    fis'2. r4 | \break
    b'8 b'4 a'8 b'8 a'8 g'4 |
    a'8 a'4 g'8 a'8 g'8 fis'4 | \break
    g'8 g'8 g'8 g'8 fis'8 fis'8 e'4 |
    d'2. r4 \break

}


gpmseratustigapuluh_d_notes =
#(if is-svg?
     #{\gpmseratustigapuluh_d_notes_svg#}
     #{\gpmseratustigapuluh_d_notes_pdf#})


gpmseratustigapuluh_d_music = {
  \time 4/4
  \key d \major
  \gpmseratustigapuluh_d_notes
  \bar "|."
}

gpmseratustigapuluh_d_music_solmisasi =
\solmisasiMusic \gpmseratustigapuluh_d_music


gpmseratustigapuluh_lyricOne = \lyricmode {
  Sia -- pa -- kah yang kau ca -- ri? Sia -- pa -- kah yang kau ca -- ri? I -- a su -- dah bang -- kit, I -- a su -- dah per -- gi me -- nung -- gu di Ga -- li -- le -- a.
}

gpmseratustigapuluh_lyricTwo = \lyricmode {
  Ku -- bur -- Nya su -- dah ko -- song! Ku -- bur -- Nya su -- dah ko -- song! B'ri -- ta -- kan -- lah s'ka -- rang, b'ri -- ta -- kan -- lah s'ka -- rang, so -- rak ha -- le ha -- le -- lu -- ya.
}

gpmseratustigapuluh_lyricThree = \lyricmode {
  Tu -- han Ye -- sus t'lah me -- nang! Kua -- sa maut di -- ka -- lah -- kan. Per -- ca -- ya -- lah s'ka -- rang, per -- ca -- ya -- lah s'ka -- rang, so -- rak, ha -- le ha -- le -- lu -- ya.
}

gpmseratustigapuluh_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmseratustigapuluh_lyricOne
\gpmseratustigapuluh_lyricTwo
\gpmseratustigapuluh_lyricThree
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratustigapuluh_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratustigapuluh_lyricTwo
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratustigapuluh_lyricThree
         }

       >>
     #})

