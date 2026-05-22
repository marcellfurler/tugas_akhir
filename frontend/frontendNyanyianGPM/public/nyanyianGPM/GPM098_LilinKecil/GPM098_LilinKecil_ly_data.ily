% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 98. Lilin Kecil"

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
      \caps "Christian I. Tamaela"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmsembilanpuluhdelapan_d_notes = {
  \key d \major
  {
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

    fis'4 fis'8 g'8 a'4. fis'8 | a'4 g'8 fis'8 e'2 \breathe | \break
    e'8 e'8 e'8 fis'8 g'4 g'8 b'8 | a'4 g'4 fis'2 \breathe | \break
    fis'4 fis'8 g'8 a'4. fis'8 | a'4 g'8 fis'8 e'2 \breathe | \break
    e'8 e'8 e'8 fis'8 g'4 a'8 g'8 | fis'4 e'4 d'2 \breathe | \break

    b'8 b'8 b'8 b'8 b'4 b'4 \breathe | a'8 a'8 a'8 a'8 a'4 a'4 | \break
    g'4 g'4 fis'4 g'4 | a'2. r4 | \break
    b'8 b'8 b'8 b'8 b'4 b'4 \breathe | a'8 a'8 a'8 a'8 a'4 a'4 | \break
    g'4 g'4 fis'4 e'4 | d'2. r4 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmsembilanpuluhdelapan_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmsembilanpuluhdelapan_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmsembilanpuluhdelapan_d_music_solmisasi = \solmisasiMusic \gpmsembilanpuluhdelapan_d_music

gpmsembilanpuluhdelapan_lyricOne = \lyricmode {
    Li -- lin ke -- cil ber -- si -- nar te -- rang, Ye -- sus su -- dah la -- hir di Bet -- le -- hem.
    Li -- lin ke -- cil, ber -- si -- nar te -- rang, ka -- mi pu -- ji Ye -- sus ha -- ti se -- nang.
    Ha -- le, Ha -- le -- lu -- ya, pu -- ji, pu -- ji Tu -- han di ha -- ri Na -- tal.
    Ha -- le, Ha -- le -- lu -- ya, pu -- ji, pu -- ji Tu -- han di ha -- ri Na -- tal.
}