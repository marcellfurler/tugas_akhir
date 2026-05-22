% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 281. NamaMu Yesus"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = G, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
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

gpmduaratusdelapansatu_g_notes_pdf = {
  \repeat volta 2 {
    b'2 a'4 g'4 | d''2 b'4 r4 | g'8 g'8 g'8 a'8 b'4 a'8 g'8 | a'4 b'4 a'4 r4 | \break
    b'2 a'4 g'4 | d''2 b'4 r4 | g'8 g'8 g'8 a'8 b'4 c''8 b'8 | a'4 b'4 g'4 r4 | \break
    fis'8 e'8 fis'8 g'8 a'4 fis'4 | g'8 fis'8 g'8 a'8 b'4 g'4 | fis'8 e'8 fis'8 g'8 a'8 fis'8 e'8 d'8 | c''4. b'8 b'4 r4 | \break 
    fis'8 e'8 fis'8 g'8 a'4 fis'4 | g'8 fis'8 g'8 a'8 b'4 g'4 | a'8 a'8 a'8 b'8 a'8 g'8 fis'8 e'8 | d'2 d'4 r4 | \break
    b'2 a'4 g'4 | d''2 b'4 r4 | g'8 g'8 g'8 a'8 b'4 c''8 a'8 | g'4 fis'4 g'4 r4 | \break
  }
}

gpmduaratusdelapansatu_g_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  b'2 a'4 g'4 | d''2 b'4 r4 | g'8 g'8 g'8 a'8 b'4 a'8 g'8 | a'4 b'4 a'4 r4 | \break
  b'2 a'4 g'4 | d''2 b'4 r4 | g'8 g'8 g'8 a'8 b'4 c''8 b'8 | a'4 b'4 g'4 r4 | \break
  fis'8 e'8 fis'8 g'8 a'4 fis'4 | g'8 fis'8 g'8 a'8 b'4 g'4 | fis'8 e'8 fis'8 g'8 a'8 fis'8 e'8 d'8 | c''4. b'8 b'4 r4 | \break 
  fis'8 e'8 fis'8 g'8 a'4 fis'4 | g'8 fis'8 g'8 a'8 b'4 g'4 | a'8 a'8 a'8 b'8 a'8 g'8 fis'8 e'8 | d'2 d'4 r4 | \break
  b'2 a'4 g'4 | d''2 b'4 r4 | g'8 g'8 g'8 a'8 b'4 c''8 a'8 | g'4 fis'4 g'4 r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  b'2 a'4 g'4 | d''2 b'4 r4 | g'8 g'8 g'8 a'8 b'4 a'8 g'8 | a'4 b'4 a'4 r4 | \break
  b'2 a'4 g'4 | d''2 b'4 r4 | g'8 g'8 g'8 a'8 b'4 c''8 b'8 | a'4 b'4 g'4 r4 | \break
  fis'8 e'8 fis'8 g'8 a'4 fis'4 | g'8 fis'8 g'8 a'8 b'4 g'4 | fis'8 e'8 fis'8 g'8 a'8 fis'8 e'8 d'8 | c''4. b'8 b'4 r4 | \break 
  fis'8 e'8 fis'8 g'8 a'4 fis'4 | g'8 fis'8 g'8 a'8 b'4 g'4 | a'8 a'8 a'8 b'8 a'8 g'8 fis'8 e'8 | d'2 d'4 r4 | \break
  b'2 a'4 g'4 | d''2 b'4 r4 | g'8 g'8 g'8 a'8 b'4 c''8 a'8 | g'4 fis'4 g'4 r4 | \break
  
}

gpmduaratusdelapansatu_g_notes =
#(if is-svg?
     #{ \gpmduaratusdelapansatu_g_notes_svg #}
     #{ \gpmduaratusdelapansatu_g_notes_pdf #})

gpmduaratusdelapansatu_g_music = {
  \time 4/4
  \key g \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusdelapansatu_g_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusdelapansatu_g_music_solmisasi = \solmisasiMusic \gpmduaratusdelapansatu_g_music

gpmduaratusdelapansatu_lyricOne = \lyricmode {
    Na -- ma -- Mu Ye -- sus se -- la -- lu a -- da da -- lam ha -- ti -- ku.
    Ka -- sih -- Mu Ye -- sus se -- la -- lu a -- da da -- lam hi -- dup -- ku.
    Bi -- la ku ber -- ja -- lan da -- lam ke -- ge -- la -- pan, tia -- da ra -- sa ta -- kut kar -- 'na Kau de -- kat.
    Bi -- la ku di -- ha -- dang se -- ti -- ap go -- da -- an, sa -- yap ka -- sih -- Mu me -- lin -- du -- ngi -- ku.
    Da -- mai di -- ha -- ti, se -- la -- lu a -- da kar -- 'na cin -- ta -- Mu.
}

gpmduaratusdelapansatu_lyricTwo = \lyricmode {
    Ta -- ngan -- Mu Ye -- sus se -- la -- lu a -- da da -- lam bak -- ti -- ku.
    Ber -- kat -- Mu Ye -- sus se -- la -- lu a -- da da -- lam lum -- bung -- ku.
    Bah -- t'ra -- ku me -- la -- ju me -- nan -- tang ge -- lom -- bang, me -- nu -- ju ne -- g'ri yang Eng -- kau jan -- ji -- kan.
    Ber -- kat -- Mu me -- nga -- lir ba -- gai ma -- ta a -- ir, me -- nye -- gar -- kan se -- lu -- ruh hi -- dup -- ku.
    Da -- mai se -- jah -- t'ra, se -- la -- lu a -- da kar -- 'na ka -- sih -- Mu.
}

gpmduaratusdelapansatu_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratusdelapansatu_lyricOne
           \gpmduaratusdelapansatu_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratusdelapansatu_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratusdelapansatu_lyricTwo
         }
       >>
     #}
     )