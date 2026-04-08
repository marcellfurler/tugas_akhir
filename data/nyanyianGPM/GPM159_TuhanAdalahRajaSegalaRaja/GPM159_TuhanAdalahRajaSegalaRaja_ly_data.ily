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

gpmseratuslimasembilan_e_notes = {
  \key e \major
  \relative e'
  \repeat volta 4 {
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
         #}
         ; else/defaulte
         (empty-music)
         )

    e'8 e8 dis8 cis8 b4 b4 | cis8 cis8 b8 a8 gis4 r8 gis8 | gis8 fis8 gis8 a8 b8 gis8 a8 b8 | cis2 b4 r4 | \break
    gis8 gis8 gis8 fis8 gis4. a8 | \slurDashed (b8 b8) \slurSolid b8 cis8 b4 r8 gis8 | gis8 a8 b8 cis8 \slurDashed (b8 gis8) \slurSolid b8 a8 | gis4. fis8 gis4\fermata r4 \bar "||" \break

    ^\markup { \italic \bold "Refrein" } e'4 b4 e8 dis8 cis8 b8 | cis8 cis4 b8 cis4 \breathe dis8 e8 | fis4 e4 dis4 cis8 cis8 | b8 b4 cis8 b4 r4 | \break
    gis4. fis8 gis4 a4 | b4 cis4 b2 | a2 gis4 fis4 | gis1* 4/4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratuslimasembilan_e_music = {
  \time 4/4
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
  S'lu -- ruh  ja -- gad ra -- ya \set ignoreMelismata = ##t meng -- a -- gung -- kan -- Nya, \set ignoreMelismata = ##f
  dan tun -- duk \set ignoreMelismata = ##t me -- nyem -- bah \set ignoreMelismata = ##f ha -- nya ke -- pa -- da -- Nya.
}

gpmseratuslimasembilan_lyricTwo = \lyricmode {
  Bi -- ar -- lah bu -- mi ber -- gem -- bi -- ra ri -- a, 
  dan se -- mu -- a pu -- lau ber -- su -- ka -- ci -- ta.
  Meng -- hor -- ma -- ti \set ignoreMelismata = ##t ke -_ per -- ka -- sa -- an \set ignoreMelismata = ##f Tu -- han
  yang nam -- pak da -- lam \set ignoreMelismata = ##t fir -- man \set ignoreMelismata = ##f dan ke -- hen -- dak -- Nya.
}
gpmseratuslimasembilan_lyricThree = \lyricmode{
  A -- wan dan ke -- k'la -- man me -- ngi -- ta -- ri -- Nya.
  Per -- lam -- bang ke -- mu -- lia -- an Ra -- ja sor -- ga 
  se -- ga -- la hu -- kum dan ke -- a -- di -- lan.
  I -- tu men -- ja -- di tum -- pu -- an ka -- ki -- Nya. 
}
gpmseratuslimasembilan_lyricFour = \lyricmode {
  La -- ngit mem -- b'ri -- ta -- kan ke -- a -- di -- lan -- Nya.
  S'ga -- la bang -- sa pan -- dang ke -- mu -- lia -- an -- Nya.
  Yang per -- ca -- ya pa -- da \set ignoreMelismata = ##t pa -- ra \set ignoreMelismata = ##f ber -- ha -- la. Al -- lah -- Nya su -- jud \set ignoreMelismata = ##t me -- nyem -- bah\set ignoreMelismata = ##f ke -- pa -- da -- Nya. 
}
gpmseratuslimasembilan_lyricReff = \lyricmode {
  Ya Tu -- han, Eng -- kau yang Ma -- ha -- ting -- gi yang ber -- kua -- sa
  di a -- tas s'lu -- ruh bu -- mi.
  U -- mar -- Mu meng -- a -- min -- kan, Kau -- lah Ra -- ja.
}
