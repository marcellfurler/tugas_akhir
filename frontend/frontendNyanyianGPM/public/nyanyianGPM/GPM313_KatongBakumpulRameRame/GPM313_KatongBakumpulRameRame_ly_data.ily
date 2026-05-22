% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 313. Katong Bakumpul Rame-Rame"

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

gpmtigaratustigabelas_c_notes = {
  \key c \major
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

    r8 e'8 e'8 f'8 e'8 d'8 c'8 d'8 | e'8 e'4 d'8 c'4 r4 | f'8 f'8 a'8 a'8 g'4. f'8 | e'1* 4/4 | \break
    r4 e'8 e'8 e'8 d'8 c'8 d'8 | e'8 e'4 d'8 c'4 r4 | d'8 d'8 d'8 e'8 d'8 c'8 b8 c'8 | d'1* 4/4 | \break
    r8 e'8 e'8 f'8 e'8 d'8 c'8 d'8 | e'8 e'4 d'8 c'4 r4 | f'8 f'8 a'8 a'8 g'4. f'8 | e'1* 4/4 | \break 
    r4 e'8 e'8 e'8 d'8 c'8 d'8 | e'8 e'4 d'8 c'4 r4 | f'8 f'8 f'8 f'8 e'4. d'8 | c'1* 4/4 | \break

    r4 a'8 a'8 a'8 g'8 f'8 g'8 | a'8 a'4 g'8 f'4 r4 | c''8 c''8 c''8 c''8 b'4. a'8 | g'4. f'8 e'2 | \break  
    r4 a'8 a'8 a'8 g'8 f'8 g'8 | a'8 a'4 g'8 f'4 r4 | c''8 c''8 c''8 c''8 b'4. a'8 | g'4. f'8 e'2 | \break 
    r4 e'8 e'8 e'8 d'8 c'8 d'8 | e'8 e'4 d'8 c'4 r8 c'8 | d'8 d'8 f'8 f'8 e'4. d'8 | c'1 * 4/4

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmtigaratustigabelas_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmtigaratustigabelas_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmtigaratustigabelas_c_music_solmisasi = \solmisasiMusic \gpmtigaratustigabelas_c_music

gpmtigaratustigabelas_lyricOne = \lyricmode {
  Ka -- tong ba -- kum -- pul ra -- me- ra -- me a -- le li -- a ma -- nis la -- wang -- e.
  Hi -- dop sa -- ma a -- de  ka -- ka si -- o, sa -- tu ha -- ti sa -- tu jan -- tong -- e.
  Sa -- tu pung su -- sah la -- eng ban -- tu a -- le, sa -- ma- sa -- ma ra -- sa -- e.
  Ja -- ngan sim -- pan da -- lam ha -- ti si -- o, i -- tu Tu -- han pu -- nya mau.
}


gpmtigaratustigabelas_lyricReff = \lyricmode {
  Yang me -- na  -- bur de -- ngan a -- er ma -- ta me -- nu -- ai de -- ngan su -- ka -- ci -- ta.
  A -- sal ku -- at deng som -- ba -- yang min -- ta se -- la -- lu a -- da peng -- hi -- bu -- ran.
  Ma -- nu -- sia me -- nim -- bang da -- lam ha -- ti, pu -- tus -- an a -- da di Tu -- han.
}
