% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 125. Kebangkitan Yesus"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = F, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
      }
      "Tradisional Tanimbar"
      \vspace #1
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Ots. Kilanmasse"
      ", 2009"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusdualima_f_notes_pdf = {
  \repeat volta 5 {
    c''8 c''8 a'8 bes'8 c''8 c''8 a'8 bes'8 | c''8 c''8 c''8 c''8 d''2 | c''2 r4 a'8 bes'8 | \break
    c''8 c''8 c''8 d''8 c''8 \once \override Tie.stencil = ##f ( bes'4.~ | bes'4) \breathe g'8 a'8 bes'8 a'8 bes'8 c''8 | bes'8 a'1* 5/8 r4 | \break
    % reef
    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    c''8 c''8 f''8 f''8 e''4 e''4 | d''8 d''8 e''8 d''8 c''4 r4 | d''4 d''4 c''4 c''4 | \break
    bes'8 bes'8 c''8 bes'8 a'4 \breathe a'8 a'8 | g'2 bes'4 a'8 g'8 | f'8 f'1* 5/8 r4 | \break
  }
}

gpmseratusdualima_f_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  c''8 c''8 a'8 bes'8 c''8 c''8 a'8 bes'8 | c''8 c''8 c''8 c''8 d''2 | c''2 r4 a'8 bes'8 | \break
  c''8 c''8 c''8 d''8 c''8 \once \override Tie.stencil = ##f ( bes'4.~ | bes'4) \breathe g'8 a'8 bes'8 a'8 bes'8 c''8 | bes'8 a'1* 5/8 r4 | \break
  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  c''8 c''8 f''8 f''8 e''4 e''4 | d''8 d''8 e''8 d''8 c''4 r4 | d''4 d''4 c''4 c''4 | \break
  bes'8 bes'8 c''8 bes'8 a'4 \breathe a'8 a'8 | g'2 bes'4 a'8 g'8 | f'8 f'1* 5/8 r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  c''8 c''8 a'8 bes'8 c''8 c''8 a'8 bes'8 | c''8 c''8 c''8 c''8 d''2 | c''2 r4 a'8 bes'8 | \break
  c''8 c''8 c''8 d''8 c''8 \once \override Tie.stencil = ##f ( bes'4.~ | bes'4) \breathe g'8 a'8 bes'8 a'8 bes'8 c''8 | bes'8 a'1* 5/8 r4 | \break
  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  c''8 c''8 f''8 f''8 e''4 e''4 | d''8 d''8 e''8 d''8 c''4 r4 | d''4 d''4 c''4 c''4 | \break
  bes'8 bes'8 c''8 bes'8 a'4 \breathe a'8 a'8 | g'2 bes'4 a'8 g'8 | f'8 f'1* 5/8 r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  c''8 c''8 a'8 bes'8 c''8 c''8 a'8 bes'8 | c''8 c''8 c''8 c''8 d''2 | c''2 r4 a'8 bes'8 | \break
  c''8 c''8 c''8 d''8 c''8 \once \override Tie.stencil = ##f ( bes'4.~ | bes'4) \breathe g'8 a'8 bes'8 a'8 bes'8 c''8 | bes'8 a'1* 5/8 r4 | \break
  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  c''8 c''8 f''8 f''8 e''4 e''4 | d''8 d''8 e''8 d''8 c''4 r4 | d''4 d''4 c''4 c''4 | \break
  bes'8 bes'8 c''8 bes'8 a'4 \breathe a'8 a'8 | g'2 bes'4 a'8 g'8 | f'8 f'1* 5/8 r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 4"
  c''8 c''8 a'8 bes'8 c''8 c''8 a'8 bes'8 | c''8 c''8 c''8 c''8 d''2 | c''2 r4 a'8 bes'8 | \break
  c''8 c''8 c''8 d''8 c''8 \once \override Tie.stencil = ##f ( bes'4.~ | bes'4) \breathe g'8 a'8 bes'8 a'8 bes'8 c''8 | bes'8 a'1* 5/8 r4 | \break
  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  c''8 c''8 f''8 f''8 e''4 e''4 | d''8 d''8 e''8 d''8 c''4 r4 | d''4 d''4 c''4 c''4 | \break
  bes'8 bes'8 c''8 bes'8 a'4 \breathe a'8 a'8 | g'2 bes'4 a'8 g'8 | f'8 f'1* 5/8 r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 5"
  c''8 c''8 a'8 bes'8 c''8 c''8 a'8 bes'8 | c''8 c''8 c''8 c''8 d''2 | c''2 r4 a'8 bes'8 | \break
  c''8 c''8 c''8 d''8 c''8 \once \override Tie.stencil = ##f ( bes'4.~ | bes'4) \breathe g'8 a'8 bes'8 a'8 bes'8 c''8 | bes'8 a'1* 5/8 r4 | \break
  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  c''8 c''8 f''8 f''8 e''4 e''4 | d''8 d''8 e''8 d''8 c''4 r4 | d''4 d''4 c''4 c''4 | \break
  bes'8 bes'8 c''8 bes'8 a'4 \breathe a'8 a'8 | g'2 bes'4 a'8 g'8 | f'8 f'1* 5/8 r4 | \break

}

