\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 143. Hormat Bagi Allah"

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
      \caps "P. J. Ferdinandus, 2005"
    }
  }
}


gpmseratusempattiga_d_notes = {
  \key d \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

 a'8 a'8 b'8 b'8 a'8 fis'4. |
 a'8 a'8 fis'8 d'8 e'4 r4 | \break
 e'8 e'8 fis'8 fis'8 g'8 g'8 fis'8 e'8 |
 fis'2. r4 | \break
 fis'8 fis'8 a'8 a'8 b'8 a'8 a'4 |
 d''4 cis''8 cis''8 b'2 | \break
 d''8 d''8 cis''8 b'8 a'8 fis'4. |
 g'8 a'8 b'8 cis''8 d''2 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmseratusempattiga_d_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmseratusempattiga_d_notes
  \bar "|."
}

gpmseratusempattiga_d_music_solmisasi = \solmisasiMusic \gpmseratusempattiga_d_music

gpmseratusempattiga_lyricOne = \lyricmode {
  Hor -- mat ba -- gi Al -- lah Ba -- pa pen -- cip -- ta. Hor -- mat ba -- gi Ye -- sus Pe -- ne -- bus. Hor -- mat ba -- gi Roh Ku -- dus, Roh peng -- hi -- bur. Pu -- ji ke -- ti -- ga -- Nya, Al -- lah yang E -- sa.
}


