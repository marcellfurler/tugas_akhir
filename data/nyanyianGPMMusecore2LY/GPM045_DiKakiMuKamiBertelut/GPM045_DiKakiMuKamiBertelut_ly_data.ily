\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 45. Di KakiMu Kami Berlutut"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Monica Pariela-Parera, 2007"
    }
  }
}


gpmempatlima_c_notes = {
  \key as \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

 f'4 g'4 as'4 bes'4 |
 c''4 bes'4 as'4 g'4 | 
 f'2. es'4 | 
 f'2. r4 |  \break
 as'4 bes'4 c''4 des''4 | 
 c''4 bes'4 as'4 bes'4 | 
 c''2. r4 |
 f'4 g'4 as'4 bes'4 |  \break
 c''4 bes'4 as'4 g'4 |
 f'2. es'4 | 
 f'2. r4 |
 c''4 c''4 c''4 des''4 | \break
 c''4 bes'4 as'4 ( g'4 ) |
 f'1 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmempatlima_c_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmempatlima_c_notes
  \bar "|."
}

gpmempatlima_c_music_solmisasi = \solmisasiMusic \gpmempatlima_c_music

gpmempatlima_lyricOne = \lyricmode {
  Di ka -- ki -- Mu ka -- mi ber -- te -- lut, sem -- bah. Ma -- lu kar -- 'na sa -- lah dan do -- sa. Mo -- hon pe -- ngam -- pum -- an da -- ri -- Mu, Tu -- han Kris -- tus, ka -- sih -- an -- i ka -- mi
}


