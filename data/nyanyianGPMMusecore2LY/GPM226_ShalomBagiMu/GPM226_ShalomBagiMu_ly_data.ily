\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 226. Shalom Bagi Mu"

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
      \caps "Bartje Istia, 2007"
    }
  }
}


gpmduaduaenam_e_notes = {
  \key e \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )
 \partial 4 r8 fis'8 |
 gis'8 e'8 e'8 fis'8 gis'8 e'4 fis'8 | 
 gis'8 e'8 e'8 cis'8 e'4 r4 | \break
 gis'8 gis'8 gis'8 fis'8 gis'4. fis'8 | 
 gis'8 b'8 b'8 b'8 b'4 r8 fis'8 | 
 gis'8 e'8 e'8 fis'8 gis'8 e'4 fis'8 | \break
 gis'8 e'8 e'8 cis'8 e'4 r4 |
 b'8 b'8 b'8 cis''8 b'8 gis'4 gis'8 | 
 fis'8 fis'8 gis'8 fis'8 e'4 r4 | \break
 cis''8 cis''4 cis''8 cis''8 b'8 b'8 gis'8 | 
 cis''8 b'8 b'8 gis'8 b'4 r4 |
 cis''8 cis''8 cis''8 cis''8 cis''8 b'4 gis'8 | \break
 b'8 b'8 a'8 gis'8 fis'4 r8 fis'8 |
 gis'8 gis'8 gis'8 a'8 b'8 gis'4 cis''8 | 
 b'8 b'8 cis''8 b'8 gis'8 gis'8 r4 | \break
 b'8 b'8 b'8 cis''8 b'8 gis'4 gis'8 |
 fis'8 fis'8 gis'8 fis'8 e'4 

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmduaduaenam_e_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmduaduaenam_e_notes
  \bar "|."
}

gpmduaduaenam_e_music_solmisasi = \solmisasiMusic \gpmduaduaenam_e_music

gpmduaduaenam_lyricOne = \lyricmode {
  Sha -- lom ba -- gi -- mu ka -- wan, sha -- lom ki -- ta se -- mua di ha -- ri i -- ni a -- da su -- ka ci -- ta. Sha -- lom I -- bu dan Ba -- pak, sau -- da -- ra se -- i -- man, ber -- kat dan ka -- ru -- nia a -- da pa -- da ki -- ta. Jan -- ji Tu -- han hen -- dak -- lah ki -- ta ka -- bar -- kan pa -- da ke -- lu -- ar -- ga, sau -- da -- ra dan te -- man. Sha -- lom ba -- gi -- mu ka -- wan, sha -- lom ki -- ta se -- mu -- a. Da -- lam ka -- sih Tu -- han, da -- mai se -- la -- ma -- nya.
}

