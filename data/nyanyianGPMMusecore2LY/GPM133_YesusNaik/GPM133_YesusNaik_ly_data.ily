\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 133. Yesus Naik"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = E, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "A. E. Rumthe"
    }
  }
}

% e --> 1-E, 2-Fis 3-Gis, 4-A, 5-B, 6-Cis, 7-Dis, 8-E
gpmseratustigatiga_e_notes = {
  \key e \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )
 \partial 2 e'8 ( fis'8) gis'8 ( a'8) |
 b'8 b'4. e''8 ( dis''8 ) cis''8 ( dis''8 ) | 
 e''2 e''4 r8 gis'8 | \break
 fis'8 fis'4 gis'8 a'8 ( gis'8 fis'8 dis'8 ) | 
 e'2 r4 gis'8 fis'8 |
 e'8 e'4 e'8 e'8 fis'8 e'8 cis'8 |  \break
 b2. b4 | 
 fis'1* 5/8 b8 gis'8 fis'8 | 
 e'2 r4 gis'8 a'8 | \break
 b'4. b'8 b'8 b'8 b'8 b'8 | 
 cis''8 b'8 a'8 gis'8 a'4 \tuplet 3/2 { gis'8 gis'8 fis'8} | \break
 e'4. e'8 fis'8 gis'8 fis'8 fis'8 | e'4 e'4

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }

}

gpmseratustigatiga_e_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmseratustigatiga_e_notes
  \bar "|."
}

gpmseratustigatiga_e_music_solmisasi = \solmisasiMusic \gpmseratustigatiga_e_music

gpmseratustigatiga_lyricOne = \lyricmode {
  Ye -- sus na -- ik, Ye -- sus na -- ik ke -- pa -- da Ba -- pa -- Nya Ye -- sus na -- ik ke -- pa -- da Ba -- pa -- Nya di sur -- ga mu -- li -- a. I -- a t'lah me -- nang -- gung kar -- ya ke -- s'la -- ma -- tan -- Nya, ba -- gi se -- lu -- ruh u -- mat ma -- nu si -- a
}


