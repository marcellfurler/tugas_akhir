% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 116. Saat Yesus Di Getsemani"

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

gpmseratusenambelas_e_notes = {
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

    cis8 cis8 cis8 dis8 e8 dis8 e8 gis8 | gis2 r4 gis8 e8 | \break
    cis4 cis8 dis8 e8 dis8 cis8 b8 | cis2. r4 | \break
    cis8 cis8 cis8 dis8 e8 dis8 e8 gis8 | gis2 r4 gis8 gis8 | \break
    fis8 fis8 fis8 gis8 fis8 e8 dis8 cis8 | dis4 dis4 r8 \slurDashed (e16 dis16) \slurSolid e8 dis8 | \break
    cis4 cis4 cis8 cis8 cis8 dis8 | e4 e4. fis8 e8 fis8 | gis4 gis2 r4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusenambelas_e_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenambelas_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenambelas_e_music_solmisasi = \solmisasiMusic \gpmseratusenambelas_e_music

gpmseratusenambelas_lyricOne = \lyricmode {
    Sa -- at Ye -- sus di Get -- se -- ma -- ni sen -- di -- ri tia -- da yang me -- ne -- ma -- ni.
    Al -- lam ra -- ya men -- ja -- di sak -- si Pu -- tra Al -- lah yang pe -- nuh cin -- ta dan ka -- sih.
    su -- jud ber -- do -- a mo -- hon pa -- da Al -- lah Ba -- pa di Sor -- ga.
}

gpmseratusenambelas_lyricTwo = \lyricmode {
    Sa -- at Ye -- sus a -- kan di -- ta -- wan men -- ja -- la -- ni dan tia -- da me -- la -- wan. 
    Ha -- ti yang re -- muk 'tak ter -- pe -- ri ci -- um -- an ke -- ji bu -- kan -- nya cin -- ta ka -- sih
    \set ignoreMelismata = ##t I -- a \set ignoreMelismata = ##f me -- ne -- ri -- ma, se -- tia pa -- da jan -- ji Ba -- pa di Sor -- ga.
}
