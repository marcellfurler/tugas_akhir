\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 246. PadaMu Tuhan Aku Berlindung"

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
      \caps "Lies Pattiruhu"
      ", 2008"
    }
  }
}


gpmduaempatenam_c_notes = {
  \key c \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

 e'4 d'4 c'4 | c'2. | g2. | g4 c'4 e'4 | a'2. | g'2 r4 | \break
 g'4 f'4 e'4 | e'2. | d'2. | d'4 c'4 d'4 | e'2. | e'2 r4 | \break
 e'4 d'4 c'4 | c'2. | g2. | g4 c'4 e'4 | a'2. | g'2 e'4 | \break
 e'4 d'4 e'4 | g'2. | f'2. | f'4 e'4 d'4 | \once \override Tie.stencil = ##f c'2.~ ( | c'2) r4 | \break
 c''4 c''4 c''4 | c''2. | a'2. | d''4 c''4 a'4 | a'2. | g'2. | \break
 g'4 f'4 e'4 | g'2. | f'2. | d'4 c'4 d'4 | e'2. | e'2 r4 | \break
 c''4 c''4 c''4 | c''2. | a'2. |c''4 c''4 c''4 | c''2. | g'2. | \break
 e'4 d'4 e'4 | g'2. | f'2. | f'4 e'4 d'4 | \once \override Tie.stencil = ##f c'2.~ ( | c'2) r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmduaempatenam_c_music = {
  \time 3/4
  % \tempo 4 = 80
  \gpmduaempatenam_c_notes
  \bar "|."
}

gpmduaempatenam_c_music_solmisasi = \solmisasiMusic \gpmduaempatenam_c_music

gpmduaempatenam_lyricOne = \lyricmode {
  Pa -- da -- Mu Tu -- han, a -- ku ber -- lin -- dung. Da -- lam ta -- ngan -- Mu, a -- ku se -- la -- mat. Ti -- dak ku ta -- kut di per -- ja -- la -- nan se -- bab Tu -- han a -- da di sam -- ping -- ku. A -- ku me -- mu -- ji Ka -- sih sa -- yang -- Mu Da -- lam ta -- ngan -- Mu, a -- ku se -- la -- mat. A -- ku me -- mu -- ji ka -- sih sa -- yang -- Mu. Ha -- nya pa -- da -- Mu, ha -- ra -- pan -- ku.
}

