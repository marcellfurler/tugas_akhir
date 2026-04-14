\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 128. Kubur Yesus Sudahlah Terbuka"

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
      \caps "Josia G. Jamlean, 2009"
    }
  }
}


gpmseratusduadelapan_d_notes = {
  \key d \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

    |
 fis'8 fis'8 e'8 d'8 fis'8 fis'8 e'8 d'8 |
 a'2 fis'2 | \break
 fis'8 fis'8 e'8 d'8 fis'8 fis'8 e'8 d'8 | 
 e'4 fis'4 e'2 | \break
 fis'8 fis'8 e'8 d'8 fis'8 fis'8 e'8 d'8 |
 a'2 fis'4 e'4 | \break
 d'8 d'8 d'8 e'8 fis'8 d'8 fis'8 e'8 |
 d'2. r4 | \break
 b'8 b'8 b'8 b'8 d''8 d''8 b'8 b'8 |
 a'2 fis'2 | \break
 b'8 b'8 b'8 b'8 a'8 a'8 fis'8 a'8 |
 a'2. r4 | \break
 d''8 d''8 d''8 d''8 b'8 b'8 d''8 b'8 |
 a'2 b'2 | \break
 a'8 a'8 a'8 a'8 a'8 a'8 b'8 cis''8 |
 d''2. r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmseratusduadelapan_d_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmseratusduadelapan_d_notes
  \bar "|."
}

gpmseratusduadelapan_d_music_solmisasi = \solmisasiMusic \gpmseratusduadelapan_d_music

gpmseratusduadelapan_lyricOne = \lyricmode {
  Ku -- bur Ye -- sus su -- dah -- lah ter -- bu -- ka, kua -- sa ma -- ut su -- dah di -- ka -- lah -- kan -- Nya. Jan -- ji Tu -- han su -- dah -- lah ter -- buk -- ti ber -- so -- rak so -- rak -- lah ha -- le -- lu -- ya. Ki -- bar -- kan -- lah pan -- ji ke -- me -- na -- ngan, bang -- kit dan b'ri -- ta -- kan -- lah se -- g'ra. Ja -- ngan ka -- mu mu -- rung dan ge -- li -- sa, Tu -- han Ye -- sus su -- dah bang -- kit -- lah.
}

