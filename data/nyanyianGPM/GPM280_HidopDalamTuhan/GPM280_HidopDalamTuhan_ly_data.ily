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
  \relative c'{
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

    e8 e8 e8 e8 e8 e8 g8 g16 (f16) | e4. e16 (d16) e2 \breathe | \break
    d8 d8 d8 d8 e8 d8 c8 d8 | e4. f16 (e16) d4 r4 \breathe | \break
    e8 e8 e8 e8 e8 e8 g8 g16 (f16) | e4. e16 (d16) e2 \breathe | \break
    d8 d8 d8 d8 e8 d8 e8 e16 (d16) | c2. r4 | \break
    
    c'8 c8 c8 c8 c8 c8 c16 c16 c16 c16 | a8 a4 a16 g16 a2 \breathe | \break
    a8 a8 a8 a8 g8 g8 g8 a16 (g16) | g2. r4 | \break
    c8 c8 c8 c8 c8 c8 c16 c16 c16 c16 | a8 a4 a16 g16 a2 \breathe | \break
    a8 a8 a8 a8 g8 g8 g8 a16 (g16) | g2. r4 | \break
    e8 e8 e8 e8 e8 e8 g8 g16 (f16) | e4. e16 (d16) e2 \breathe | \break
    d8 d8 d8 d8 e8 d8 e8 e16 (d16) | c1* 4/4 | \break

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
