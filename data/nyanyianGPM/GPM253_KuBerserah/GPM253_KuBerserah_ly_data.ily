% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 253. Ku Berserah"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = Bes, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Elly Toisutta"
      ", 1997"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaratuslimatiga_bes_notes = {
  \key bes \major
  \relative bes'
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

    d4 d4 d4 | f2. | g4 g4 g4 | bes2. | \break
    a2 bes4 | c2 a4 | bes4 a4 g4 | f2 r4 | \break
    d4 d4 d4 | f2. | g4 g4 g4 | bes2. | \break
    a2 bes4 | c4 bes4 a4 | \once \override Tie.stencil = ##f bes2.~ (| bes2) r4 | \break

    % reef
    d2 d4 | d4 c4 bes4 | c2 a4 | f2. | \break 
    es'2 es4 | es4 d4 c4 | d2 c4 | bes2 r4 | \break
    d2 d4 | d4 c4 bes4 | g2 bes4 | es2. | \break
    d4 d4 d4 | c4 bes4 c4 | \once \override Tie.stencil = ##f bes2.~ (| bes2) r4  \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaratuslimatiga_bes_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratuslimatiga_bes_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratuslimatiga_bes_music_solmisasi = \solmisasiMusic \gpmduaratuslimatiga_bes_music

gpmduaratuslimatiga_lyricOne = \lyricmode {
    Ku -- ber -- se -- rah, ku -- ber -- se -- rah,
    ke -- pa -- da -- Mu oh Tu -- han -- ku.
    Ku -- ber -- se -- rah, ku -- ber -- se -- rah,
    ke -- pa -- da -- Mu Tu -- han.

    Ku mau i -- kut Tu -- han Ye -- sus, 
    ku mau pi -- kul Sa -- lib Ye -- sus.
    Ye -- sus u -- bah -- lah hi -- dup -- ku,
    ku mau ber -- sa -- ma Ye -- sus.
}

gpmduaratuslimatiga_lyricTwo = \lyricmode {
  Ku ber -- do --a, ku ber -- do -- a, 
  ke -- pa -- da -- Mu oh Tu -- han -- ku.
  Ku ber -- do --a, ku ber -- do -- a, 
  ke -- pa -- da -- Mu Tu -- han.

  Ku mau se -- tia i -- kut Ye -- sus, 
  ku mau se -- tia ber -- sa -- ma -- Nya.
  Di se -- tiap lang -- kah hi -- dup -- ku, 
  ku mau ber -- sa -- ma Ye -- sus.
}