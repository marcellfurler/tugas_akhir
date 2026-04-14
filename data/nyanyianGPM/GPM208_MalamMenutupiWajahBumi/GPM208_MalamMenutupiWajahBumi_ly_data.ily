\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 208. Malam Menutupi Wajah Bumi"

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
      \caps "Glen V. Hendriks"
      ", 2008"
    }
  }
}



gpmduaratusdelapan_f_notes_pdf = {
  \repeat volta 2 {
        
    a'8 a'8 g'8 a'8 c''8 a'8 g'8 f'8 |
    g'4 f'2 c'4 | \break
    a'8 a'8 g'8 a'8 c''8 a'8 g'8 f'8 |
    a'4 g'2 r4 | \break
    g'8 g'8 f'8 g'8 a'8 g'8 f'8 g'8 |
    f'4 f'4 d'4 r8 c'8 | \break
    f'8 f'8 f'8 a'8 c''8 a'8 g'8 f'8 |
    g'4 f'2. \break
  }
}


gpmduaratusdelapan_f_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  
  a'8 a'8 g'8 a'8 c''8 a'8 g'8 f'8 |
  g'4 f'2 c'4 | \break
  a'8 a'8 g'8 a'8 c''8 a'8 g'8 f'8 |
  a'4 g'2 r4 | \break
  g'8 g'8 f'8 g'8 a'8 g'8 f'8 g'8 |
  f'4 f'4 d'4 r8 c'8 | \break
  f'8 f'8 f'8 a'8 c''8 a'8 g'8 f'8 |
  g'4 f'2. \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  a'8 a'8 g'8 a'8 c''8 a'8 g'8 f'8 |
  g'4 f'2 c'4 | \break
  a'8 a'8 g'8 a'8 c''8 a'8 g'8 f'8 |
  a'4 g'2 r4 | \break
  g'8 g'8 f'8 g'8 a'8 g'8 f'8 g'8 |
  f'4 f'4 d'4 r8 c'8 | \break
  f'8 f'8 f'8 a'8 c''8 a'8 g'8 f'8 |
  g'4 f'2. \break

}


gpmduaratusdelapan_f_notes =
#(if is-svg?
     #{\gpmduaratusdelapan_f_notes_svg #}
     #{\gpmduaratusdelapan_f_notes_pdf #})


gpmduaratusdelapan_f_music = {
  \time 4/4
  \key f \major
  \gpmduaratusdelapan_f_notes
  \bar "|."
}

gpmduaratusdelapan_f_music_solmisasi =
\solmisasiMusic \gpmduaratusdelapan_f_music


gpmduaratusdelapan_lyricOne = \lyricmode {
  Ma -- lam me -- nu -- tu -- pi wa -- jah bu -- mi, lang -- kah yang ku -- ra -- jut -- pun t'lah ber -- a -- khir Syu -- kur ku -- na -- ik -- kan da -- ri ha -- ti -- ku ke -- pa -- da sang Pen -- cip -- ta cak -- ra -- wa -- la.
}

gpmduaratusdelapan_lyricTwo = \lyricmode {
  Ma -- lam me -- nu -- tu -- pi wa -- jah bu -- mi, u -- sai -- lah su -- dah kar -- ya ha -- ri i -- ni Ta -- ngan Tu -- han s'la -- lu me -- nyer -- ta -- i -- ku le -- wa -- ti ha -- ri -- ha -- ri hi -- dup i -- ni.
}

gpmduaratusdelapan_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
      \gpmduaratusdelapan_lyricOne
      \gpmduaratusdelapan_lyricTwo
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmduaratusdelapan_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmduaratusdelapan_lyricTwo
         }

       >>
     #})

