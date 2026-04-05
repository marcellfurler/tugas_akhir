% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 114. Nyanyikan Bagi Tuhan"

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
      \caps "Bartje Istia"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusempatbelas_e_notes = {
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

    gis4 gis gis a8 fis |
    e4 e4. e8 dis8 e8 |
    fis4 fis4. fis8 e8 fis8 | 
    gis4 b2 r4 | \break

    gis4 gis gis a8 fis |
    e4 e4. gis8 fis8 gis8 | 
    a4. fis8 e4 dis4 | 
    e2 r4 b' | \break

    % reef dari 5 diatas terakhir (b)
    cis8 b2 gis8 fis8 e8 | 
    a4 cis4 b r8 b8|
    cis8 b2 gis8 fis e |
    fis4 gis4 fis r8 b8| \break

    cis8 b2 gis8 fis8 e8 |
    a4 a4 a4 r8 b8 | 
    cis8 b4 gis8 fis8 b4 gis16 (fis16) | 
   
    e2. r4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusempatbelas_e_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusempatbelas_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusempatbelas_e_music_solmisasi = \solmisasiMusic \gpmseratusempatbelas_e_music


gpmseratusempatbelas_lyricOne = \lyricmode {
  Nya -- nyi -- kan ba -- gi Tu -- han
  ki -- dung pu -- ji -- an,
  ma -- dah yang in -- dah
  Mas -- hur -- kan na -- ma Tu -- han,
  ma -- ha mu -- li -- a kar -- ya -- Nya.


}

gpmseratusempatbelas_lyricTwo = \lyricmode {
  In -- dah -- nya na -- ma Tu -- han
  pen -- cip -- ta  al -- am
  se -- mes -- ta ra -- ya
  B'ri -- ta -- kan kar -- ya Tu -- han
  sam -- pai ke -- u -- jung du -- ni -- a.

}

gpmseratusempatbelas_lyricReff = \lyricmode {
  Ho -- sa -- na, Al -- lah -- ku yang ak -- bar.
  Ho -- sa -- na, Al -- lah yang per -- ka -- sa.
  Ho -- sa -- na, Ra -- ja  s'ga -- la Ra -- ja.
  Ho -- sa -- na. O Ha -- le -- lu -- ya
}
