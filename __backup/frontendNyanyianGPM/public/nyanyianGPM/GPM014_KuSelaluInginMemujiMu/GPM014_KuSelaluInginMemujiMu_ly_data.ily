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
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

    r4 f''8 f''8 f''8 d''8 f''8 bes''8 | d'''4. bes''8 f''4. bes''8 | g''4. bes''8 a''8 bes''8 a''8 g''8 | f''1* 1| 
    r4 f''8 f''8 f''8 d''8 f''8 bes''8 | a''4. bes''8 c'''4. bes''8 | a''4. g''8 f''8 a''8 c'''8 bes''8 | d'''1* 1 | \break

    r4 f''8 f''8 f''8 d''8 f''8 bes''8 | d'''4. bes''8 f''4. bes''8 | g''4. bes''8 bes''8 bes''8 a''8 g''8 | f''1* 1| \break
    r4 f''8 f''8 f''8 d''8 f''8 bes''8 | c'''4. bes''8 a''4. bes''8 | c'''4. d'''8 es'''8 c'''8 a''8 c'''8 | bes''1* 1| \break

    r8 bes''8 c'''8 bes''8 a''8 bes''8 c'''8 bes''8 | es'''4. bes''8 g''4. bes''8 | es'''4. d'''8 c'''8 f''8 bes''8 c'''8 | d'''1* 1| \break
    r8 bes''8 c'''8 bes''8 a''8 bes''8 c'''8 bes''8 | es'''4. bes''8 g''4. bes''8 | f'''8 es'''4 d'''8 c'''8 f''8 bes''8 c'''8 | d'''1* 1 | \break

    r8 d'''8 d'''8 d'''8 d'''8 d'''8 es'''8 d'''8 | c'''4. d'''8 c'''2 | r8 c'''8 c'''8 bes''8 a''8 g''8 a''8 bes''8 | c'''1* 1| \break
    r4 f'''4 es'''4. c'''8 | d'''1* 5/8  c'''8 bes''8 a''8 | g''4. g''8 g''8 bes''8 es'''8 g'''8 | f'''4. es'''8 d'''2 | \break

    r4 f''4 d'''8 c'''8 d'''8 es'''8 | c'''1* 5/8 c'''8 c'''8 bes''8 | a''4. f''8 es''8 f''8 a''8 c'''8 | bes''1* 1| \break

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
