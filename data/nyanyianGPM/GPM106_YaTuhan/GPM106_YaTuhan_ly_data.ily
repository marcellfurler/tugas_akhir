% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 106. Ya Tuhan"
  subtitle = "Nyanyian Pujian Simeon"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = E, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
      "Berdasarkan Injil Lukas 2 : 29 - 32"
      \vspace #1
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 1986"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusenam_e_notes = {
  \key e \major
  \relative e'{
    % Trik untuk menampilkan bait dengan section
    % pada SVG (mode unfolded)
    #(if is-svg?
         #{

             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 1"

         #}
         ; else/defaulte
         (empty-music)
         )

    % Baris pertama
    cis2 cis8 (dis8) | e4 e4 dis8 (e8) | fis4 fis4 gis8 fis8 | gis2 \breathe cis,8 cis8 | \break
    a'4 a4 gis4 | fis2 fis8 (e8) | \once \override Tie.stencil = ##f dis2.~ (| dis2) r4 | \break
    cis2 cis8 dis8 | e4 e4 dis8 e8 | fis4 fis4 gis8 fis8 | gis2 \breathe cis,8 cis8 | \break
    a'4 a4 gis4 | fis2 e8 (dis8) |cis4 \once \override Tie.stencil = ##f cis2~ (| cis2) r4 | \break

    e4 e4 dis8 e8 | fis4 fis4 fis8 gis8 | gis4 gis4 a8 gis8 |fis2 r4 | \break
    fis4 fis4 e8 dis8 | e2 e8 e8 | cis4 e4 fis8 e8 | dis4 gis2 \breathe | \break
    cis,2 cis8 dis8 | e4 e4 dis8 e8 | fis4 fis4 gis8 fis8 | gis4 gis4 cis,8 cis8 | \break
    a'4 a4 fis8 e8 | fis2 e8 dis8 | \once \override Tie.stencil = ##f cis2.~ (| cis2) r4 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusenam_e_music = {
  \time 3/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenam_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenam_e_music_solmisasi = \solmisasiMusic \gpmseratusenam_e_music

gpmseratusenam_lyricOne = \lyricmode {
    Ya Tu -- han -- ku, bi -- ar -- kan ku per -- gi da -- lam da -- mai se -- jah -- te -- ra.
    Da -- mai se -- jah -- t'ra da -- ri Al -- lah pe -- ne -- bus, yang ber -- la -- ku, se -- suai Fir -- man -- Mu.
    A -- ku t'lah me -- li -- hat ke -- s'la -- ma -- tan Kau be -- ri, i -- tu -- lah te -- rang
    ba -- gi bang -- sa- bang -- sa la -- in dan ke -- mu -- lia -- an ba -- gi u -- mat pi -- li -- han -- Mu,
    pu -- ji Tu -- han pe -- ne -- bus yang te -- guh. 
}
