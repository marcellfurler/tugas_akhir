\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 13. Ku Datang PadaMu"

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
      \caps "Josia G. Jamlean, 2007"
    }
  }
}


gpmtigabelas_f_notes = {
  \key f \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

    |
 f'2 f'4 g'4 |
 a'4. g'8 f'2 | \break
 g'2 f'4 e'4 |
 f'2. r4 | \break
 a'2 a'4 bes'4 |
 c''4. bes'8 a'2 | \break
 g'2 a'4 bes'4 |
 g'2. r4 | \break
 a'2 bes'4 bes'4 |
 a'2 c''2 | \break
 g'2 a'4 bes'4 |
 a'2. r4 | \break
 d''2 e''4 d''4 |
 c''4. bes'8 a'2 | \break
 f'4 a'4 g'4 g'4 |
 f'2. r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmtigabelas_f_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmtigabelas_f_notes
  \bar "|."
}

gpmtigabelas_f_music_solmisasi = \solmisasiMusic \gpmtigabelas_f_music

gpmtigabelas_lyricOne = \lyricmode {
  Ku da -- tang pa -- da -- Mu ya Tu -- han -- ku De -- ngan sung -- guh ha -- ti ku me -- nyem bah, dan ku ber -- se -- rah ke -- pa -- da -- Mu. Tu -- han te -- ri -- ma -- lah do -- a ham -- ba -- Mu.
}


