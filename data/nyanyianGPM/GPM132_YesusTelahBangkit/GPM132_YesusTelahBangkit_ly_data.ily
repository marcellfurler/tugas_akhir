% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 132. Yesus Telah Bangkit"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
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

gpmseratustigadua_d_notes = {
  \key d \major
  \relative d'
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

    a'8 a4 a8 b8 a8 b8 a8 | fis8 fis4 e8 fis4 r4 | \break
    a8 a4 a8 b8 a8 b8 a8 | fis8 fis8 e8 d8 e4 r4 | \break 
    a8 a4 a8 b8 a8 b8 a8 | fis8 fis4 e8 fis8 a8 fis4 \breathe | \break
    a8 a8 a8 b8 fis4 e8 d8 | e8 e8 fis8 e8 d4 r4 | \break

    % reef
    ^\markup { \fontsize #2 \italic "Refrein" } b'4. a8 b4. b8 | a8 fis8 fis8 b8 a4 r4 |\break
    b4 a8 b8 d4 b4 | a2 r4 fis8 e8 | \break
    d4 fis8 a8 fis4 b8 a8 | fis4. fis8 e8 d8 e8 fis8 | \break
    fis4 r8 a8 a8 a8 fis8 e8 | d2. r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratustigadua_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratustigadua_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratustigadua_d_music_solmisasi = \solmisasiMusic \gpmseratustigadua_d_music

gpmseratustigadua_lyricOne = \lyricmode {
  Ye -- sus t'lah bang -- kit, ma -- ri ber -- so -- rak -- lah.
  Nya -- nyi -- kan -- lah pu -- ji -- an ber -- gem -- bi -- ra -- lah.
  Ta -- ngan ku -- a -- sa ma -- ut su -- dah di -- pa -- tah -- kan.
  Ber -- a -- akhir -- lah p'rang Tu -- han ki -- ta yang me -- nang.
}

gpmseratustigadua_lyricTwo = \lyricmode {
  Ye -- sus tlah bang -- kit ma -- ri sak -- si -- kan -- lah.
  Ku -- bur tlah ko -- song ting -- gal ka -- in ka -- fan -- Nya.
  Ta -- ngan ku -- a -- sa ma -- ut tak mam -- pu me -- ner -- jang.
  Hi -- dup ber -- ge -- mar ba -- gi o -- rang yang be -- nar.
}

gpmseratustigadua_lyricReff = \lyricmode {
  Sam -- but -- lah Tu -- han -- mu per -- ka -- sa, ting -- gi -- kan na -- ma -- Nya.
  Fa -- jar T'rang ben -- de -- rang t'lah da -- tang ber -- a -- khir -- lah pe -- rang hi -- dup ki -- ta te -- nang.
}
