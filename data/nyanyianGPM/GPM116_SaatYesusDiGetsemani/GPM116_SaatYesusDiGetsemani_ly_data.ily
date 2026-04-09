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
        "Do = E, 4/4,"
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

gpmseratusenambelas_e_notes_pdf = {
  \repeat volta 2 {
    cis'8 cis'8 cis'8 dis'8 e'8 dis'8 e'8 gis'8 | gis'2 r4 gis'8 e'8 | \break
    cis'4 cis'8 dis'8 e'8 dis'8 cis'8 b8 | cis'2. r4 | \break
    cis'8 cis'8 cis'8 dis'8 e'8 dis'8 e'8 gis'8 | gis'2 r4 gis'8 gis'8 | \break
    fis'8 fis'8 fis'8 gis'8 fis'8 e'8 dis'8 cis'8 | dis'4 dis'4 r8 \phrasingSlurDashed e'16\( dis'16\) \phrasingSlurSolid e'8 dis'8 | \break
    cis'4 cis'4 cis'8 cis'8 cis'8 dis'8 | e'4 e'4. fis'8 e'8 fis'8 | gis'4 gis'2 r4 | \break
  }
}

gpmseratusenambelas_e_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  cis'8 cis'8 cis'8 dis'8 e'8 dis'8 e'8 gis'8 | gis'2 r4 gis'8 e'8 | \break
  cis'4 cis'8 dis'8 e'8 dis'8 cis'8 b8 | cis'2. r4 | \break
  cis'8 cis'8 cis'8 dis'8 e'8 dis'8 e'8 gis'8 | gis'2 r4 gis'8 gis'8 | \break
  fis'8 fis'8 fis'8 gis'8 fis'8 e'8 dis'8 cis'8 | dis'4 dis'4 r8 \phrasingSlurDashed e'16\( dis'16\) \phrasingSlurSolid e'8 dis'8 | \break
  cis'4 cis'4 cis'8 cis'8 cis'8 dis'8 | e'4 e'4. fis'8 e'8 fis'8 | gis'4 gis'2 r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  cis'8 cis'8 cis'8 dis'8 e'8 dis'8 e'8 gis'8 | gis'2 r4 gis'8 e'8 | \break
  cis'4 cis'8 dis'8 e'8 dis'8 cis'8 b8 | cis'2. r4 | \break
  cis'8 cis'8 cis'8 dis'8 e'8 dis'8 e'8 gis'8 | gis'2 r4 gis'8 gis'8 | \break
  fis'8 fis'8 fis'8 gis'8 fis'8 e'8 dis'8 cis'8 | dis'4 dis'4 r8 \phrasingSlurDashed e'16\( dis'16\) \phrasingSlurSolid e'8 dis'8 | \break
  cis'4 cis'4 cis'8 cis'8 cis'8 dis'8 | e'4 e'4. fis'8 e'8 fis'8 | gis'4 gis'2 r4 | \break

}

gpmseratusenambelas_e_notes =
#(if is-svg?
     #{ \gpmseratusenambelas_e_notes_svg #}
     #{ \gpmseratusenambelas_e_notes_pdf #})

gpmseratusenambelas_e_music = {
  \time 4/4
  \key e \major
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
    su -- _ jud ber -- do -- a mo -- hon pa -- da Al -- lah Ba -- pa di Sor -- ga.
}

gpmseratusenambelas_lyricTwo = \lyricmode {
    Sa -- at Ye -- sus a -- kan di -- ta -- wan men -- ja -- la -- ni dan tia -- da me -- la -- wan. 
    Ha -- ti yang re -- muk 'tak ter -- pe -- ri ci -- um -- an ke -- ji bu -- kan -- nya cin -- ta ka -- sih
    I -- a me -- ne -- ri -- ma, se -- tia pa -- da jan -- ji Ba -- pa di Sor -- ga.
}

gpmseratusenambelas_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusenambelas_lyricOne
           \gpmseratusenambelas_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusenambelas_lyricOne
          }

         \new Lyrics \lyricsto melodi {
           \gpmseratusenambelas_lyricTwo
         }
       >>
     #}
     )
