\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 229. Berkatilah Ya Tuhan"

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
      \caps "Sonia C. Parera - Hummel"
      ", 2007"
    }
  }
}


gpmduaduasembilan_f_notes = {
  \key f \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )
    f'4 f'8 g'8 e'4 d'8 c'8 |
    f'2. g'8 a'8 | \break
    bes'8 bes'8 bes'8 a'8 bes'8 a'8 f'8 a'8 |
    g'2. r4 | \break
    f'4 f'8 g'8 e'4 d'8 c'8 |
    f'2. g'8 a'8 | \break
    bes'8 bes'8 bes'8 a'8 bes'8 a'8 bes'8 c''8 |
    c''2. r4 | \break
    bes'4 bes'8 a'8 g'2 |
    c''4 c''8 bes'8 a'4 a'16 g'16 a'8 | \break
    bes'8 bes'8 bes'8 a'8 bes'8 a'8 g'8 f'8 |
    f'2. r4 | \break
    f'1 |
    f'1

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmduaduasembilan_f_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmduaduasembilan_f_notes
  \bar "|."
}

gpmduaduasembilan_f_music_solmisasi = \solmisasiMusic \gpmduaduasembilan_f_music

gpmduaduasembilan_lyrics = \lyricmode {
  Ber -- ka -- ti -- lah ya Tu -- han, ka -- ru -- nia -- kan rah -- mat -- Mu a -- tas ka -- mi Ka -- si -- ha -- ni u -- mat -- Mu, tun -- tun ka -- mi pa -- da ja -- lan yang be -- nar Bim -- bi -- ngan -- Mu ku -- a -- sa -- Mu, s'mo -- ga ser -- ta -- i ka -- mi s'la -- ma -- la -- ma -- nya A -- min
}

gpmduaduasembilan_f_lyricsAll = <<
  \new Lyrics \lyricsto melodi \gpmduaduasembilan_lyrics
>>
