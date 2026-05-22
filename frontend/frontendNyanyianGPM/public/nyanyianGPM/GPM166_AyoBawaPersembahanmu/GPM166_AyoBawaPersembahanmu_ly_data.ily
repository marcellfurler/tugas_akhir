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

gpmseratusenamenam_d_notes_pdf = {
  \repeat volta 5 {
    \partial 4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
    d''4 b'8 ( a'8) | b'8 ( a'4) a'8 | a'8 e'8 fis'8 g'8 | g'8 ( fis'4.) | \break
    r4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
    d''4 b'8 ( a'8) | a'8 ( b'8) r4 | a'4 b'8 ( a'8) | a'8 ( fis'8) r4 | \break
    fis'8 fis'8 a'8 fis'8 | e'8 d'8 e'8 d'8 | d'2 | r4 \break
  }
}

gpmseratusenamenam_d_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
  d''4 b'8 ( a'8) | b'8 ( a'4) a'8 | a'8 e'8 fis'8 g'8 | g'8 ( fis'4.) | \break
  r4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
  d''4 b'8 ( a'8) | a'8 ( b'8) r4 | a'4 b'8 ( a'8) | a'8 ( fis'8) r4 | \break
  fis'8 fis'8 a'8 fis'8 | e'8 d'8 e'8 d'8 | d'2 | r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
  d''4 b'8 ( a'8) | b'8 ( a'4) a'8 | a'8 e'8 fis'8 g'8 | g'8 ( fis'4.) | \break
  r4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
  d''4 b'8 ( a'8) | a'8 ( b'8) r4 | a'4 b'8 ( a'8) | a'8 ( fis'8) r4 | \break
  fis'8 fis'8 a'8 fis'8 | e'8 d'8 e'8 d'8 | d'2 | r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  \partial 4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
  d''4 b'8 ( a'8) | b'8 ( a'4) a'8 | a'8 e'8 fis'8 g'8 | g'8 ( fis'4.) | \break
  r4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
  d''4 b'8 ( a'8) | a'8 ( b'8) r4 | a'4 b'8 ( a'8) | a'8 ( fis'8) r4 | \break
  fis'8 fis'8 a'8 fis'8 | e'8 d'8 e'8 d'8 | d'2 | r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 4"
  \partial 4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
  d''4 b'8 ( a'8) | b'8 ( a'4) a'8 | a'8 e'8 fis'8 g'8 | g'8 ( fis'4.) | \break
  r4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
  d''4 b'8 ( a'8) | a'8 ( b'8) r4 | a'4 b'8 ( a'8) | a'8 ( fis'8) r4 | \break
  fis'8 fis'8 a'8 fis'8 | e'8 d'8 e'8 d'8 | d'2 | r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 5"
  \partial 4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
  d''4 b'8 ( a'8) | b'8 ( a'4) a'8 | a'8 e'8 fis'8 g'8 | g'8 ( fis'4.) | \break
  r4 a8 a8 | d'8 d'8 d'8 e'8 fis'8 fis'8 fis'8 g'8 | a'4 b'4 | a'8 fis'8 r4 | \break
  d''4 b'8 ( a'8) | a'8 ( b'8) r4 | a'4 b'8 ( a'8) | a'8 ( fis'8) r4 | \break
  fis'8 fis'8 a'8 fis'8 | e'8 d'8 e'8 d'8 | d'2 | r4 \break
  
}

gpmseratusenamenam_d_notes =
#(if is-svg?
     #{ \gpmseratusenamenam_d_notes_svg #}
     #{ \gpmseratusenamenam_d_notes_pdf #})

gpmseratusenamenam_d_music = {
  \time 2/4
  \key d \major
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

gpmseratusenamenam_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamenam_lyricOne
           \gpmseratusenamenam_lyricTwo
           \gpmseratusenamenam_lyricThree
           \gpmseratusenamenam_lyricFour
           \gpmseratusenamenam_lyricFive
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamenam_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamenam_lyricTwo
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamenam_lyricThree
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamenam_lyricFour
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamenam_lyricFive
         }
       >>
     #}
     )
