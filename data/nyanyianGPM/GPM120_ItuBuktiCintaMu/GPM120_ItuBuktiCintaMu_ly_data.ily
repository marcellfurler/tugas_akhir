% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 120. Itu Bukti Cinta Mu"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
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

gpmseratusduapuluh_d_notes = {
  \key d \major
  \relative d' 
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

    fis4. fis8 fis8 a8 d,8 e8 | fis2 r4 fis8 fis8 |  \slurDashed fis8 (e8) \slurSolid e2 e8 e8 | g4. fis8 fis4 r4 | \break
    fis4. fis8 fis8 a8 d,8 e8 | fis2 r4 fis8 fis | fis8 e8 e4 r4 cis8 e8 | e4. d8 d4 r4 | \break
    e4. e8 e8 a8 a8 e8 | g4. fis8 fis4 r4 | e4. e8 e8 a8 a8 a8 |  gis4 fis8 gis8 a4 r4 | \break
    fis4. fis8 fis8 a8 d,8 e8 | fis2 r4 fis8 fis | fis8 e8 e4 r4 cis8 e8 | e4. d8 d4 r4 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusduapuluh_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusduapuluh_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusduapuluh_d_music_solmisasi = \solmisasiMusic \gpmseratusduapuluh_d_music

gpmseratusduapuluh_lyricOne = \lyricmode {
  I -- tu buk -- ti cin -- ta -- Mu. Me -- ne -- ri -- ma sik -- sa -- an ke -- ji.
  Di cam -- buk dan di hi -- na, mah -- ko -- ta du -- ri, ju -- ga di -- ber -- ri.
  I -- tu kar' -- na do -- sa ku -- ju -- a, sam -- pai nya -- wa -- pun re -- la Kau be -- ri.
  Tu -- lus pe -- ngor -- ba -- nan -- Mu. Pa -- lang yang ka -- sar buk -- ti cin -- ta -- Mu.

}

gpmseratusduapuluh_lyricTwo = \lyricmode {
  Tak ter -- ni -- lai ka -- sih -- Mu, di  ka -- \set ignoreMelismata = ##t yu sa \set ignoreMelismata = ##f -- lib  sa -- kit -- Mu pe -- rih.
  Sa -- bar tia -- da me -- la -- wan ja -- lan sa -- lib -- Mu t'lah Kau ja -- la -- ni.
  I -- tu kar' -- na ke -- sa -- la -- han -- ku, sam -- pai nya -- wa -- pun re -- la Kau be -- ri.
  Su -- ci pe -- ngor -- ba -- nan -- Mu. Da -- rah ter -- cu -- rah buk -- ti cin -- ta -- Mu.
}
