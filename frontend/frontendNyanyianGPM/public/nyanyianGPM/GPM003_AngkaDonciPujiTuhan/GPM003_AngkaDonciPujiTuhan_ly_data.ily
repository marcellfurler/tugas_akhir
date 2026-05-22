\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 3. Angka Donci Puji Tuhan"

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
      \caps "Melvy S. A. Alfons, 2008"
    }
  }
}


gpmtiga_d_notes = {
  \key d \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

    |
 \partial 4 d'8 d'8 | fis'8 fis'1* 5/8 e'8 fis'8 | e'8 d'1* 5/8 \break
 fis'8 g'8 | a'8 a'1* 5/8 g'8 a'8 | g'8 fis'1* 5/8  \break
 a'8 a'8 | d''8 d''1* 5/8  b'8 b'8 | a'8 a'1* 5/8 \break
 fis'8 fis'8 | a'8 fis'4. e'8 ( fis'8 e'8 d'8) | d'2 r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmtiga_d_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmtiga_d_notes
  \bar "|."
}

gpmtiga_d_music_solmisasi = \solmisasiMusic \gpmtiga_d_music

gpmtiga_lyricOne = \lyricmode {
  Ang -- ka don -- ci pu -- ji Tu -- han. Ra -- me -- ra -- me pu -- ji Tu -- han. Ang -- ka don -- ci pu -- ji Tu -- han, Ha -- le -- lu -- ya. A -- min.
}

