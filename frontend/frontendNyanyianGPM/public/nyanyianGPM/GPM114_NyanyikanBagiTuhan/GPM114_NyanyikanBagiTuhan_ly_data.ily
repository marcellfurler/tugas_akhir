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

gpmseratusempatbelas_e_notes_pdf = {
  \repeat volta 2 {
    gis'4 gis'4 gis'4 a'8 fis'8 |
    e'4 e'4. e'8 dis'8 e'8 |
    fis'4 fis'4. fis'8 e'8 fis'8 | 
    gis'4 b'2 r4 | \break

    gis'4 gis'4 gis'4 a'8 fis'8 |
    e'4 e'4. gis'8 fis'8 gis'8 | 
    a'4. fis'8 e'4 dis'4 | 
    e'2 r4 b'4 | \break

    % reef dari 5 diatas terakhir (b)
    cis''8 b'2 gis'8 fis'8 e'8 | 
    a'4 cis''4 b'4 r8 b'8 |
    cis''8 b'2 gis'8 fis'8 e'8 |
    fis'4 gis'4 fis'4 r8 b'8 | \break

    cis''8 b'2 gis'8 fis'8 e'8 |
    a'4 a'4 a'4 r8 b'8 | 
    cis''8 b'4 gis'8 fis'8 b'4 gis'16 (fis'16) | 
   
    e'2. r4 | \break
  }
}

gpmseratusempatbelas_e_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  gis'4 gis'4 gis'4 a'8 fis'8 |
  e'4 e'4. e'8 dis'8 e'8 |
  fis'4 fis'4. fis'8 e'8 fis'8 | 
  gis'4 b'2 r4 | \break

  gis'4 gis'4 gis'4 a'8 fis'8 |
  e'4 e'4. gis'8 fis'8 gis'8 | 
  a'4. fis'8 e'4 dis'4 | 
  e'2 r4 b'4 | \break

  % reef dari 5 diatas terakhir (b)
  cis''8 b'2 gis'8 fis'8 e'8 | 
  a'4 cis''4 b'4 r8 b'8 |
  cis''8 b'2 gis'8 fis'8 e'8 |
  fis'4 gis'4 fis'4 r8 b'8 | \break

  cis''8 b'2 gis'8 fis'8 e'8 |
  a'4 a'4 a'4 r8 b'8 | 
  cis''8 b'4 gis'8 fis'8 b'4 gis'16 ( fis'16) | 
  
  e'2. r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  gis'4 gis'4 gis'4 a'8 fis'8 |
  e'4 e'4. e'8 dis'8 e'8 |
  fis'4 fis'4. fis'8 e'8 fis'8 | 
  gis'4 b'2 r4 | \break

  gis'4 gis'4 gis'4 a'8 fis'8 |
  e'4 e'4. gis'8 fis'8 gis'8 | 
  a'4. fis'8 e'4 dis'4 | 
  e'2 r4 b'4 | \break

  % reef dari 5 diatas terakhir (b)
  cis''8 b'2 gis'8 fis'8 e'8 | 
  a'4 cis''4 b'4 r8 b'8 |
  cis''8 b'2 gis'8 fis'8 e'8 |
  fis'4 gis'4 fis'4 r8 b'8 | \break

  cis''8 b'2 gis'8 fis'8 e'8 |
  a'4 a'4 a'4 r8 b'8 | 
  cis''8 b'4 gis'8 fis'8 b'4 gis'16 ( fis'16) | 
  
  e'2. r4 | \break
}

gpmseratusempatbelas_e_notes =
#(if is-svg?
     #{ \gpmseratusempatbelas_e_notes_svg #}
     #{ \gpmseratusempatbelas_e_notes_pdf #})

gpmseratusempatbelas_e_music = {
  \time 4/4
  \key e \major
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

gpmseratusempatbelas_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusempatbelas_lyricOne
           \gpmseratusempatbelas_lyricReff
           \gpmseratusempatbelas_lyricTwo
           \gpmseratusempatbelas_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusempatbelas_lyricOne
           \gpmseratusempatbelas_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusempatbelas_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmseratusempatbelas_lyricReff
         }
       >>
     #}
     )
