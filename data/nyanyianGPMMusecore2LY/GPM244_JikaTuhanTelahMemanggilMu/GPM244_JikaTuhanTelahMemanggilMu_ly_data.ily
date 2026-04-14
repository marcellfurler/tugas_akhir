\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 244. Jika Tuhan T'lah Memanggilmu"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = F, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Alex Titawanno "
      "- Piru, 2007"
    }
  }
}



gpmduaempatempat_f_notes_pdf = {
  \repeat volta 2 {
  r4 c'8 c'8 f'8 e'8 f'8 g'8 |
  a'4. g'8 f'2 | \break
  r4 c'8 c'8 f'8 e'8 f'8 a'8 |
  g'4. f'8 e'2 | \break
  r4 c'8 c'8 e'8 d'8 e'8 f'8 |
  g'4. a'8 bes'2 | \break
  r4 g'8 g'8 g'8 g'8 f'8 e'8 |
  f'1 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  r4 c''8 c''8 c''8 c''8 bes'8 a'8 |
  bes'4. a'8 g'2 | \break
  r4 g'8 g'8 f'4 g'4 |
  a'1 | \break
  r4 c''8 c''8 c''8 c''8 bes'8 a'8 |
  g'4. a'8 bes'2 | \break
  r4 e'8 f'8 g'8 g'8 f'8 e'8 |
  f'1 \break
  }
}


gpmduaempatempat_f_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  r4 c'8 c'8 f'8 e'8 f'8 g'8 |
  a'4. g'8 f'2 | \break
  r4 c'8 c'8 f'8 e'8 f'8 a'8 |
  g'4. f'8 e'2 | \break
  r4 c'8 c'8 e'8 d'8 e'8 f'8 |
  g'4. a'8 bes'2 | \break
  r4 g'8 g'8 g'8 g'8 f'8 e'8 |
  f'1 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  r4 c''8 c''8 c''8 c''8 bes'8 a'8 |
  bes'4. a'8 g'2 | \break
  r4 g'8 g'8 f'4 g'4 |
  a'1 | \break
  r4 c''8 c''8 c''8 c''8 bes'8 a'8 |
  g'4. a'8 bes'2 | \break
  r4 e'8 f'8 g'8 g'8 f'8 e'8 |
  f'1 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  r4 c'8 c'8 f'8 e'8 f'8 g'8 |
  a'4. g'8 f'2 | \break
  r4 c'8 c'8 f'8 e'8 f'8 a'8 |
  g'4. f'8 e'2 | \break
  r4 c'8 c'8 e'8 d'8 e'8 f'8 |
  g'4. a'8 bes'2 | \break
  r4 g'8 g'8 g'8 g'8 f'8 e'8 |
  f'1 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  r4 c''8 c''8 c''8 c''8 bes'8 a'8 |
  bes'4. a'8 g'2 | \break
  r4 g'8 g'8 f'4 g'4 |
  a'1 | \break
  r4 c''8 c''8 c''8 c''8 bes'8 a'8 |
  g'4. a'8 bes'2 | \break
  r4 e'8 f'8 g'8 g'8 f'8 e'8 |
  f'1 \break

}


gpmduaempatempat_f_notes =
#(if is-svg?
     #{\gpmduaempatempat_f_notes_svg#}
     #{\gpmduaempatempat_f_notes_pdf#})


gpmduaempatempat_f_music = {
  \time 4/4
  \key f \major
  \gpmduaempatempat_f_notes
  \bar "|."
}

gpmduaempatempat_f_music_solmisasi =
\solmisasiMusic \gpmduaempatempat_f_music


gpmduaempatempat_lyricOne = \lyricmode {
  Ji -- ka Tu -- han t'lah me -- mang -- gil -- mu per -- si -- ap -- jan di -- ri -- mu se -- g'ra ja -- ngan ta -- kut a -- kan se -- te -- ru Tu -- han -- lah pe -- no -- long -- mu 
}

gpmduaempatempat_lyricTwo = \lyricmode {
  Ko -- bar -- kan -- lah a -- pi in -- jil -- Nya ki -- bar -- kan -- lah pan -- ji -- pan -- ji -- Nya ma -- suk da -- lam du -- nia yang ge -- lap a -- gar s'mu -- a s'la -- mat -- lah
}

gpmduaempatempat_lyricReff = \lyricmode{
  Ber -- sak -- si -- lah ba -- gi Tu -- han -- mu I -- kut Fir -- man -- Nya se -- mua bang -- sa ja -- di mu -- rid -- Nya Fir -- man Tu -- han ja -- ya -- lah
}

gpmduaempatempat_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
      \gpmduaempatempat_lyricOne
      \gpmduaempatempat_lyricReff
      \gpmduaempatempat_lyricTwo
      \gpmduaempatempat_lyricReff
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmduaempatempat_lyricOne
            \gpmduaempatempat_lyricReff
         }

         \new Lyrics \lyricsto melodi {
           \gpmduaempatempat_lyricTwo
           \lyricsOff
            \gpmduaempatempat_lyricReff
         }

       >>
     #})

