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
      "Irama Tifa Maluku"
      \vspace #1
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

gpmseratussembilandelapan_d_notes = {
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

    \partial 4 d8 e8 | fis8 a8 fis8 e8 fis8 e8 fis8 a8 | b8. a16 a2 \breathe \break
    e8 fis8 | a8 g8 g8 fis8 g8 fis8 g8. a16 | e2 r4 \break
    d8 e8 | fis8 a8 fis8 e8 fis8 e8 fis8 a8 | b8. a16 a2 \breathe \break
    e8 fis8 | a8 g8 g8 fis8 e8 d8 cis8 e8 | d2 \bar "||" \break

    ^\markup { \italic \bold "Refrein" } r8 d8 fis8 a8 | d2 cis4 \breathe fis,8 a8 | b2 a4 \break
    e8 fis8 | a8 g8 g8 fis8 e8 d8 cis8 d8 | e2 \break
    r8 d8 fis8 a8 | d2 cis4 \breathe fis,8 a8 | b2 a4 \break
    e8 fis8 | a8 g8 g8 fis8 e8 d8 cis8. e16 | d2 r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratussembilandelapan_d_music = {
  \time 4/4
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