gpmseratusdualima_f_notes =
#(if is-svg?
     #{ \gpmseratusdualima_f_notes_svg #}
     #{ \gpmseratusdualima_f_notes_pdf #})

gpmseratusdualima_f_music = {
  \time 4/4
  \key f \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusdualima_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusdualima_f_music_solmisasi = \solmisasiMusic \gpmseratusdualima_f_music


gpmseratusdualima_lyricOne = \lyricmode {
  Ke -- bang -- ki -- tan Ye -- sus bu -- kan -- lah b'ri -- ta yang ma -- ya.
  ta -- pi sung -- guh i -- tu nya -- ta dan ti -- dak da -- pat di -- sang -- kal.
}

gpmseratusdualima_lyricTwo = \lyricmode {
  A -- pa -- bi -- la Ye -- sus sung -- guh- sung -- guh ti -- dak bang -- kit
  si -- a- si -- a i -- man ki -- ta ju -- ga pem -- b'ri -- ta -- an g're -- ja.

}

gpmseratusdualima_lyricThree = \lyricmode{
  Bri' -- ta ke -- bang -- ki -- tan Ye -- sus 
  wa -- lau -- pun di -- tu -- tup 
  na -- mun pa -- ra pe -- ngu -- a -- sa
  a -- khir -- nya ha -- rus me -- nga -- ku.
}

gpmseratusdualima_lyricFour = \lyricmode{
  Hai pe -- ngi -- ring Ye -- sus 
  ge -- ma -- kan -- lah su -- a -- ra -- mu
  ku -- man -- dang -- kan -- lah tem -- bang -- mu
  ten -- tang ke -- bang -- ki -- tan Ye -- sus.
}

gpmseratusdualima_lyricFive = \lyricmode {
  Si -- ar -- kan  ke -- bang -- ki -- tan -- Nya
  Ke -- se -- lu -- ruh du -- nia
  a -- gar du -- nia mau me -- nga -- ku
  bah -- wa Ye -- sus i -- tu Tu -- han.
}

gpmseratusdualima_lyricReff = \lyricmode{
  Ha -- i u -- mat Tu -- han, ber -- gem -- bi -- ra -- lah
  sam -- but Ye -- sus s'ba -- gai pe -- me -- nang me -- nga -- lah -- kan kua -- sa ma -- ut.
}

gpmseratusdualima_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
          \gpmseratusdualima_lyricOne
          \gpmseratusdualima_lyricReff
          \gpmseratusdualima_lyricTwo
          \gpmseratusdualima_lyricReff
          \gpmseratusdualima_lyricThree
          \gpmseratusdualima_lyricReff
          \gpmseratusdualima_lyricFour
          \gpmseratusdualima_lyricReff
          \gpmseratusdualima_lyricFive
          \gpmseratusdualima_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusdualima_lyricOne
           \gpmseratusdualima_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusdualima_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmseratusdualima_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusdualima_lyricThree
           \lyricsOff
           \gpmseratusdualima_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusdualima_lyricFour
           \lyricsOff
           \gpmseratusdualima_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusdualima_lyricFive
           \lyricsOff
           \gpmseratusdualima_lyricReff
         }
       >>
     #}
     )
