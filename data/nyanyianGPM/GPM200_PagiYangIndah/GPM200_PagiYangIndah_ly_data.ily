\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 200. Pagi Yang Indah"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = E, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 95"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Ots. Kilanmasse, 2009"
    }
  }
}


gpmduaratus_e_notes = {
  \key e \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )
      \partial 2 r8 b8 cis'8 b8 | e'4 e'4 gis'4. fis'8 | fis'4 e'4 \break
      r8 b8 cis'8 b8 | e'4 e'4 gis'4 fis'8 e'8 | fis'2 \break
      r8 b'8 cis''8 b'8 | gis'4 gis'4 fis'4 fis'8 ( gis'8) | a'4 cis''4 \break
      r8 cis''8 b'8 a'8 | gis'4 e'4 gis'8 ( fis'8) e'8 ( dis'8) | e'2 e'2 | \break


      b'2 cis''4. b'8 | b'4 a'2. | fis'2 b'4. a'8 | a'4 gis'2 r4 | \break
      e'8 e'8 e'8 e'8 e'4 gis'4 | fis'4 a'2 r4 | dis'8 e'8 fis'8 gis'8 a'4 dis'4 | e'2 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmduaratus_e_music = {
  \time 4/4
  % \tempo 4 = 95
  \gpmduaratus_e_notes
  \bar "|."
}

gpmduaratus_e_music_solmisasi = \solmisasiMusic \gpmduaratus_e_music

gpmduaratus_lyricOne = \lyricmode {
  Pa -- gi yang in -- dah dan ce -- ri -- a di -- tim -- pa si -- nar sur -- ya ce -- rah. Se -- mes -- ta a -- lam -- pun ber -- gi -- rang me -- mu -- ji Tu -- ha Sang Pen -- cip -- ta. Pu -- ji -- lah Al -- lah, pu -- ji na -- ma -- Nya. Pu -- ji Di -- a se -- la -- ma -- nya, sung -- guh A -- gung kar -- ya -- Nya.
}

