% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 279. Hasil Orang Benar"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = A, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Bartje Istia"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaratustujuhsembilan_a_notes = {
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

    cis4 cis4 d8 cis4 b8 | a2 r4 a8 a8 | a4. a8 a8 a8 gis8 a8 | b2 r4 cis8 cis8 | \break
    cis4. cis8 b4 a4 | fis2 r4 a8 fis | e4. a8 gis4 b4 | a2. r4 | \break
    b8 b8 b8 b8 b8 a8 gis8 fis8 | e4 a4 a4 r8 cis8 | b8 b8 b8 b8 b8 gis8 a8 b8 | cis2 r4 a8 gis8 | \break
    fis8 fis8 fis8 a8 d8 d8 cis8 b8 | a4 e4 r4 b'8 a8 | gis8 gis4 gis8 a8 gis8 fis8 gis8 | a2. r4 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaratustujuhsembilan_a_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratustujuhsembilan_a_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratustujuhsembilan_a_music_solmisasi = \solmisasiMusic \gpmduaratustujuhsembilan_a_music

gpmduaratustujuhsembilan_lyricOne = \lyricmode {
    Ha -- sil o -- rang be -- nar a -- da -- lah po -- hon ke -- hi -- du -- pan
    dan si -- a -- pa yang bi -- jak me -- ngam -- bil ha -- ti o -- rang.
    Ha -- ti yang te -- nang me -- nye -- gar -- kan tu -- buh, i -- ri ha -- ti mem -- bu -- suk -- kan tu -- lang.
    Ma -- ta Tu -- han a -- da di se -- ga -- la tem -- pat me -- nga -- wa  -- si yang ja -- hat dan ba -- ik.
}

gpmduaratustujuhsembilan_lyricTwo = \lyricmode {
    Ha -- sil o -- rang be -- nar a -- da -- lah sum -- ber ke -- hi -- du -- pan
    dan si -- a -- pa yang bi -- jak me -- nu -- ai ke -- ka -- ya -- an. 
    Ha -- ti me -- nge -- nal pe -- dih -- nya sen -- di -- ri o -- rang la -- in 'tak me -- ra -- sa -- kan -- nya.
    Ma -- ta yang ber -- si -- nar me -- nye -- gar -- kan ha -- ti ka -- bar ba -- ik me -- nye -- gar -- kan tu -- lang.
}