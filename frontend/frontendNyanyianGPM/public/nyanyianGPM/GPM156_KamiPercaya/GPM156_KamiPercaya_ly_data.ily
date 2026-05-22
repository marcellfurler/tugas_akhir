% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 156. Kami Percaya"

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
    \column {
        \line { Lirik: \caps "Fery Nahusona" }
        \line { Lagu: \caps "Semi Toisuta" }
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratuslimaenam_f_notes = {
  \key f \major
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

    c'4 d'8 f'8 a'8 a'8 g'8 a'8 | g'8 f'8 f'8 ( d'8) f'4 \breathe d'8 d'8 | d'4 d'8 f'8  g'4 f'8 g'8 | \break
    a'8 g'8 f'8 ( g'8) a'2 | r8 d'8 d'8 f'8 g'4 f'8 g'8 | a'8 g'8 f'8 ( d'8) d'2 | \break 
    c''4 c''8 c''8 d''8 ( c''8) c''4 | a'8 a'8 a'8 a'8 g'8 f'8 f'8 d'8 | f'8 ( d'8) d'2  d'8 f'8 | 
    a'8 g'8 f'8 f'8 d'4 d'8 f'8 | g'2 r4 d'8 f'8 | g'8 g'8 g'8 f'8 d'4 d'8 f'8 | \break
    g'2 r8 c''8 c''8 c''8 | d''8 ( c''8) c''4 a'8 g'8 a'8 c''8 | a'2 d''8 d''8 d''8 d''8 |  \break
    d''4. d''8 c''8 a'8 a'8 c''8 | c''2 r8 d''8 d''8 d''8 | d''8 d''2 c''8 a'8 c''8 | \break
    d''8 d''4. r8 a'8 g'8 a'8 | c''8 a'4 a'8 g'8 ( f'8) d'8 d'8 | d'1* 3/4 r4 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratuslimaenam_f_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratuslimaenam_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratuslimaenam_f_music_solmisasi = \solmisasiMusic \gpmseratuslimaenam_f_music

gpmseratuslimaenam_lyricOne = \lyricmode {
    Ka -- mi per -- ca -- ya Al -- lah u -- tus Ye -- sus,
    A -- nak -- Nya ba -- wa ka -- sih ke -- pa -- da di -- nia, 
    dan ba -- wa du -- nia ke -- pa -- da ka -- sih.
    Ka -- mi per -- ca -- ya Tu -- han Ye -- sus 
    yang mem -- bu -- ka ja -- lan pen -- da -- mai -- an ba -- gi yang di te -- bus,
    dan di -- an -- ta -- ra s'ga -- la cip -- ta -- an.
    Ka -- mi per -- ca -- ya pa -- da Roh Ku -- dus yang meng -- hi -- dup -- kan se -- i -- si du -- ni -- a
    me -- no -- long ka -- mi un -- tuk ber -- kar -- ya hi -- dup yang ba -- ru te -- rus me -- ne -- rus. 
}
