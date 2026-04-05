% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 169. Kami Bawa Persembahan"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Alex Titawanno"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusenamsembilan_d_notes = {
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

    \partial 4 a8 a8 | fis'4 fis4e8 d8 e8 fis8 | a4 a4. \breathe fis8 \break
    g8 a8 | b4 b8. a16 b8 a8 | g8 fis8 | fis4 e4. \breathe e8 \break
    e8 fis8 | g4 g8. fis16 \slurDashed ( g8 fis8) \slurSolid e8 d8 | fis4 e4. cis8 \break
    d8 e8 | fis4 a8. a16 a8 a8 g8 e8 | d4 d2 \bar "||"  \break

    % reef
    ^\markup { \italic \bold "Refrein" } r8 d8 | e4 e8. e16 fis8 e8 d8 e8 | fis4 a2 \break
    r8 fis8 e4 e8. e16 fis8 e8 d8 e8 | fis4 fis2 \break
    r8 d8 | e4 e8. e16 fis8 e8 d8 e8 | fis4 a2 \break
    r8 fis8 | e4 e8. e16 fis8 e8 d8 cis8 | d4 d4 r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusenamsembilan_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenamsembilan_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenamsembilan_d_music_solmisasi = \solmisasiMusic \gpmseratusenamsembilan_d_music

gpmseratusenamsembilan_lyricOne = \lyricmode {
    Ka -- mi ba -- wa per -- sem -- ba -- han i -- ni dan s'lu -- ruh hi -- dup di ka -- ki sa -- lib Tu -- han.
    kar' -- na Eng -- kau per -- sem -- bah -- an yang A -- gung,
    Tu -- lus dan su -- ci, Pe -- ne -- bus do -- sa du -- nia. 
}

gpmseratusenamsembilan_lyricTwo = \lyricmode {
    A -- pa ar -- ti hi -- dup ka -- mi i -- ni ji -- ka ber -- ja -- lan tan -- pa per -- to -- lo -- ngan -- Mu.
    Bi -- la co -- ba -- an \set ignoreMelismata = ##t da -- tang \set ignoreMelismata = ##f si -- lih ber -- gan -- ti, ha -- nya Tu -- han -- lah san -- da -- ran ba -- gi ka -- mi.
}

gpmseratusenamsembilan_lyricReff = \lyricmode {
    Te -- ri -- ma -- lah Tu -- han hi -- dup ka -- mi,
    Te -- ri -- ma -- lah Tu -- han cin -- ta ka -- mi.
    Te -- ri -- ma -- lah per -- sem -- ba -- han ka -- mi,
    ba -- gi pe -- la -- ya -- nan -- Mu di -- du -- nia.
}
