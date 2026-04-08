% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 242. Dengarkanlah Suara Tuhan"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      " - Ambon, 1982"
    }
  }
}

% do = c -> 1C - 2D - 3E - 4F 4 1/2g - 5A - 6B - 7C - 8D

gpmduaratusempatdua_c_notes = {
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

    g'4. f8 g4 | e2. | a4. g8 f8 (g8) | g2. | a2 c4 | b2 a4 | \once \override Tie.stencil = ##f (g2.~ | g2) r4 | \break
    f4. e8 f4 | d2. | a'4. g8 f8 (g8) | g2 r4 | e4. d8 e4 | f4 e4 d4 | \once \override Tie.stencil = ##f (c2.~ | c2) r4 | \break
    b'4. b8 b8 b8 | b2 a8 (b8) | c4. c8 b8 a8 | g2 r4 | \break
    b4. b8 b8 b8 | b2 e8 (d8) | c4. c8 b8 a8 | g2 r4 | \break
    a4 c4. a8 | g1* 5/8 g8 | a4 c4. d8 | c2 r4 | \break
    e,4. d8 e4 | f4 e4 d4 | \once \override Tie.stencil = ##f (c2.~ | c2) r4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaratusempatdua_c_music = {
  \time 3/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusempatdua_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusempatdua_c_music_solmisasi = \solmisasiMusic \gpmduaratusempatdua_c_music

gpmduaratusempatdua_lyricOne = \lyricmode {
  De -- ngar -- kan -- lah sua -- ra Tu -- han me -- mang -- gil ki -- ta.
  Kau dan a -- ku yang ber -- do -- sa, men -- ja -- di mu -- rid Tu -- han.
}

gpmduaratusempatdua_lyricTwo = \lyricmode {
    De -- ngar -- kan -- lah p'rin -- tah Tu -- han me -- ngu -- tus ki -- ta.
    N'tuk men -- ja -- di ab -- di Tu -- han, me -- nyak -- si -- kan na -- ma -- Nya.
}

gpmduaratusempatdua_lyricReff = \lyricmode {
  I -- kut -- lah Ye -- sus sang Ju -- ru s'la -- mat mu, pi -- kul sa -- lib -- Nya
  se -- u -- mur hi -- dup -- mu se -- tia s'la -- lu pa -- da jan -- ji -- Nya
  Men -- ja -- di mu -- rid Tu -- han.
}