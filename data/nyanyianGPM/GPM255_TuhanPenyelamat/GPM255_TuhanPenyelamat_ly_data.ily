% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 255. Tuhan Penyelamat"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
      "Irama Tifa Maluku"
      \vspace #1
    }
  }

  composer = \markup {
      \pad-x #1
      \column {
          "Lirik: Monica Pariela - Parera, 2009"
          "Lagu: Sonia C. Parera - Hummel, 2009"
      }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaratuslimalima_a_notes = {
  \key a \major
  \relative a'
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

    cis8 e,8 a8 cis8 b8 e,8 gis8 b8 | a8 d,8 fis8 a8 g2 | \break
    fis8 d8 fis8 a8 gis8 a8 b8 e,8 | cis'4. d16 (cis16) b2 | \break
    cis8 e,8 a8 cis8 b8 e,8 gis8 b8 | a8 d,8 fis8 a8 g2 | \break
    fis8 d8 fis8 a8 gis8 a8 b8 cis8 | a2. r4 | \break 

    % reef
    ^\markup { \italic \bold "Refrein" }cis4. d16 (cis16) b2 | a4. b16 a16 gis2 | \break
    fis8 d8 fis8 a8 gis8 a8 b8 e,8 | cis'2 (b2) | \break
    cis4. d16 (cis16) b2 | a4. b16 (a16) gis2 | \break
    fis8 d8 fis8 a8 gis8 a8 b8 gis8 | a2. r4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaratuslimalima_a_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratuslimalima_a_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratuslimalima_a_music_solmisasi = \solmisasiMusic \gpmduaratuslimalima_a_music

gpmduaratuslimalima_lyricOne = \lyricmode {
    Tu -- han Pe -- nye -- la -- mat, Ra -- ja dan Jun -- ju -- ngan -- ku.
    Ja -- di -- kan a -- ku sak -- si se -- ti -- a -- Mu.
    Mem -- b'ri -- ta -- kan ke -- be -- na -- ran cin -- ta ka -- sih -- Mu, 
    yang t'lah se -- la -- mat -- kan ji -- wa -- ku.
}

gpmduaratuslimalima_lyricTwo = \lyricmode {
    Roh Ku -- dus ki -- ra -- nya me -- me -- nu -- hi ha -- ti -- ku.
    Ja -- di -- kan a -- ku sak -- si se -- ti -- a -- Mu.
    Un -- tuk me -- lak sa -- na -- kan a -- ma -- nat a -- gung -- Mu,
    ja -- di sak -- si ke -- be -- sa -- ran -- Mu.
}

gpmduaratuslimalima_lyricReff = \lyricmode {
    Tu -- han -- ku, Jun -- ju -- ngan -- ku. Ken -- da -- li -- kan s'lu -- ruh hi -- dup -- ku.
    Su -- pa -- ya kar -- ya -- ku s'la -- lu me -- mu -- lia -- kan na -- ma -- Mu.
}
