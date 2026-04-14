\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 305. Memberlakukan Perdamaian Allah"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
    }
  }
}


gpmtiganollima_c_notes = {
  \key c \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

    |
 \partial 2 r8 g'8 g'8 g'8 | g'8 e'8 e'8 d'8 c'4 d'4 | e'4 e'4 \break
 r8 c'8 c'8 c'8 | c''4 c''4 a'8 ( g'8) a'8 ( g'8) | g'4 g'4 \break
 r8 g'8 g'8 g'8 | g'8 e'8 e'8 d'8 c'4 d'4 | e'4 e'4 \break
 r8 a'8 a'8 a'8 | g'8 e'8 e'8 e'8 d'8 d'8 e'8 e'8 | g'4 g'4 \break 
 r8 a'8 a'8 a'8 | g'8 e'8 e'8 e'8 d'8 d'8 e'8 d'8 | c'4 c'4 \break
 r4 c'4 | c''4 c''2 a'4 | g'4. ( a'8) g'4 \break
 e'8 e'8 | d'4 e'4 g'4 ( a'4) | g'2  \break
 r4 c'4 | c''4 c''2 a'4 | g'4. ( a'8)  g'4  \break
 g'8 g'8 | a'4 c''4 d''4 ( c''4) | c''2 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmtiganollima_c_music = {
  \time 4/4
  % \tempo 4 = 100
  \gpmtiganollima_c_notes
  \bar "|."
}

gpmtiganollima_c_music_solmisasi = \solmisasiMusic \gpmtiganollima_c_music

gpmtiganollima_lyricOne = \lyricmode {
  Mem -- ber -- la -- ku -- kan per -- da -- mai -- an Al -- lah ba -- gi se -- mu -- a ma -- nu -- si -- a i -- tu -- lah yang di -- ke -- hen -- dak -- i Al -- lah. O ma -- ri ki -- ta me -- nya -- ta -- kan -- nya di bu -- mi. O ma -- ri ki -- ta me -- nya -- ta -- kan -- nya di bu -- mi. Se -- mu -- a nya -- nyi -- kan per -- da -- mai -- an Al -- lah. Se -- mu -- a nya -- nyi -- kan per -- da -- mai -- an Al -- lah.
}

