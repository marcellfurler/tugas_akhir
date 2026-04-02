% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 105. Kristus T'lah Datang"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = E, 2/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Wendi Papilaya"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratuslima_e_notes = {
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

    % Baris pertama
    gis8 gis8 gis8 fis8 | e4 e8 e8 | e8 fis8 e8 cis8 | b2 | \break
    e4 e4 | e8 e8 dis8 e8 | fis2 | \break
    r4 b,8 b8 | gis'4 gis8 fis8 | e2 | e8 fis8 e8 cis8 | \break 
    b4 \breathe e8 fis8 | gis8 gis8 gis8 b8 | a8 gis8 fis8 gis8 | e2 | \break

    \mark \markup { \italic "Refrain" } r4 gis8 a8 | b4 b4 | b4 b8 b8 | cis8 b8 a8 gis8 a4 | fis8 gis8 | \break
    a4 a4 | a4 a8 a8 | a8 b8 a8 fis8 | gis4 a4 |  \break
    gis4 e4 | dis4 fis4 | \once \override Tie.stencil = ##f e2~ (| e4) r4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratuslima_e_music = {
  \time 2/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratuslima_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratuslima_e_music_solmisasi = \solmisasiMusic \gpmseratuslima_e_music

gpmseratuslima_lyricOne = \lyricmode {
  Kris -- tus t'lah da -- tang ma -- nu -- sia sem -- bah Di -- a dan ber -- su -- ka -- ci -- ta -- lah.
  Nya -- nyi dan so -- rak -- lah, pu -- ji na -- ma -- Nya t'lah da -- tang pe -- ne -- bus do -- sa ma -- nu -- sia.
}

gpmseratuslima_lyricTwo = \lyricmode {
  Kris -- tus t'lah da -- tang ge -- nap -- lah Fir -- man Tu -- han yang te -- lah di -- jan -- ji -- kan.
  Ma -- ri -- lah sam -- but Dia, pu -- ji na -- ma -- Nya Sang Pe -- ne -- bus Ju -- ru S'la -- mat du -- ni -- a.
}

gpmseratuslima_lyricReff = \lyricmode {
  Di -- a -- lah Ra -- ja a -- tas se -- ga -- la ra -- ja yang ber -- ku -- a -- sa di -- bu -- mi dan di -- sor -- ga
  se -- la -- ma- la -- ma -- nya
}