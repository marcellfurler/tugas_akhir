\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 84. Jika Ada Yang Berkata"

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
      \caps "Agust C. W. Gaspersz, 1998"
    }
  }
}


gpmdelapanempat_c_notes = {
  \key c \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

 e'8 e'4. e'8 d'8 e'8 f'8 |
 g'8 g'4. r8 g'8 f'8 e'8 |
 d'4 d'8 e'8 f'4 g'4 |
 f'8 e'1* 5/8 r8 c'8 | \break
 f'8 f'8 f'8 g'8 a'4 d''8 c''8 |
 b'8 c''8 b'8 a'8 a'2 |
 g'2 r8 g'8 c''8 e'8 |
 g'4 f'4. c''8 b'8 a'8 | \break
 a'4 g'2 c''8 c''8 |
 c''8 a'8 a'8 c''8 c''8 b'8 a'8 ( b'8) |
 c''4 c''4 r8 g'8 g'8 f'8 |
 e'4 e'4 g'8 g'8 f'8 e'8 | \break
 g'4 f'4 r8 f'8 f'8 e'8 |
 d'4 d'4 d'8 d'8 c'8 d'8 |
 f'4 e'4 r8 g'8 g'8 f'8 |
 e'8 e'8 e'8 c''8 c''8 c''8 b'8 c''8 | \break
 d''2 d''8 c''8 b'8 a'8 |
 a'2 r8 c''8 b'8 a'8 |
 g'8 c''4 c''8 e''8 d''8 a'8 b'8 |
 c''1 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmdelapanempat_c_music = {
  \time 4/4
  % \tempo 4 = 80
  \gpmdelapanempat_c_notes
  \bar "|."
}

gpmdelapanempat_c_music_solmisasi = \solmisasiMusic \gpmdelapanempat_c_music

gpmdelapanempat_c_lyricOne = \lyricmode {
  Ji -- ka a -- da yang ber -- ka -- ta:  'a -- ku da -- ri go -- lo -- ngan Pa -- u -- lus,' yang lain -- pun ber -- ka -- ta:  'da -- ri go -- lo -- ngan A -- po -- los.' Bu -- kan -- kah i -- tu t'lah me -- nun -- juk -- kan bah -- wa ka -- mu ma -- nu -- si -- a du -- nia -- wi? A -- ku me -- na -- nam, A -- po -- los me -- nyi -- ram, te -- ta -- pi Al -- lah mem -- b'ri per -- tum -- bu -- han bu -- kan yang ter -- pen -- ting sia -- pa yang me -- na -- nam, a -- tau me -- ram me -- lain -- kan Al -- lah mem -- b'ri per -- tum -- bu -- han.
}


