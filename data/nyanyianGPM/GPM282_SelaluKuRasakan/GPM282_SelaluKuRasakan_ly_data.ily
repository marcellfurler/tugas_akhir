\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 282. Selalu Ku Rasakan"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = F, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Alex Titawanno"
      ", 2007"
    }
  }
}


gpmduadelapandua_f_notes = {
  \key f \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )

    
    \partial 4 c'4 | a'4 a'4 bes'8 g'8 | f'4 f'4 a'4 | c''2 bes'4 | a'4 r4 \break
    c'4 | a'4 a'4 bes'8 g'8 | f'4 f'4 f'4 | g'2 a'4 | g'4 r4 \break
    a'4 | bes'4 bes'4 bes'8 a'8 | g'4 g'4 g'4 | a'4 a'4 g'4 | f'4 r4 \break
    f'4 | g'4 g'4 g'8 f'8 | e'4 e'4 e'4 | e'4 d'4 e'4 | f'4 r4 \break
    a'4 | c''4 c''4 c''8 bes'8 | a'4 a'4 a'4 | a'4 g'4 f'4 | g'4 r4 \break 
    a'4 | bes'4 bes'4 bes'8 a'8 | g'4 g'4 g'4 | g'4 f'4 g'4 | a'4 r4 \break
    a'4 | c''4 c''4 c''8 bes'8 | a'4 a'4 a'4 | a'4 bes'4 c''4 | bes'4 r4 \break
    bes'4 | a'4 f'4 a'4 | g'4 f'4 e'4 | \once \override Tie.stencil = ##f f'2.~ ( |f'4) r4

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmduadelapandua_f_music = {
  \time 3/4
  % \tempo 4 = 80
  \gpmduadelapandua_f_notes
  \bar "|."
}

gpmduadelapandua_f_music_solmisasi = \solmisasiMusic \gpmduadelapandua_f_music

gpmduadelapandua_lyrics = \lyricmode {
  Se -- la -- lu ku -- ra -- sa -- kan ja -- mah -- an -- Mu. Se -- la -- lu ku -- ra -- sa -- kan ka -- ru -- nia -- Mu. Kau ka -- wan yang se -- ja -- ti peng -- hi -- bur ha -- ti. Da -- ri ha -- ri ke -- ha -- ri Eng -- kau ber -- ka -- ti Baik si -- ang mau -- pun ma -- lam, Kau me -- ne -- ma -- ni Baik su -- ka mau -- pun du -- ka 'kan ku -- ja -- la -- ni. Ter -- pu -- ji -- lah na -- ma -- Mu da -- lam hi -- dup -- ku T'ri -- ma -- lah per -- sem -- ba -- han -- ku
}

gpmduadelapandua_lyricsAll = <<
  \new Lyrics \lyricsto melodi \gpmduadelapandua_lyrics
>>
