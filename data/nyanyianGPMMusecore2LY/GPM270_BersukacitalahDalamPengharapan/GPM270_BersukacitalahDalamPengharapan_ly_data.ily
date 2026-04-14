\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 270. Bersukacitalah Dalam Pengharapan"
  subtitle = "Berdasarkan Roma 12 : 12"

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
      \caps "Nus Tomatala"
      ", 2008"
    }
  }
}



gpmduatujuhpuluh_c_notes_pdf = {
  \repeat volta 2 {
    \partial 2 r8 e'8 e'8 f'8 | g'8 g'8 g'8 g'8 f'8 e'8 d'8 f'8 | e'2 \break
    r8 c'8 c''8 b'8 | a'8 a'8 a'8 a'8 g'8 g'8 a'8 c''8 | g'2 \break 
    r8 c'8 c'8 c'8 | f'8 a'8 a'8 a'8 b'8 a'4 g'8 | a'2 \break 
    r8 c'8 c'8 c'8 | f'8 a'8 a'8 a'8 b'8 a'4 b'8 | c''2 \break
  }
}


gpmduatujuhpuluh_c_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 2 r8 e'8 e'8 f'8 | g'8 g'8 g'8 g'8 f'8 e'8 d'8 f'8 | e'2 \break
  r8 c'8 c''8 b'8 | a'8 a'8 a'8 a'8 g'8 g'8 a'8 c''8 | g'2 \break 
  r8 c'8 c'8 c'8 | f'8 a'8 a'8 a'8 b'8 a'4 g'8 | a'2 \break 
  r8 c'8 c'8 c'8 | f'8 a'8 a'8 a'8 b'8 a'4 b'8 | c''2 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 2 r8 e'8 e'8 f'8 | g'8 g'8 g'8 g'8 f'8 e'8 d'8 f'8 | e'2 \break
  r8 c'8 c''8 b'8 | a'8 a'8 a'8 a'8 g'8 g'8 a'8 c''8 | g'2 \break 
  r8 c'8 c'8 c'8 | f'8 a'8 a'8 a'8 b'8 a'4 g'8 | a'2 \break 
  r8 c'8 c'8 c'8 | f'8 a'8 a'8 a'8 b'8 a'4 b'8 | c''2 \break

}


gpmduatujuhpuluh_c_notes =
#(if is-svg?
     #{\gpmduatujuhpuluh_c_notes_svg#}
     #{\gpmduatujuhpuluh_c_notes_pdf#})


gpmduatujuhpuluh_c_music = {
  \time 4/4
  \key c \major
  \gpmduatujuhpuluh_c_notes
  \bar "|."
}

gpmduatujuhpuluh_c_music_solmisasi =
\solmisasiMusic \gpmduatujuhpuluh_c_music


gpmduatujuhpuluh_lyricOne = \lyricmode {
  Ber -- su -- ka -- ci -- ta -- lah da -- lam peng -- ha -- ra -- pan. Te -- tap ber -- sa -- bar -- lah da -- lam ke -- se -- sak -- an dan ber -- te -- kun -- lah ju -- ga da -- lam do -- a Nya -- ta -- kan -- lah i -- man ke -- pa -- da Tu -- han.
}

gpmduatujuhpuluh_lyricTwo = \lyricmode {
  Sa -- ling mem -- ban -- tu -- lah da -- lam ke -- ku -- rang -- an. U -- sa -- ha -- kan s'la -- lu be -- ri -- kan tum -- pang -- an Ber -- ka -- ti o -- rang yang su -- sah -- kan ki -- ta Ba -- las yang ja -- hat de -- ngan ke -- ba -- i -- kan.
}

gpmduatujuhpuluh_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
      \gpmduatujuhpuluh_lyricOne
      \gpmduatujuhpuluh_lyricTwo
      } >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmduatujuhpuluh_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmduatujuhpuluh_lyricTwo
         }

       >>
     #})

