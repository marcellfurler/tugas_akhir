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

gpmseratustigadua_d_notes_pdf = {
  \repeat volta 2 {
    a'8 a'4 a'8 b'8 a'8 b'8 a'8 | fis'8 fis'4 e'8 fis'4 r4 | \break
    a'8 a'4 a'8 b'8 a'8 b'8 a'8 | fis'8 fis'8 e'8 d'8 e'4 r4 | \break 
    a'8 a'4 a'8 b'8 a'8 b'8 a'8 | fis'8 fis'4 e'8 fis'8 a'8 fis'4 \breathe | \break
    a'8 a'8 b'8 a'8 fis'4 e'8 d'8 | e'8 e'8 fis'8 e'8 d'4 r4 | \break

    % reef
    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    b'4. a'8 b'4. b'8 | a'8 fis'8 fis'8 b'8 a'4 r4 |\break
    b'4 a'8 b'8 d''4 b'4 | a'2 r4 fis'8 e'8 | \break
    d'4 fis'8 a'8 fis'4 b'8 a'8 | fis'4. fis'8 e'8 d'8 e'8 fis'8 | \break
    fis'4 r8 a'8 a'8 a'8 fis'8 e'8 | d'2. r4 \break
  }
}

gpmseratustigadua_d_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  a'8 a'4 a'8 b'8 a'8 b'8 a'8 | fis'8 fis'4 e'8 fis'4 r4 | \break
  a'8 a'4 a'8 b'8 a'8 b'8 a'8 | fis'8 fis'8 e'8 d'8 e'4 r4 | \break 
  a'8 a'4 a'8 b'8 a'8 b'8 a'8 | fis'8 fis'4 e'8 fis'8 a'8 fis'4 \breathe | \break
  a'8 a'8 b'8 a'8 fis'4 e'8 d'8 | e'8 e'8 fis'8 e'8 d'4 r4 | \break

  % reef
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  b'4. a'8 b'4. b'8 | a'8 fis'8 fis'8 b'8 a'4 r4 |\break
  b'4 a'8 b'8 d''4 b'4 | a'2 r4 fis'8 e'8 | \break
  d'4 fis'8 a'8 fis'4 b'8 a'8 | fis'4. fis'8 e'8 d'8 e'8 fis'8 | \break
  fis'4 r8 a'8 a'8 a'8 fis'8 e'8 | d'2. r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  a'8 a'4 a'8 b'8 a'8 b'8 a'8 | fis'8 fis'4 e'8 fis'4 r4 | \break
  a'8 a'4 a'8 b'8 a'8 b'8 a'8 | fis'8 fis'8 e'8 d'8 e'4 r4 | \break 
  a'8 a'4 a'8 b'8 a'8 b'8 a'8 | fis'8 fis'4 e'8 fis'8 a'8 fis'4 \breathe | \break
  a'8 a'8 b'8 a'8 fis'4 e'8 d'8 | e'8 e'8 fis'8 e'8 d'4 r4 | \break

  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  b'4. a'8 b'4. b'8 | a'8 fis'8 fis'8 b'8 a'4 r4 |\break
  b'4 a'8 b'8 d''4 b'4 | a'2 r4 fis'8 e'8 | \break
  d'4 fis'8 a'8 fis'4 b'8 a'8 | fis'4. fis'8 e'8 d'8 e'8 fis'8 | \break
  fis'4 r8 a'8 a'8 a'8 fis'8 e'8 | d'2. r4 \break
}

gpmseratustigadua_d_notes =
#(if is-svg?
     #{ \gpmseratustigadua_d_notes_svg #}
     #{ \gpmseratustigadua_d_notes_pdf #})

gpmseratustigadua_d_music = {
  \time 4/4
  \key d \major
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

gpmseratustigadua_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratustigadua_lyricOne
           \gpmseratustigadua_lyricReff
           \gpmseratustigadua_lyricTwo
           \gpmseratustigadua_lyricReff

         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratustigadua_lyricOne
           \gpmseratustigadua_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratustigadua_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmseratustigadua_lyricReff
         }
       >>
     #}
     )
