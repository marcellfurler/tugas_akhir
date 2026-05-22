% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 198. Di Hening Pagi"

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
      \caps "Monica Pariela - Parera"
      ", 2008"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratussembilandelapan_d_notes_pdf = {
  \repeat volta 2 {
    \partial 4 d'8 e'8 | fis'8 a'8 fis'8 e'8 fis'8 e'8 fis'8 a'8 | b'8. a'16 a'2 \breathe \break
    e'8 fis'8 | a'8 g'8 g'8 fis'8 g'8 fis'8 g'8. a'16 | e'2 r4 \break
    d'8 e'8 | fis'8 a'8 fis'8 e'8 fis'8 e'8 fis'8 a'8 | b'8. a'16 a'2 \breathe \break
    e'8 fis'8 | a'8 g'8 g'8 fis'8 e'8 d'8 cis'8 e'8 | d'2 \bar "||" \break

    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    r8 d'8 fis'8 a'8 | d''2 cis''4 \breathe fis'8 a'8 | b'2 a'4 \break
    e'8 fis'8 | a'8 g'8 g'8 fis'8 e'8 d'8 cis'8 d'8 | e'2 \break
    r8 d'8 fis'8 a'8 | d''2 cis''4 \breathe fis'8 a'8 | b'2 a'4 \break
    e'8 fis'8 | a'8 g'8 g'8 fis'8 e'8 d'8 cis'8. e'16 | d'2 r4 \break
  }
}

gpmseratussembilandelapan_d_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 4 d'8 e'8 | fis'8 a'8 fis'8 e'8 fis'8 e'8 fis'8 a'8 | b'8. a'16 a'2 \breathe \break
  e'8 fis'8 | a'8 g'8 g'8 fis'8 g'8 fis'8 g'8. a'16 | e'2 r4 \break
  d'8 e'8 | fis'8 a'8 fis'8 e'8 fis'8 e'8 fis'8 a'8 | b'8. a'16 a'2 \breathe \break
  e'8 fis'8 | a'8 g'8 g'8 fis'8 e'8 d'8 cis'8 e'8 | d'2 \bar "||" \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  r8 d'8 fis'8 a'8 | d''2 cis''4 \breathe fis'8 a'8 | b'2 a'4 \break
  e'8 fis'8 | a'8 g'8 g'8 fis'8 e'8 d'8 cis'8 d'8 | e'2 \break
  r8 d'8 fis'8 a'8 | d''2 cis''4 \breathe fis'8 a'8 | b'2 a'4 \break
  e'8 fis'8 | a'8 g'8 g'8 fis'8 e'8 d'8 cis'8. e'16 | d'2 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 4 d'8 e'8 | fis'8 a'8 fis'8 e'8 fis'8 e'8 fis'8 a'8 | b'8. a'16 a'2 \breathe \break
  e'8 fis'8 | a'8 g'8 g'8 fis'8 g'8 fis'8 g'8. a'16 | e'2 r4 \break
  d'8 e'8 | fis'8 a'8 fis'8 e'8 fis'8 e'8 fis'8 a'8 | b'8. a'16 a'2 \breathe \break
  e'8 fis'8 | a'8 g'8 g'8 fis'8 e'8 d'8 cis'8 e'8 | d'2 \bar "||" \break
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  r8 d'8 fis'8 a'8 | d''2 cis''4 \breathe fis'8 a'8 | b'2 a'4 \break
  e'8 fis'8 | a'8 g'8 g'8 fis'8 e'8 d'8 cis'8 d'8 | e'2 \break
  r8 d'8 fis'8 a'8 | d''2 cis''4 \breathe fis'8 a'8 | b'2 a'4 \break
  e'8 fis'8 | a'8 g'8 g'8 fis'8 e'8 d'8 cis'8. e'16 | d'2 r4 \break
}

gpmseratussembilandelapan_d_notes =
#(if is-svg?
     #{ \gpmseratussembilandelapan_d_notes_svg #}
     #{ \gpmseratussembilandelapan_d_notes_pdf #})

gpmseratussembilandelapan_d_music = {
  \time 4/4
  \key d \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratussembilandelapan_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratussembilandelapan_d_music_solmisasi = \solmisasiMusic \gpmseratussembilandelapan_d_music

gpmseratussembilandelapan_lyricOne = \lyricmode {
    Di -- he -- ning pa -- gi, ku ta -- tap wa -- jah -- Mu, Tu -- han dan ber -- syu -- kur un -- tuk ha -- ri yang ba -- ru.
    Ku nan -- ti -- kan de -- ngan ta -- ngan ter -- bu -- ka, Tu -- han rah -- mat -- Mu yang ter -- se -- di -- a ba -- gi -- ku.
}

gpmseratussembilandelapan_lyricTwo = \lyricmode {
    Di -- he -- ning pa -- gi, ku ta -- tap wa -- jah -- Mu, Tu -- han dan me -- mo -- hon un -- tuk ke -- se -- dia -- an -- Mu
    me -- ne -- ma -- ni ku di ja -- lan yang 'kan ku tem -- puh meng -- il -- ha -- mi ku de -- ngan kar -- ya ba -- ru.
}
gpmseratussembilandelapan_lyricReff = \lyricmode {
    O, ha -- ri ba -- ru, pa -- gi ba -- ru, ba -- ha gi -- a Kau da -- tang me -- nya -- pa -- ku. 
    O, ha -- ri ba -- ru, pa -- gi ba -- ru ba -- ha -- gi -- a Kau a -- da ber -- sa -- ma -- ku.
}

gpmseratussembilandelapan_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratussembilandelapan_lyricOne
           \gpmseratussembilandelapan_lyricReff
           \gpmseratussembilandelapan_lyricTwo
           \gpmseratussembilandelapan_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratussembilandelapan_lyricOne
           \gpmseratussembilandelapan_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratussembilandelapan_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmseratussembilandelapan_lyricReff
         }
       >>
     #}
     )
