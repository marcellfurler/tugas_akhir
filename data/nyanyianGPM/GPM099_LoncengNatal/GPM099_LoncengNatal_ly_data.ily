% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 99. Lonceng Natal"


  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
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

gpmsembilanpuluhsembilan_d_notes = {
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

    a'4 a'4 a'4 a'8 a'8 | b'4 ( a'4) fis'2 | \break
    e'4. e'8 d'4. e'8 | fis'2. r4 | \break
    a'4 a'4 a'4 a'8 a'8 | b'4 a'4 fis'2 | \break
    e'4. d'8 fis'4. e'8 | d'2. r4 \break  \bar "||"
    \repeat volta 2{
        d''4 b'4 d''4 b'4 | a'2. r4 |  \break
        d''4 b'4 d''4 b'4 a'2 r4 b'8 a'8 | fis'4 fis'2 r8 d'8 | \break
    }
    \alternative {
        {e'4. d'8 e'4. fis'8 | a'4 a'2 r4 \break}
        {e'4. d'8 fis'4. e'8 | d'4 d'2 r4}
    }

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmsembilanpuluhsembilan_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmsembilanpuluhsembilan_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmsembilanpuluhsembilan_d_music_solmisasi = \solmisasiMusic \gpmsembilanpuluhsembilan_d_music

gpmsembilanpuluhsembilan_lyricOne = \lyricmode {
    Lon -- ceng Na -- tal ber -- bu -- nyi, in -- dah dan mer -- du.
    Su -- dah la -- hir di Bet -- le -- hem, Sang I -- ma -- nu -- el.
}
gpmsembilanpuluhsembilan_lyricReff = \lyricmode {
    Ding, dong, ding, dong, ding.
    Ding, dong, ding, dong, ding.
    A -- yo ki -- ta sem
}
gpmsembilanpuluhsembilan_kamar = \lyricmode {
    bah dan pu -- ji Di -- a.

}
% gpmsembilanpuluhsembilan_kamarDua = \lyricmode {
%     bah dan pu -- ji Di -- a.
% }
