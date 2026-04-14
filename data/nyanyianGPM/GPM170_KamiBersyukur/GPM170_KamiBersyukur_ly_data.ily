\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 170. Kami Bersyukur"

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
      \caps "Bartje Istia, 2007"
    }
  }
}


gpmseratustujuhpuluh_d_notes = {
  \key d \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )
 a'4 fis'4 b'8 fis'8 | a'2 a'8 a'8 | a'4 g'4 e'4 | d'2. | \break
 fis'4 fis'4 fis'8 a'8 | g'4 g'4 a'8 b'8 | a'2 g'4 | fis'2 r4 | \break
 a'4 fis'4 b'8 fis'8 | a'2 a'8 a'8 | g'4 fis'4 e'4 | d'2. | \break
 fis'4 fis'4 e'8 fis'8 | g'4. g'8 fis'8 e'8 | \once \override Tie.stencil = ##f d'2. ~ ( | d'2) r4 | \break
 cis''4 cis''4 cis''4 | d''4 a'4 a'8 b'8 | cis''4 d''4 b'4 | a'2 r4 | \break
 cis''4 cis''4 cis''4 | d''4 a'4 a'8 b'8 | b'4 d''4 b'4 | cis''2 r4 | \break
 a'4 fis'4 g'8 b'8 | a'4. a'8 a'8 a'8 | a'4 a'4 g'8 e'8 | d'2. \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmseratustujuhpuluh_d_music = {
  \time 3/4
  % \tempo 4 = 80
  \gpmseratustujuhpuluh_d_notes
  \bar "|."
}

gpmseratustujuhpuluh_d_music_solmisasi = \solmisasiMusic \gpmseratustujuhpuluh_d_music

gpmseratustujuhpuluh_d_lyrics = \lyricmode {
  Ka -- mi ber -- syu -- kur pa -- da -- Mu, ya Ba -- pa, a -- tas s'ga -- la rah -- mat dan ka -- ru -- nia -- Mu. Pu -- ji dan sem -- bah pa -- da -- Mu, ya Tu -- han, Ha -- ri yang in -- dah t'lah Kau be -- ri. Ba -- wa -- kan ka -- mi ma -- suk ha -- di -- rat -- Mu. Tun -- tun -- lah ka -- mi da -- lam t'rang Fir -- man -- Mu. Ku -- at -- kan ka -- mi un -- tuk meng -- ab -- di pa -- da Mu.
}


