% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 159. Tuhan adalah Raja S'gala Raja"
  subtitle = "Mazmur 97 : 1 - 9"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = E, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Sonia C. Parera - Hummel"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratuslimasembilan_e_notes_pdf = {
  \repeat volta 4 {
    e''8 e''8 dis''8 cis''8 b'4 b'4 | cis''8 cis''8 b'8 a'8 gis'4 r8 gis'8 | \break
    gis'8 fis'8 gis'8 a'8 b'8 gis'8 a'8 b'8 | cis''2 b'4 r4 | \break
    gis'8 gis'8 gis'8 fis'8 gis'4. a'8 | \phrasingSlurDashed b'8\( b'8\) \phrasingSlurSolid b'8 cis''8 b'4 r8 gis'8 | \break
    gis'8 a'8 b'8 cis''8 \phrasingSlurDashed b'8\( gis'8\) \phrasingSlurSolid b'8 a'8 | gis'4. fis'8 gis'4\fermata r4 \bar "||" \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    e''4 b'4 e''8 dis''8 cis''8 b'8 | cis''8 cis''4 b'8 cis''4 \breathe dis''8 e''8 | \break
    fis''4 e''4 dis''4 cis''8 cis''8 | b'8 b'4 cis''8 b'4 r4 | \break
    gis'4. fis'8 gis'4 a'4 | b'4 cis''4 b'2 | a'2 gis'4 fis'4 | gis'1* 4/4 | \break
  }
}

gpmseratuslimasembilan_e_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  e''8 e''8 dis''8 cis''8 b'4 b'4 | cis''8 cis''8 b'8 a'8 gis'4 r8 gis'8 | \break
  gis'8 fis'8 gis'8 a'8 b'8 gis'8 a'8 b'8 | cis''2 b'4 r4 | \break
  gis'8 gis'8 gis'8 fis'8 gis'4. a'8 | \phrasingSlurDashed b'8\( b'8\) \phrasingSlurSolid b'8 cis''8 b'4 r8 gis'8 | \break
  gis'8 a'8 b'8 cis''8 \phrasingSlurDashed b'8\( gis'8\) \phrasingSlurSolid b'8 a'8 | gis'4. fis'8 gis'4\fermata r4 \bar "||" \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  e''4 b'4 e''8 dis''8 cis''8 b'8 | cis''8 cis''4 b'8 cis''4 \breathe dis''8 e''8 | \break
  fis''4 e''4 dis''4 cis''8 cis''8 | b'8 b'4 cis''8 b'4 r4 | \break
  gis'4. fis'8 gis'4 a'4 | b'4 cis''4 b'2 | a'2 gis'4 fis'4 | gis'1* 4/4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  e''8 e''8 dis''8 cis''8 b'4 b'4 | cis''8 cis''8 b'8 a'8 gis'4 r8 gis'8 | \break
  gis'8 fis'8 gis'8 a'8 b'8 gis'8 a'8 b'8 | cis''2 b'4 r4 | \break
  gis'8 gis'8 gis'8 fis'8 gis'4. a'8 | \phrasingSlurDashed b'8\( b'8\) \phrasingSlurSolid b'8 cis''8 b'4 r8 gis'8 | \break
  gis'8 a'8 b'8 cis''8 \phrasingSlurDashed b'8\( gis'8\) \phrasingSlurSolid b'8 a'8 | gis'4. fis'8 gis'4\fermata r4 \bar "||" \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  e''4 b'4 e''8 dis''8 cis''8 b'8 | cis''8 cis''4 b'8 cis''4 \breathe dis''8 e''8 | \break
  fis''4 e''4 dis''4 cis''8 cis''8 | b'8 b'4 cis''8 b'4 r4 | \break
  gis'4. fis'8 gis'4 a'4 | b'4 cis''4 b'2 | a'2 gis'4 fis'4 | gis'1* 4/4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  e''8 e''8 dis''8 cis''8 b'4 b'4 | cis''8 cis''8 b'8 a'8 gis'4 r8 gis'8 | \break
  gis'8 fis'8 gis'8 a'8 b'8 gis'8 a'8 b'8 | cis''2 b'4 r4 | \break
  gis'8 gis'8 gis'8 fis'8 gis'4. a'8 | \phrasingSlurDashed b'8\( b'8\) \phrasingSlurSolid b'8 cis''8 b'4 r8 gis'8 | \break
  gis'8 a'8 b'8 cis''8 \phrasingSlurDashed b'8\( gis'8\) \phrasingSlurSolid b'8 a'8 | gis'4. fis'8 gis'4\fermata r4 \bar "||" \break


  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  e''4 b'4 e''8 dis''8 cis''8 b'8 | cis''8 cis''4 b'8 cis''4 \breathe dis''8 e''8 | \break
  fis''4 e''4 dis''4 cis''8 cis''8 | b'8 b'4 cis''8 b'4 r4 | \break
  gis'4. fis'8 gis'4 a'4 | b'4 cis''4 b'2 | a'2 gis'4 fis'4 | gis'1* 4/4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 4"
  e''8 e''8 dis''8 cis''8 b'4 b'4 | cis''8 cis''8 b'8 a'8 gis'4 r8 gis'8 | \break
  gis'8 fis'8 gis'8 a'8 b'8 gis'8 a'8 b'8 | cis''2 b'4 r4 | \break
  gis'8 gis'8 gis'8 fis'8 gis'4. a'8 | \phrasingSlurDashed b'8\( b'8\) \phrasingSlurSolid b'8 cis''8 b'4 r8 gis'8 | \break
  gis'8 a'8 b'8 cis''8 \phrasingSlurDashed b'8\( gis'8\) \phrasingSlurSolid b'8 a'8 | gis'4. fis'8 gis'4\fermata r4 \bar "||" \break


  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  e''4 b'4 e''8 dis''8 cis''8 b'8 | cis''8 cis''4 b'8 cis''4 \breathe dis''8 e''8 | \break
  fis''4 e''4 dis''4 cis''8 cis''8 | b'8 b'4 cis''8 b'4 r4 | \break
  gis'4. fis'8 gis'4 a'4 | b'4 cis''4 b'2 | a'2 gis'4 fis'4 | gis'1* 4/4 | \break
}

