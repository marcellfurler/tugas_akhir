\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 240. Ajar Anakmu Ya Bapa"

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
      \caps "Monica Pariela-Parera, 2007"
    }
  }
}



gpmduaempatnol_c_notes_pdf = {
  \repeat volta 2 {
    \partial 4 g8 g8 | e'4 e'4 f'4. a'8 | g'4 g'2 \break
    c'8 c'8 | d'4. e'8 f'8 g'8 d'8 f'8 | f'4 e'4 r4 \break
    g8 g8 | \phrasingSlurDashed e'8\( e'8\)\phrasingSlurSolid e'4 f'8 e'8 f'8 a'8 | g'4 g'2 \break
    e'8 g'8 | g'8 f'4. d'8 e'8 f'8 b8 | d'8 c'4.   \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    r8 g'8 e'8 g'8 | c''4. c''8 b'4. c''8 | b'4 a'4. a8 \break
    a'8 c''8 | b'4. b'8 b'8 c''8 b'8 a'8 | a'4 g'4 \break
    r8 g'8 a'8 e'8 | g'4 g'4 g'8 a'8 a'8 g'8 | f'8 f'8 a'4 \break 
    r8 a'8 c''8 a'8 | b'4 b'4 b'4 a'8 b'8 | c''2 r4 \break
  }
}


gpmduaempatnol_c_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    \partial 4 g8 g8 | e'4 e'4 f'4. a'8 | g'4 g'2 \break
    c'8 c'8 | d'4. e'8 f'8 g'8 d'8 f'8 | f'4 e'4 r4 \break
    g8 g8 | \phrasingSlurDashed e'8\( e'8\)\phrasingSlurSolid e'4 f'8 e'8 f'8 a'8 | g'4 g'2 \break
    e'8 g'8 | g'8 f'4. d'8 e'8 f'8 b8 | d'8 c'4.   \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    r8 g'8 e'8 g'8 | c''4. c''8 b'4. c''8 | b'4 a'4. a8 \break
    a'8 c''8 | b'4. b'8 b'8 c''8 b'8 a'8 | a'4 g'4 \break
    r8 g'8 a'8 e'8 | g'4 g'4 g'8 a'8 a'8 g'8 | f'8 f'8 a'4 \break 
    r8 a'8 c''8 a'8 | b'4 b'4 b'4 a'8 b'8 | c''2 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    \partial 4 g8 g8 | e'4 e'4 f'4. a'8 | g'4 g'2 \break
    c'8 c'8 | d'4. e'8 f'8 g'8 d'8 f'8 | f'4 e'4 r4 \break
    g8 g8 | \phrasingSlurDashed e'8\( e'8\)\phrasingSlurSolid e'4 f'8 e'8 f'8 a'8 | g'4 g'2 \break
    e'8 g'8 | g'8 f'4. d'8 e'8 f'8 b8 | d'8 c'4.   \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    r8 g'8 e'8 g'8 | c''4. c''8 b'4. c''8 | b'4 a'4. a8 \break
    a'8 c''8 | b'4. b'8 b'8 c''8 b'8 a'8 | a'4 g'4 \break
    r8 g'8 a'8 e'8 | g'4 g'4 g'8 a'8 a'8 g'8 | f'8 f'8 a'4 \break 
    r8 a'8 c''8 a'8 | b'4 b'4 b'4 a'8 b'8 | c''2 r4 \break

}


gpmduaempatnol_c_notes =
#(if is-svg?
     #{\gpmduaempatnol_c_notes_svg#}
     #{\gpmduaempatnol_c_notes_pdf#})


gpmduaempatnol_c_music = {
  \time 4/4
  \key c \major
  \gpmduaempatnol_c_notes
  \bar "|."
}

gpmduaempatnol_c_music_solmisasi =
\solmisasiMusic \gpmduaempatnol_c_music


gpmduaempatnol_lyricOne = \lyricmode {
  A -- jar a -- nak -- Mu, ya Ba -- pa, me -- nger -- ti mak -- sud -- Mu yang mu -- li -- a me -- la -- lu -- i tan -- tang -- an dan go -- da -- an yang di -- da -- pat di da -- lam hi -- dup -- ku
}

gpmduaempatnol_lyricTwo = \lyricmode {
  A -- jar a -- nak -- Mu, ya Ba -- pa, me -- nu -- rut a -- pa -- pun ke -- hen -- dak -- Mu, su -- pa -- ya _ ke -- hen -- dak mu -- li -- a -- Mu ja -- di nya -- ta di da -- lam hi -- dup -- ku
}

gpmduaempatnol_lyricReff = \lyricmode {
  A -- jar -- an -- Mu me -- nun -- tun a -- ku kem -- ba -- li da -- lam de -- kap -- an ka -- sih -- Mu, dan me -- mur -- ni -- kan ha -- ti dan nu -- ra -- ni -- ku me -- nu -- rut fir -- man -- Mu yang be -- nar.
}

gpmduaempatnol_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
        \gpmduaempatnol_lyricOne
        \gpmduaempatnol_lyricReff
        \gpmduaempatnol_lyricTwo
        \gpmduaempatnol_lyricReff
        } >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmduaempatnol_lyricOne
           \gpmduaempatnol_lyricReff
         }

         \new Lyrics \lyricsto melodi {
           \gpmduaempatnol_lyricTwo
           \lyricsOff
           \gpmduaempatnol_lyricReff
         }

       >>
     #})

