\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 23. Mari Kita Menyembah Tuhan"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = G, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Feris Luhukay"
    }
  }
}


gpmduatiga_g_notes = {
  \key g \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

    |
 \partial 4 d''4 |
 b'4. b'8 a'8. g'16 a'8 b'8 |
 d''4 d''2 b'4 | \break
 d''4. b'8 a'8. g'16 a'8 ( b'8 ) |
 a'2. d''4 |
 b'4. b'8 a'8. g'16 a'8 b'8 | \break
 d''4 d''2 d''8 b'8 |
 d''8 b'4 b'8 a'8. g'16 a'8 ( b'8 ) |
 g'2. r4 | \break
 g'4. b'8 d''4 b'8 d''8 |
 e''4 e''4 d''2 |
 g'4. b'8 d''4 d''8 b'8 | \break
 e''8 d''8 b'4 a'2 |
 g'4. b'8 d''4 b'8 d''8 |
 e''4 e''4 d''2 | \break
 g'4. b'8 d''4 d''8 b'8 |
 e''8 d''8 b'8 a'8 g'2

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmduatiga_g_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmduatiga_g_notes
  \bar "|."
}

gpmduatiga_g_music_solmisasi = \solmisasiMusic \gpmduatiga_g_music

gpmduatiga_lyricOne = \lyricmode {
  Ma -- ri ki -- ta me -- nyem -- bah Tu -- han. Be -- sar -- kan -- lah na -- ma -- Nya, Se -- bab a -- tas a -- nu -- grah Al -- lah. hi -- dup ki -- ta di s'la -- mat -- kan -- Nya Pu -- ji -- lah, pu -- ji -- lah Tu -- han sem -- bah -- lah, ma -- ri sem -- bah Tu -- han Ki -- dung -- kan la -- gu pu -- ji -- an nya -- ta -- kan ra -- sa syu -- kur pa -- da -- Nya.
}
