% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 263. Jangan Putus Bilang Syukur"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = E, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
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

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaenamtiga_e_notes = {
  \key e \major
  \relative e'
  \repeat volta 2 {
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
         #}
         ; else/defaulte
         (empty-music)
         )

        \partial 2 b8. e1* 3/16 fis8 | gis2 gis8. fis1* 3/16 gis8 | a2 a8. gis1* 3/16 fis8 | e2  \once \override Tie.stencil = ##f gis2~ (| gis4) r4 | \break

        e8. gis1* 3/16 a8 | b2 b8. ais1* 3/16 b8 | cis2 cis8. b1* 3/16 gis8 | \once \override Tie.stencil = ##f fis1* 4/4 ~ (| fis4) r4 | \break

        b8 b4 a8 | gis2 gis8. gis1* 3/16 fis8 | e2 e8. e1* 3/16 dis8 | cis2 cis8. e1* 3/16 b'8 | \break

        a2 e8. e1* 3/16 fis8 | gis2 b8. gis1* 3/16 e8 | dis2 dis8. e1* 3/16 fis8 | \once \override Tie.stencil = ##f e1* 4/4~ (| e4) r4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaenamtiga_e_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaenamtiga_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaenamtiga_e_music_solmisasi = \solmisasiMusic \gpmduaenamtiga_e_music

gpmduaenamtiga_lyricOne = \lyricmode {
  Ja -- ngan pu -- tus bi -- lang syu -- kur ke -- pa -- da Tu -- han.
  Se -- ka -- li -- pun ba -- nyak su -- sah dan de -- ri -- ta.
  Ye -- sus a -- da da -- lam su -- sah ju -- ga a -- da da -- lam su -- ka.
  I -- a te -- tap sa -- yang ki -- ta se -- la -- ma -- nya.
}

gpmduaenamtiga_lyricTwo = \lyricmode {
  U -- mur pan -- jang ha -- nya a -- da di -- ta -- ngan Tu -- han.
  Na -- pas hi -- dup a -- da da -- lam ku -- a -- sa -- Nya.
  Ja -- ngan bim -- bang, ja -- ngan gen -- tar a -- pa la -- gi pu -- tus a -- sa.
  Ye -- sus te -- tap pe -- li -- ha -- ra ki -- ta se -- mua.
}
