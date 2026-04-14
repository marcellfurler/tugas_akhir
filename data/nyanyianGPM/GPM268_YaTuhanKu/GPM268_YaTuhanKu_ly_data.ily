\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 268. Ya Tuhan Ku"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Bartje Istia"
      ", 2007"
    }
  }
}


gpmduaenamdelapan_d_notes = {
  \key d \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )
    a'4 a'4 g'4 |
    fis'2 fis'8 fis'8 |
    g'4 fis'4 g'4 |
    a'2 r4 | \break
    a'4 a'4 g'4 |
    fis'2 fis'8 e'8 |
    d'4. e'8 fis'8 g'8 |
    e'2 r4 | \break
    a'4 a'4 g'4 |
    fis'2 fis'8 fis'8 |
    g'4 a'4 b'4 |
    a'2 r4 | \break
    fis'4 fis'4 fis'4 |
    fis'2 fis'8 fis'8 |
    e'4. fis'8 g'8 e'8 |
    d'2 r4 | \break
    e'4 e'4 e'4 |
    e'4 d'4 e'4 |
    fis'4 a'4 b'4 |
    a'2 r4 | \break
    e'4 e'4 e'4 |
    e'4 g'4 g'4 |
    g'4. fis'8 e'4 |
    fis'2 r4 | \break
    a'4 a'4 g'4 |
    fis'4 fis'8 fis'8 fis'4 |
    fis'4. fis'8 g'8 a'8 |
    b'2 r4 | \break
    b'4 b'4 b'4 |
    a'4 fis'4. a'8 |
    a'4 g'4 e'4 |
    d'2 r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmduaenamdelapan_d_music = {
  \time 3/4
  % \tempo 4 = 80
  \gpmduaenamdelapan_d_notes
  \bar "|."
}

gpmduaenamdelapan_d_music_solmisasi = \solmisasiMusic \gpmduaenamdelapan_d_music

gpmduaenamdelapan_lyricOne = \lyricmode {
  Ya Tu -- han -- ku, Kau per -- lin -- dung -- an -- ku. Ya Tu -- han -- ku, Eng -- kau -- lah pe -- ri -- sai -- ku. Ber -- sa -- ma -- Mu, a -- da ke -- da -- mai -- an. Ber -- sa -- ma -- Mu a -- da ka -- sih dan sa -- yang. Ja -- uh -- kan a -- ku da -- ri ba -- ha -- ya, tun -- tun a -- ku da -- lam t'rang Fir -- man -- Mu Di ta -- ngan -- Mu, a -- da se -- lu -- ruh hi -- dup -- ku. Ha -- nya Kau, Tu -- han per -- lin -- dung -- an -- ku
}

gpmduaenamdelapan_d_lyricsAll = <<
  \new Lyrics \lyricsto melodi \gpmduaenamdelapan_lyricOne
>>
