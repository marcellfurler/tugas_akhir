% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 284. Tuhan Ku"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
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

gpmduaratusdelapanempat_c_notes = {
  \key c \major
  \relative c'
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

    r2 g'4. a8 | g1* 4/4 | r4 c8 b8 a4 c4 | g4. f8 e2 | \break
    r4 e8 e8 e8 d8 c8 e8 | d2 d2 | r4 d8 e8 f8 f8 e8 d8 | e2 g2 | \break
    r2 g4. a8 | g1* 4/4 | r4 c8 b8 a4 c4 | g4. f8 e2 | \break
    r4 e8 e8 e8 d8 c8 e8 | d2 d2 | r4 d8 e8 f8 f8 e8 d8 | c1* 4/4 | \break

    % reef
    r4 e8 e8 d4 e4 | f2 d2 | r4 f8 f8 e4 f4 | g2 e2 | \break
    r4 e8 e8 d4 e4 | f2 d2 | r4 fis8 g8 a4 fis4 | g1* 5/8 g8 f8 e8 | \break
    d4 r4 g4. a8 | g1 * 4/4 | r4 c8 b8 a4 c4 | g4. f8 e2 | \break
    r4 e8 e8 e8 d8 c8 e8 | d2 d2 | r4 d8 e8 f8 f8 e8 d8 | c1* 4/4 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaratusdelapanempat_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusdelapanempat_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusdelapanempat_c_music_solmisasi = \solmisasiMusic \gpmduaratusdelapanempat_c_music

gpmduaratusdelapanempat_lyricOne = \lyricmode {
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  S'la -- lu ha -- ngat -- kan ji -- wa -- ku, s'la -- lu a -- da di ha -- ti -- ku.
}

gpmduaratusdelapanempat_lyricTwo = \lyricmode {
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  S'la -- lu ha -- ngat -- kan tu -- buh -- ku, s'la -- lu da -- mai -- kan ha -- ti -- ku.
}

gpmduaratusdelapanempat_lyricPreReff = \lyricmode {
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  da -- lam su -- ka mau -- pun du -- ka, a -- ku me -- rin -- du -- kan -- Mu.
}

gpmduaratusdelapanempat_lyricReff = \lyricmode {
  Ber -- kat -- Mu me -- lim -- pah, wa -- lau -- pun 'tak pin -- ta
  Ber -- ta -- bu -- ran cin -- ta, me -- le -- bi -- hi in -- tan per -- ma -- ta.
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  Da -- lam ti -- ap peng -- ha -- ra -- pan, ku -- pa -- tri -- kan na -- ma -- Mu.
}