gpmseratuslimasembilan_e_notes =
#(if is-svg?
     #{ \gpmseratuslimasembilan_e_notes_svg #}
     #{ \gpmseratuslimasembilan_e_notes_pdf #})

gpmseratuslimasembilan_e_music = {
  \time 4/4
  \key e \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratuslimasembilan_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratuslimasembilan_e_music_solmisasi = \solmisasiMusic \gpmseratuslimasembilan_e_music

gpmseratuslimasembilan_lyricOne = \lyricmode {
  Tu -- han a -- da -- lah Ra -- ja s'ga -- la ra -- ja.
  Ke -- ku -- a -- sa -- an -- Nya tia -- da ber -- ta -- ra.
  S'lu -- ruh  ja -- gad ra -- ya meng -- a -- gung -- kan -- Nya, 
  dan tun -- duk me -- nyem -- bah ha -- nya ke -- pa -- da -- Nya.
}

gpmseratuslimasembilan_lyricTwo = \lyricmode {
  Bi -- ar -- lah bu -- mi ber -- gem -- bi -- ra ri -- a, 
  dan se -- mu -- a pu -- lau ber -- su -- ka -- ci -- ta.
  Meng -- hor -- ma -- ti ke -- per -- ka -- sa -- an Tu -- han
  yang nam -- pak da -- lam  fir -- man dan ke -- hen -- dak -- Nya.
}
gpmseratuslimasembilan_lyricThree = \lyricmode{
  A -- wan dan ke -- k'la -- man me -- ngi -- ta -- ri -- Nya.
  Per -- lam -- bang ke -- mu -- lia -- an Ra -- ja sor -- ga 
  se -- ga -- la hu -- kum dan ke -- _ a -- di -- lan.
  I -- tu men -- ja -- di tum -- _ pu -- an ka -- ki -- Nya. 
}
gpmseratuslimasembilan_lyricFour = \lyricmode {
  La -- ngit mem -- b'ri -- ta -- kan ke -- a -- di -- lan -- Nya.
  S'ga -- la bang -- sa pan -- dang ke -- mu -- lia -- an -- Nya.
  Yang per -- ca -- ya pa -- da pa -- ra ber -- ha -- la. Al -- lah -- Nya su -- jud me -- nyem -- bah ke -- pa -- da -- Nya. 
}
gpmseratuslimasembilan_lyricReff = \lyricmode {
  Ya Tu -- han, Eng -- kau yang Ma -- ha -- ting -- gi yang ber -- kua -- sa
  di a -- tas s'lu -- ruh bu -- mi.
  U -- mat -- Mu meng -- a -- min -- kan, Kau -- lah Ra -- ja.
}

gpmseratuslimasembilan_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimasembilan_lyricOne
           \gpmseratuslimasembilan_lyricReff
           \gpmseratuslimasembilan_lyricTwo
           \gpmseratuslimasembilan_lyricReff
           \gpmseratuslimasembilan_lyricThree
           \gpmseratuslimasembilan_lyricReff
           \gpmseratuslimasembilan_lyricFour
           \gpmseratuslimasembilan_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimasembilan_lyricOne
           \gpmseratuslimasembilan_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimasembilan_lyricTwo
           \lyricsOff
           \gpmseratuslimasembilan_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimasembilan_lyricThree
           \lyricsOff
           \gpmseratuslimasembilan_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimasembilan_lyricFour
           \lyricsOff
           \gpmseratuslimasembilan_lyricReff
         }
         
       >>
     #}
     )
