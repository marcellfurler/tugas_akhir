% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 280. Hidop Dalam Tuhan"

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
      \caps "John F. Beay"
        ", 2009"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaratusdelapanpuluh_c_notes = {
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

    e'8 e'8 e'8 e'8 e'8 e'8 g'8 g'16 ( f'16) | e'4. e'16 ( d'16) e'2 \breathe | \break
    d'8 d'8 d'8 d'8 e'8 d'8 c'8 d'8 | e'4. f'16 ( e'16) d'4 r4 \breathe | \break
    e'8 e'8 e'8 e'8 e'8 e'8 g'8 g'16 ( f'16) | e'4. e'16 ( d'16) e'2 \breathe | \break
    d'8 d'8 d'8 d'8 e'8 d'8 e'8 e'16 ( d'16) | c'2. r4 | \break
    
    c''8 c''8 c''8 c''8 c''8 c''8 c''16 c''16 c''16 c''16 | a'8 a'4 a'16 g'16 a'2 \breathe | \break
    a'8 a'8 a'8 a'8 g'8 g'8 g'8 a'16 ( g'16) | g'2. r4 | \break
    c''8 c''8 c''8 c''8 c''8 c''8 c''16 c''16 c''16 c''16 | a'8 a'4 a'16 g'16 a'2 \breathe | \break
    a'8 a'8 a'8 a'8 g'8 g'8 g'8 a'16 ( g'16) | g'2. r4 | \break
    e'8 e'8 e'8 e'8 e'8 e'8 g'8 g'16 ( f'16) | e'4. e'16 ( d'16) e'2 \breathe | \break
    d'8 d'8 d'8 d'8 e'8 d'8 e'8 e'16 ( d'16) | c'1* 4/4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaratusdelapanpuluh_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusdelapanpuluh_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusdelapanpuluh_c_music_solmisasi = \solmisasiMusic \gpmduaratusdelapanpuluh_c_music

gpmduaratusdelapanpuluh_lyricOne = \lyricmode {
    Hi -- dop da -- lam Tu -- han pa -- leng ma -- nis e, 
    sa -- tu ha -- ti sa -- tu ra -- sa gan -- dong e.
    Su -- sah deng sa -- nang sio sa -- ma ra -- sa e,
    i -- nga jan -- ji Tu -- han, gan -- dong e.
}

gpmduaratusdelapanpuluh_lyricReff = \lyricmode {
    Da -- lam su -- sah ja -- ngan lu -- pa jan -- ji Tu -- han, gan -- dong e,
    ma -- ri pe -- gang ta -- ngan ma -- nis e.
    Ja -- ngan bu -- ang mu -- ka da -- ri ba -- su -- da -- ra gan -- dong e,
    i -- nga jan -- ji Tu -- han ma -- nis e.
    Ma -- ri ba -- ngong hi -- dop sa -- ma- sa -- ma e,
    sa -- tu ha -- ti, sa -- tu jan -- tong e. 
}
