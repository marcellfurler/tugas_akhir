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

gpmseratusdualima_f_notes = {
  \key f \major
  \relative f'
  \repeat volta 5 {
    % Trik untuk menampilkan bait dengan section
    % pada SVG (mode unfolded)
    #(if is-svg?
         #{
           \volta 1 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 1"
           }
           \volta 2 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 2"
           }
           \volta 3 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 3"
           }
           \volta 4 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 4"
           }
           \volta 5 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 5"
           }
         #}
         ; else/defaulte
         (empty-music)
         )

    c'8 c8 a8 bes8 c8 c8 a8 bes8 | c8 c8 c8 c8 d2 | c2 r4 a8 bes8 | \break
    c8 c8 c8 d8 c8 \once \override Tie.stencil = ##f (bes4.~ | bes4) \breathe g8 a8 bes8 a8 bes8 c8 | bes8 a1* 5/8 r4 | \break
    % reef
    c8 c8 f8 f8 e4 e4 | d8 d8 e8 d8 c4 r4 | d4 d4 c4 c4 | \break
    bes8 bes8 c8 bes8 a4 \breathe a8 a8 | g2 bes4 a8 g8 | f8 f1* 5/8 r4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusdualima_f_music = {
  \time 4/4
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
