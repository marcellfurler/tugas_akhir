% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 166. Ayo Bawa Persembahanmu"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 2/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 2009"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusenamenam_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 5 {
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
           \volta 5 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 5"
           }
         #}
         ; else/defaulte
         (empty-music)
         )

    \partial 4 a8 a8 | d8 d8 d8 e8 fis8 fis8 fis8 g8 | a4 b4 | a8 fis8 r4 | \break
    d'4 b8 (a8) | b8 (a4) a8 | a8 e8 fis8 g8 | g8 (fis4.) | \break
    r4 a,8 a8 | d8 d8 d8 e8 fis8 fis8 fis8 g8 | a4 b4 | a8 fis8 r4 | \break
    d'4 b8 (a8) | a8 (b8) r4 | a4 b8 (a8) | a8 (fis8) r4 | \break
    fis8 fis8 a8 fis8 | e8 d8 e8 d8 | d2 | r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusenamenam_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenamenam_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenamenam_d_music_solmisasi = \solmisasiMusic \gpmseratusenamenam_d_music

gpmseratusenamenam_lyricOne = \lyricmode {
    A -- yo ba -- wa per -- sem -- bah -- an -- mu ke -- pa -- da Tu -- han.
    Ba -- wa -- ah de -- ngan ra -- sa se -- nang.
    A -- yo ba -- wa per -- sem -- bah -- an -- mu ke -- pa -- da Tu -- han.
    Ba -- wa -- lah, ba -- wa -- lah. Tu -- han sam -- but per -- sem -- ba -- han -- mu.
}

gpmseratusenamenam_lyricTwo = \lyricmode {
    A -- yo ba -- wa kor -- ban syu -- kur -- mu ke al -- tar Tu -- han.
    Ba -- wa -- lah de -- ngan tem -- bang syu -- kur.
    A -- yo ba -- wa kor -- ban syu -- kur -- mu ke al -- tar Tu -- han.
    Ba -- wa -- lah, ba -- wa -- lah. Tu -- han sam -- but kor -- ban syu -- kur -- mu.
}
gpmseratusenamenam_lyricThree  = \lyricmode {
    A -- yo ang -- kat -- lah sua -- ra -- mu sam -- but ka -- sih Tu -- han.
    Ang -- kat -- lah de -- ngan sua -- ra mer -- du.
    A -- yo ang -- kat -- lah sua -- ra -- mu sam -- but ka -- sih Tu -- han.
    Ang -- kat -- lah, ang -- kat -- lah. Tu -- han sam -- but sua -- ra ha -- ti -- mu.
}
gpmseratusenamenam_lyricFour = \lyricmode {
    A -- yo bu -- nyi -- kan te -- puk ta -- ngan -- mu pu -- ji Tu -- han.
    Bu -- nyi -- kan de -- ngan su -- ka ri -- a.
    A -- yo bu -- nyi -- kan te -- puk ta -- ngan -- mu pu -- ji Tu -- han.
    Bu -- nyi -- kan, bu -- nyi -- kan. Tu -- han sam -- but bu -- nyi ta -- ngan -- mu.
}
gpmseratusenamenam_lyricFive = \lyricmode{
    A -- yo ha -- rum -- kan ta -- ri -- an -- mu ke -- pa -- da Tu -- han.
    Ha -- rum -- kan de -- nga se -- nyum ka -- sih.
    A -- yo ha -- rum -- kan ta -- ri -- an -- mu ke -- pa -- da Tu -- han. 
    Ha -- rum -- kan, ha -- rum -- kan. Tu -- han sam -- but ta -- ri syu -- kur -- mu.
}
