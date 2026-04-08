% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 229. Berkatilah, Ya Tuhan"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = F, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Sonia C. Parera - Hummel"
      ", 2007"
    }
  }
}

% do = f -> 1F - 2G - 3A - 4Bb 4 1/2c - 5D - 6E - 7F - 8G

gpmduaratusduasembilan_f_notes = {
  \key f \major
  \relative f'
  \repeat volta 3 {
    % Trik untuk menampilkan bait dengan section
    % pada SVG (mode unfolded)
    #(if is-svg?
         #{

             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 1"
         #}
         ; else/defaulte
         (empty-music)
         )

    f4 f8 g8 e4 d8 c8 | f2. g8 a8 | \break
    bes8 bes8 bes8 a8 bes8 a8 f8 a8 | g2. r4 | \break
    f4 f8 g8 e4 d8 c8 | f2. g8 a8 | \break
    bes8 bes8 bes8 a8 bes8 a8 bes8 c8 | c2. r4 | \break

    bes4 bes8 a8 g2 | c4 c8 bes8 a4 a16 g16 a8 | \break
    bes8 bes8 bes8 a8 bes8 a8 g8 f8 | f2. r4 | \break
    f1* 4/4 | f1* 3/4 r4 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaratusduasembilan_f_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusduasembilan_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusduasembilan_f_music_solmisasi = \solmisasiMusic \gpmduaratusduasembilan_f_music

gpmduaratusduasembilan_lyricOne = \lyricmode {
    Ber -- ka -- ti -- lah ya Tu -- han, ka -- ru -- nia -- kan rah -- mat -- Mu a -- tas ka -- mi.
    Ka -- si -- ha -- ni u -- mat -- Mu, tun -- tun ka -- mi pa -- da ja -- lan yang be -- nar.
    Bim -- bi -- ngan -- Mu, ku -- a -- sa -- Mu, s'mo -- ga ser -- ta -- i ka -- mi s'la -- ma- la -- ma -- nya.
    A -- min.
}
