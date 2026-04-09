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

gpmduaratuslimatiga_bes_notes_pdf = {
  \repeat volta 2 {
    d''4 d''4 d''4 | f''2. | g''4 g''4 g''4 | bes''2. | \break
    a''2 bes''4 | c'''2 a''4 | bes''4 a''4 g''4 | f''2 r4 | \break
    d''4 d''4 d''4 | f''2. | g''4 g''4 g''4 | bes''2. | \break
    a''2 bes''4 | c'''4 bes''4 a''4 | \once \override Tie.stencil = ##f bes''2.~ ( | bes''2) r4 | \break

      % reef
    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    d'''2 d'''4 | d'''4 c'''4 bes''4 | c'''2 a''4 | f''2. | \break 
    es'''2 es'''4 | es'''4 d'''4 c'''4 | d'''2 c'''4 | bes''2 r4 | \break
    d'''2 d'''4 | d'''4 c'''4 bes''4 | g''2 bes''4 | es'''2. | \break
    d'''4 d'''4 d'''4 | c'''4 bes''4 c'''4 | \once \override Tie.stencil = ##f bes''2.~ ( | bes''2) r4  \break
  }
}

gpmduaratuslimatiga_bes_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  d''4 d''4 d''4 | f''2. | g''4 g''4 g''4 | bes''2. | \break
  a''2 bes''4 | c'''2 a''4 | bes''4 a''4 g''4 | f''2 r4 | \break
  d''4 d''4 d''4 | f''2. | g''4 g''4 g''4 | bes''2. | \break
  a''2 bes''4 | c'''4 bes''4 a''4 | \once \override Tie.stencil = ##f bes''2.~ ( | bes''2) r4 | \break

    % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  d'''2 d'''4 | d'''4 c'''4 bes''4 | c'''2 a''4 | f''2. | \break 
  es'''2 es'''4 | es'''4 d'''4 c'''4 | d'''2 c'''4 | bes''2 r4 | \break
  d'''2 d'''4 | d'''4 c'''4 bes''4 | g''2 bes''4 | es'''2. | \break
  d'''4 d'''4 d'''4 | c'''4 bes''4 c'''4 | \once \override Tie.stencil = ##f bes''2.~ ( | bes''2) r4  \break
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  d''4 d''4 d''4 | f''2. | g''4 g''4 g''4 | bes''2. | \break
  a''2 bes''4 | c'''2 a''4 | bes''4 a''4 g''4 | f''2 r4 | \break
  d''4 d''4 d''4 | f''2. | g''4 g''4 g''4 | bes''2. | \break
  a''2 bes''4 | c'''4 bes''4 a''4 | \once \override Tie.stencil = ##f bes''2.~ ( | bes''2) r4 | \break

    % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  d'''2 d'''4 | d'''4 c'''4 bes''4 | c'''2 a''4 | f''2. | \break 
  es'''2 es'''4 | es'''4 d'''4 c'''4 | d'''2 c'''4 | bes''2 r4 | \break
  d'''2 d'''4 | d'''4 c'''4 bes''4 | g''2 bes''4 | es'''2. | \break
  d'''4 d'''4 d'''4 | c'''4 bes''4 c'''4 | \once \override Tie.stencil = ##f bes''2.~ ( | bes''2) r4  \break
  
}

gpmduaratuslimatiga_bes_notes =
#(if is-svg?
     #{ \gpmduaratuslimatiga_bes_notes_svg #}
     #{ \gpmduaratuslimatiga_bes_notes_pdf #})

gpmduaratuslimatiga_bes_music = {
  \time 4/4
  \key bes \major
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

gpmduaratuslimatiga_bes_lyricsAll = 
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratuslimatiga_lyricOne
           \gpmduaratuslimatiga_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratuslimatiga_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratuslimatiga_lyricTwo
         }
       >>
     #}
     )