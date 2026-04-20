\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 16. Mae O, Ite Somba Upu Yesus"

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
      \caps "Elly Toisutta, 2004"
    }
  }
}


gpmenambelas_d_notes = {
  \key d \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

    |
 \partial 4 a'8 fis'8 |
 a'2. r4 | b'8 b'8 b'16 b'16 b'16 b'16 b'8 b'8 b'8 b'8 | b'8 ( a'8) a'2 \break
 a'8 fis'8 | a'2. r4 | b'8 b'8 b'16 b'16 b'16 b'16 b'8 b'8 b'8 b'8 | b'8 ( a'8) a'2 \break
 r8 a'8 | d''8 d''8 d''8 d''8 d''8 d''8 b'16 a'16 b'16 a'16 | a'2. \break
 r8 a'8 | d''8 d''8 d''8 d''8 d''8 d''8 b'16 a'16 b'16 d''16 | d''2.

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmenambelas_d_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmenambelas_d_notes
  \bar "|."
}

gpmenambelas_d_music_solmisasi = \solmisasiMusic \gpmenambelas_d_music

gpmenambelas_lyricOne = \lyricmode {
  Ma -- e o, i -- te som -- ba U -- pu Ye -- sus ra -- me -- ra -- me. Ma -- e o, i -- te som -- ba U -- pu Ye -- sus ra -- me -- ra -- me. Ber -- sa -- tu ra -- me -- ra -- me som -- ba Ye -- sus e, me -- mu -- ji U -- pu Ye -- sus sa -- ma -- sa -- ma e.
}


