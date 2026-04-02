% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 95. Bintang Di Timur"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 2/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 1994"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmsembilanpuluhlima_d_notes = {
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

    a'4 a8 b8 | a4 fis4 | b4 b8 b8 | b4 a4 \breathe | \break
    a4 a8 b8 | a4 fis4 | e8 e8 e8 fis8 | e2 \breathe | \break
    a4 a8 b8 | a4 fis4 | b8 b8 b8 b8 | d2 \breathe | \break
    a8 a8 a8 b8 | a8 fis8 fis8 e8 | d4 d4~ | d4 r4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmsembilanpuluhlima_d_music = {
  \time 2/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmsembilanpuluhlima_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmsembilanpuluhlima_d_music_solmisasi = \solmisasiMusic \gpmsembilanpuluhlima_d_music

gpmsembilanpuluhlima_lyricOne = \lyricmode {
  Bin -- tang di Ti -- mur si -- nar -- nya te -- rang
  ja --  di pe -- nun -- tun lang -- kah hi -- dup -- ku. 
  Ki -- ta me -- nu -- ju kan -- dang Bet -- le -- hem, 
  Ye -- sus su -- dah la -- hir di pa -- lu -- ngan.
}

gpmsembilanpuluhlima_lyricTwo = \lyricmode {
  Ki -- ta me -- li -- hat bin -- tang yang be -- sar
  di pun -- cak po -- hon Na -- tal yang in -- dah.
  Ki -- ta me -- nyam -- bu Ye -- sus pe -- ne -- bus,
  di -- se -- ki -- tar bin -- tang yang ber -- ki -- lau.
}
