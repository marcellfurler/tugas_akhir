\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 34. Puji Tuhan"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "John F. Beay, 2009"
    }
  }
}


gpmtigaempat_c_notes = {
  \key c \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

    |
 c''8 ( b'8) c''8 ( b'8) c''4 c''8 ( b'8) |
 a'8 a'8 a'8 g'16 ( a'16) c''2 | \break
 a'8 a'8 a'8 g'16 ( a'16) c''4 c''8 c''8 |
 b'8 b'8 b'8 b'8 c''2 | \break
 c''8 ( b'8) c''8 ( b'8) c''4 c''8 ( b'8 ) |
 a'8 a'8 a'8 g'16 ( a'16) c''2 | \break
 a'8 a'8 a'8 g'16 ( a'16) c''4 c''8 c''8 |
 b'8 b'8 b'8 b'8 c''2 | \break
 c'8 d'8 e'8 c'8 f'8 e'8 d'4 |
 e'2. r4 | \break
 c'8 d'8 e'8 c'8 f'8 e'8 d'4 |
 c'4 c''4 c''4 r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmtigaempat_c_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmtigaempat_c_notes
  \bar "|."
}

gpmtigaempat_c_music_solmisasi = \solmisasiMusic \gpmtigaempat_c_music

gpmtigaempat_lyricOne = \lyricmode {
  Pu -- ji Tu -- han, pu -- ji pu -- ji -- lah pu -- ji -- lah Tu -- han, a -- tas ber -- kat yang Dia b'ri. Pu -- ji Tu -- han, pu -- ji pu -- ji -- lah pu -- ji -- lah Tu -- han, a -- tas hi -- dup yang Dia b'ri. A -- min, ha -- le -- lu -- ya a -- min. A -- min, ha -- le -- lu -- ya a -- min. A -- min.
}

