% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 14. Ku S'lalu Ingin Memuji Mu"


  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = Bes, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Bartje Istia"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmempatbelas_bes_notes = {
  \key bes \major 
  \relative bes' {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

    r4 f'8 f8 f8 d8 f8 bes8 | d4. bes8 f4. bes8 | g4. bes8 a8 bes8 a8 g8 | f1* 1| 
    r4 f8 f8 f8 d8 f8 bes8 | a4. bes8 c4. bes8 | a4. g8 f8 a8 c8 bes8 | d1* 1 | \break

    r4 f,8 f8 f8 d8 f8 bes8 | d4. bes8 f4. bes8 | g4. bes8 bes8 bes8 a8 g8 | f1* 1| \break
    r4 f8 f8 f8 d8 f8 bes8 | c4. bes8 a4. bes8 | c4. d8 es8 c8 a8 c8 | bes1* 1| \break

    r8 bes8 c8 bes8 a8 bes8 c8 bes8 | es4. bes8 g4. bes8 | es4. d8 c8 f,8 bes8 c8 | d1* 1| \break
    r8 bes8 c8 bes8 a8 bes8 c8 bes8 | es4. bes8 g4. bes8 | f'8 es4 d8 c8 f,8 bes8 c8 | d1* 1 | \break

    r8 d8 d8 d8 d8 d8 es8 d8 | c4. d8 c2 | r8 c8 c8 bes8 a8 g8 a8 bes8 | c1* 1| \break
    r4 f4 es4. c8 | d1* 5/8  c8 bes8 a8 | g4. g8 g8 bes8 es8 g8 | f4. es8 d2 | \break

    r4 f,4 d'8 c8 d8 es8 | c1* 5/8 c8 c8 bes8 | a4. f8 es8 f8 a8 c8 | bes1* 1| \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmempatbelas_bes_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmempatbelas_bes_notes
  \bar "|."
}



gpmempatbelas_bes_music_solmisasi = \solmisasiMusic \gpmempatbelas_bes_music

gpmempatbelas_lyricOne = \lyricmode {
  Ku s'la -- lu ing -- in me -- mu -- ji Mu se -- ba -- gai -- ma -- na hi -- dup -- ku
  Kar' -- na cin -- ta ka -- sih se -- tia Mu me -- nun -- tun di -- se -- tiap wak -- tu.
  Ba -- gai ru -- sa rin -- du a -- ir Mu, be -- gi -- tu ju -- ga ji -- wa ku.
  Da -- wai cin -- ta meng -- a -- lun syah -- du, ge -- tar -- kan s'lu -- ruh hi -- dup -- ku.

  Ki -- cau bu -- rung me -- nyam -- but sang sur -- ya ha -- ngat cah' -- ya ke -- mu -- lia -- an.
  Kun -- cup bu -- nga di ta -- man les -- ta -- ri se -- bar -- kan a -- ro -- ma cin -- ta Mu.
  Om -- bak sa -- mu -- d'ra ri -- uh men -- de -- ru, me -- mu -- ji ke -- a -- gu -- ngan Mu.
  Ya Tu -- han b'ri ke -- ku -- a -- tan ku mau ber -- sak -- si ba -- gi Mu.
  Ma -- dah -- ku takh -- ta -- Mu, 'kan a -- ba -- di se -- la -- ma -- la -- ma -- nya.

}
