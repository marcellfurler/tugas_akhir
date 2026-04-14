\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 145. Kita Semua Satu"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = F, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
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



gpmseratusempatlima_f_notes_pdf = {
  \repeat volta 2 {
    \partial 2 r8 c'8 f'8 g'8 | a'4 a'4 bes'8 bes'8 a'8 g'8 | a'4 f'4 \break 
    r8 c'8 f'8 a'8 | c''4 b'8 c''8 d''4 c''8 b'8 | c''2 \break 
    r8 a'8 g'8 f'8 | d''4 bes'4 bes'4 c''8 d''8 | c''4 a'4 \break 
    f'8 c'8 f'8 g'8 | a'4 a'8 a'8 bes'4 a'8 g'8 | f'2 \break
  }
}


gpmseratusempatlima_f_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    \partial 2 r8 c'8 f'8 g'8 | a'4 a'4 bes'8 bes'8 a'8 g'8 | a'4 f'4 \break 
    r8 c'8 f'8 a'8 | c''4 b'8 c''8 d''4 c''8 b'8 | c''2 \break 
    r8 a'8 g'8 f'8 | d''4 bes'4 bes'4 c''8 d''8 | c''4 a'4 \break 
    f'8 c'8 f'8 g'8 | a'4 a'8 a'8 bes'4 a'8 g'8 | f'2 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    \partial 2 r8 c'8 f'8 g'8 | a'4 a'4 bes'8 bes'8 a'8 g'8 | a'4 f'4 \break 
    r8 c'8 f'8 a'8 | c''4 b'8 c''8 d''4 c''8 b'8 | c''2 \break 
    r8 a'8 g'8 f'8 | d''4 bes'4 bes'4 c''8 d''8 | c''4 a'4 \break 
    f'8 c'8 f'8 g'8 | a'4 a'8 a'8 bes'4 a'8 g'8 | f'2 \break

}


gpmseratusempatlima_f_notes =
#(if is-svg?
     #{\gpmseratusempatlima_f_notes_svg#}
     #{\gpmseratusempatlima_f_notes_pdf#})


gpmseratusempatlima_f_music = {
  \time 4/4
  \key f \major
  \gpmseratusempatlima_f_notes
  \bar "|."
}

gpmseratusempatlima_f_music_solmisasi =
\solmisasiMusic \gpmseratusempatlima_f_music


gpmseratusempatlima_lyricOne = \lyricmode {
  Ki -- ta se -- mu -- a sa -- tu da -- lam Tu -- han. Ber -- di -- ri -- lah G're -- ja -- Nya yang E -- sa. Tu -- han -- lah Gem -- ba -- lah ki -- ta dom -- ba -- Nya, hi -- dup da -- mai di -- tun -- tun Fir -- man -- Nya
}

gpmseratusempatlima_lyricTwo = \lyricmode {
  Ki -- ta se -- mu -- a sa -- tu da -- lam Tu -- han. Be -- sar, ke -- cil ti -- a -- da be -- da -- nya. Ber -- to -- long to -- long -- lah, sa -- ling mem -- be -- ri, da -- lam Tu -- han ki -- ta ber -- sau -- da -- ra.
}

gpmseratusempatlima_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmseratusempatlima_lyricOne
\gpmseratusempatlima_lyricTwo
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratusempatlima_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratusempatlima_lyricTwo
         }

       >>
     #})

