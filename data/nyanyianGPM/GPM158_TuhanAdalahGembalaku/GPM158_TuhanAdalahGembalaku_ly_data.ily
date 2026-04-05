% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 158. Tuhan adalah Gembalaku"

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
      \caps "Bartje Istia"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratuslimadelapan_e_notes = {
  \key e \major
  \relative e'
  \repeat volta 3 {
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
         #}
         ; else/defaulte
         (empty-music)
         )

    e8 e8 e8 gis8 fis8 e8 fis8 gis8 | e2 r8 e8 dis8 e8 | \break
    fis4 fis4. fis8 e8 fis8 | gis2 r8 e8 fis8 e8 | \break
    cis8 b8 cis8 e8 a4. cis,8 | b8 gis'8 gis8 fis8 e4 \breathe gis8 gis8 | \break
    gis4 fis4 gis8 fis8 e8 fis8 | gis2 r8 e8 fis8 e8 | \break
    cis8 cis4 e8 dis8 e8 fis8 dis8 | e2. r4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratuslimadelapan_e_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratuslimadelapan_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratuslimadelapan_e_music_solmisasi = \solmisasiMusic \gpmseratuslimadelapan_e_music

gpmseratuslimadelapan_lyricOne = \lyricmode {
    Tu -- han a -- da -- lah gem -- ba -- la -- ku, a -- ku dom -- ba -- Nya te -- nang te -- duh
    Ke pa -- dang hi -- jau dan se -- gar, ke a -- ir yang se -- juk, ku di tun -- tun o -- leh cin -- ta -- Nya.
    A -- ku per -- ca -- ya se -- la -- ma- la -- ma -- nya.
}

gpmseratuslimadelapan_lyricTwo = \lyricmode {
    Tu -- han a -- da -- lah pe -- ri -- sai -- ku, da -- lam go -- da -- an te -- tap te -- guh.
    Hi -- lang se -- mua ke -- luh ke -- sah, ti -- a -- da ge -- li -- sah, ku -- ber -- ja -- lan da -- lam ka -- sih -- Nya.
    A -- ku per -- ca -- ya se -- la -- ma- la -- ma -- nya.
}
gpmseratuslimadelapan_lyricThree = \lyricmode {
    Tu -- han a -- da -- lah ca -- ha -- ya -- ku, di -- sa -- at ka -- but hi -- tam ke -- lam.
    Fir -- man -- Nya -- lah pe -- li -- ta -- ku, a -- da su -- ka -- ci -- ta, ku di -- ja -- ga o -- leh sa -- yang -- nya.
    A -- ku per -- ca -- ya se -- la -- ma- la -- ma -- nya.
}
