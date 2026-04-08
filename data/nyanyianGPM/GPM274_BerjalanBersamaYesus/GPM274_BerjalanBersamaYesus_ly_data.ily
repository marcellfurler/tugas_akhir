% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 274. Berjalan Bersama Yesus"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = F, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 2004"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaratustujuhempat_f_notes = {
  \key f \major
  \relative f'{
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

    r4 c4 f8 f4 c8 | f4 g4 a8 (bes8 a8 g8) | \break
    f4 \breathe c'8 c8 c2 | g8 a4 bes8 a2 | \break
    r4 c,4 f8 f4 c8 | f4 g4 a8 bes8 a8 g8 | \break
    f4 \breathe c'8 c8 c2 | g8 a4 g8 f2 | \break
    
    \repeat volta 2{
        r4 f8 f8 bes2 | d2. d4 | \break
        c4 bes4 c8 (bes8 c8)  a8~ | \once \override Tie.stencil = ##f (a1* 4/4~) ( |a4) \break 
        r8 c8 c8 bes8 bes8 a8 | a8 g8 r8 c8 c8 bes8 bes8 a8 | \break
        a8 g8 r8 c8 c8 bes8 bes8 a8 | a8 g4. \break
        
    }
    \alternative{
        {g8 g4 g8 g8 (f4) g8 a2 \breathe | bes2 (c2) \break }
        {g8 g4 g8 bes8 (a4) g8 g8 (\once \override Tie.stencil = ##f f4.~ | f1* 4/4)}
    }

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaratustujuhempat_f_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratustujuhempat_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratustujuhempat_f_music_solmisasi = \solmisasiMusic \gpmduaratustujuhempat_f_music

gpmduaratustujuhempat_lyricOne = \lyricmode {
    Ber -- ja -- lan ber -- sa -- ma Ye -- sus, ha -- ti -- ku a -- mat se -- nang.
    Wa -- lau -- pun di -- tan -- tang ba -- dai yang ken -- cang, di -- ri -- ku ti -- dak gen -- tar.
    Ki -- ta ja -- lan ber -- sa -- ma Ye -- sus, di -- ma -- na- ma -- na sa -- ja, si -- ang a -- tau -- pun ma -- lam,
    bi -- ar i -- blis meng -- ha -- lang,
    Ye -- sus ber -- sa -- ma -- ku oo.
    Ye -- sus ber -- sa -- ma -- ku.
}
