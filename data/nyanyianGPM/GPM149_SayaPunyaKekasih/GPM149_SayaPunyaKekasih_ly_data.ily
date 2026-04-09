% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 149. Saya Punya Kekasih"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Josia G. Jamlean"
      
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusempatsembilan_c_notes = {
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

    g'8 e'2 c''8 b'8 a'8 | g'8 e'2 \breathe a'8 g'8 e'8 | \break
    f'8 d'2 a'8 g'8 fis'8 | a'8 g'1* 5/8 r4 | \break
    g'8 e'2 c''8 b'8 a'8 | g'8 e'2 \breathe a'8 g'8 e'8 | \break
    f'8 d'4. f'8 f'8 e'8 d'8 | c'2 r4 b'8 c''8 | \break
    d''8 d''4 c''8 d''8 d''8 c''8 d''8 | e''8 e''8 e''8 d''8 c''4 r8 b'16 c''16 | \break
    d''8 d''8 d''8 (c''8) b'8 b'8 \tuplet 3/2 {c''8 b'8 a'8} | g'2 r4 b'8 c''8 | \break
    d''8 d''4 c''8 d''8 d''8 c''8 d''8 | e''8 e''8 e''8 d''8 c''4 r8 b'16 c''16 | \break
    d''8 d''8 d''8 c''8 b'8 b'8 c''8 d''8 | c''1* 4/4 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusempatsembilan_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusempatsembilan_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusempatsembilan_c_music_solmisasi = \solmisasiMusic \gpmseratusempatsembilan_c_music

gpmseratusempatsembilan_lyricOne = \lyricmode {
    Sa -- ya pu -- nya ke -- ka -- sih na -- ma -- Nya Ye -- sus,
    Ju -- ru S'la -- mat -- ku. 
    Sa -- ya pu -- nya ha -- ra -- pan. Dia a -- kan da -- tang un -- tuk men -- jem -- put. 
    Ba -- wa ma -- suk ke sur -- ga ru -- mah Ba -- pa yang ku -- dus 
    kar -- 'na ka -- sih -- Nya sung -- guh a -- mat a -- jaib 
    ba -- wa ma -- suk ke sur -- ga ru -- mah Ba -- pa yang ku -- dus.
    T'ri -- ma jan -- ji s'la -- mat hi -- dup yang ke -- kal.
}
