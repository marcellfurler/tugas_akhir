\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 210. Sampe di Ujung Taong Ini"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 70"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Bartje Istia"
      ", 2007"
    }
  }
}


gpmduasatunol_d_notes = {
  \key d \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )
      r8 fis'8 fis'8 fis'8 fis'8 e'8 fis'8 g'8 |
      fis'8 d'2 d'8 d'8 cis'8 | \break
      b16 b16 ~ b16 b16 b8 d'8 g'8 g'8 g'16 a'16 ~ a'16 b'16 |
      b'8 a'4 g'8 fis'2 |\break
      r8 a'8 a'8 a'8 a'8 fis'8 g'8 a'8 |
      g'8 e'2 e'8 e'8 fis'8 | \break
      g'8 g'8 g'8 g'8 fis'8 e'8 d'8 e'8 |
      fis'1 | \break
      r8 fis'8 fis'8 fis'8 fis'8 e'8 fis'8 g'8 |
      fis'8 d'2 d'8 d'8 cis'8 | \break
      b8 b4 b8 g'8 g'8 g'16 a'16 ~ a'16 b'16 |
      b'8 a'4 g'8 fis'2 | \break
      r8 a'8 a'8 a'8 a'8 fis'8 g'8 a'8 |
      g'8 e'2 e'8 e'8 fis'8 | \break
      g'8 g'4 g'8 fis'8 e'8 g'8 cis'8 |
      d'1 | \break
      r8 d''8 d''8 d''8 d''8 cis''8 b'8 a'8 |
      b'8 b'1* 5/8 b'8 a'8 | \break
      g'4. g'8 g'8 fis'8 g'8 a'8 |
      b'8 b'2. b'8 | \break
      a'1 |
      r8 g'8 g'8 g'8 g'8 fis'8 g'8 b'8 | \break
      a'4. g'8 fis'2 |
      r8 d''8 d''8 d''8 d''8 cis''8 b'8 a'8 | \break
      b'8 b'2 b'8 b'8 a'8 |
      g'8 g'4 g'8 g'8 fis'8 g'8 a'8 | \break
      b'8 b'2. b'8 |
      a'1 | \break
      r4 a'8 a'8 g'4 b'4 |
      a'1 | \break
      r4 fis'8 fis'8 fis'8 e'8 d'8 e'8 |
      fis'8 fis'4 fis'8 fis'8 d'8 fis'8 b'8 | \break
      a'8 e'4 e'8 fis'8 e'8 d'8 cis'8 |
      d'1

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmduasatunol_d_music = {
  \time 4/4
  % \tempo 4 = 70
  \gpmduasatunol_d_notes
  \bar "|."
}

gpmduasatunol_d_music_solmisasi = \solmisasiMusic \gpmduasatunol_d_music

gpmduasatunol_d_lyrics = \lyricmode {
  Sam -- pe di u -- jung ta -- ong i -- ni, ka -- tong sa -- mu -- a su bi -- king a -- pa par Te te Ma -- nis a -- le Co -- ba -- an da -- tang si -- ang ma -- lam, ka -- tong sa -- mu -- a li -- a a -- da ba -- e bae Sio de -- ngar lon -- ceng ka -- ja -- di -- ang la sa -- pu da -- da su ba -- nya be -- ta pung sa -- la si -- o Ma -- nyang -- kal di -- ri bu -- ka ha -- ti min -- ta sio Tu -- han mau am -- pong ju -- a e La ta -- gal du -- nia su bi -- na -- sa ma -- nu -- sia hi -- dop di da -- lam do -- sa si -- o Ye -- sus la -- hir di kan -- dang yang hi -- na kas -- ting -- gal tah -- ta -- Nya di Sor -- ga Tu -- rung ka du -- nia li -- a ka -- tong sa -- mu -- a si -- o tang -- gong sang -- sa -- ra Ma -- ri ju -- a ba -- su -- da -- ra ta -- ri -- ma Tu -- han Ye -- sus di da -- lam ha -- ti e
}

gpmduasatunol_d_lyricsAll = <<
  \new Lyrics \lyricsto melodi \gpmduasatunol_d_lyrics
>>
