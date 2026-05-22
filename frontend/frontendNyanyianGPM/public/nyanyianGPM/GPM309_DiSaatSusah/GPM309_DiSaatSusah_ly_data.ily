\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 309. Di Saat Susah"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Adriana Lohy & Lili Picanussa"
      ", 2008"
    }
  }
}


gpmtiganolsembilan_c_notes = {
  \key c \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

    |
 e'4 f'4 fis'4 |
 g'2. |
 e'2 e'4 | \break
 e'4 ( d'4) c'4 |
 e'2 r4 | 
 f'4 g'4 a'4 | \break
 g'4 g'4 g'8 g'8 |
 c''4 c''4 c''4 |
 c''4 ( a'4) c''4 | \break
 b'2 r4 | 
 a'4 a'4 a'4 |
 f'4 g'4 a'4 | \break
 g'2. |
 e'2. |
 a'4 c''4 a'4 | \break
 b'4 a'4 b'4 |
 c''2. |
 c''2 r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmtiganolsembilan_c_music = {
  \time 3/4
  % \tempo 4 = 80
  \gpmtiganolsembilan_c_notes
  \bar "|."
}

gpmtiganolsembilan_c_music_solmisasi = \solmisasiMusic \gpmtiganolsembilan_c_music

gpmtiganolsembilan_lyricOne = \lyricmode {
  Di sa -- at su -- sah me -- lan -- da -- mu ja -- ngan -- lah ta -- kut kar' -- na Tu -- han ber -- sa -- ma -- mu ba -- dai -- pun pas -- ti ber -- la -- lu Ye -- sus be -- ri su -- ka -- ci -- ta.
}


