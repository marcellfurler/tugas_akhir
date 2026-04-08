% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 276. Di Hati Rasa Balisa"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 3/4,"
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

gpmduatujuhenam_d_notes = {
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

    fis4 e4 d4 | fis4 e4 d4 | a'2. | fis2 r4 | a4 b4 a4 | fis2 a4 | (g2 fis4) | e2 r4 | \break
    e4 e4. d8 | cis4 cis4 e4 |  g4 \slurDashed (g4  fis4) \slurSolid | e2 r4 | a4 a4 a4 | b4 a4 g4 | \once \override Tie.stencil = ##f fis2. ~ (| fis2) r4 \break
    fis4 e4 d4 | fis4 e4 d4 | a'2. | fis2 r4 | fis4 g4 gis4 | a2 a4 | b2. | g2 r4 | \break
    d'4 d4 d4 | cis2 b4 | a2. | fis2 r4 | a4 a4 a4 | g4 fis4 e4 | \once \override Tie.stencil = ##f d2.~ (| d2) r4 | \break

    % reef
    fis4 fis4 a4 | g2 b4 | a2. | fis2 r4 | d'4 d4 d4 | a4 a4 d4 | \once \override Tie.stencil = ##f cis2.~ (| cis2) r4 | \break
    g4 g4 a4 | g2 a4 | cis2. | b2 r4 | a4 a4 a4 | b4 a4 g4 | \once \override Tie.stencil = ##f fis2.~ (| fis2) fis4 | \break
    a2 b8 (a8) | fis2 a4 | b4 b4 b4 | d2 cis8 b8 | a2 a8 a8 | a4 g4 e4 | \once \override Tie.stencil = ##f d2.~ (| d2) r4 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduatujuhenam_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduatujuhenam_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduatujuhenam_d_music_solmisasi = \solmisasiMusic \gpmduatujuhenam_d_music


gpmduatujuhenam_lyricOne = \lyricmode {
  Di ha -- ti ra -- sa ba -- li -- sa, ba -- lan -- dong a -- er ma -- ta.
  Sa -- ki ra -- sa sam -- pe di jan -- tong co -- ba -- an hi -- dop i -- ni.
  Ma -- ngen -- te di ki -- ri ka -- nan, sa -- pa yang bi -- sa to -- long.
  Ta -- hang dal -- lam sang -- sa -- ra, ku -- at i -- man di da -- da.
}

gpmduatujuhenam_lyricTwo = \lyricmode {
  Di wak -- tu co -- ba -- an da -- tang sio ra -- sa a -- sing la -- wang.
  Ang -- ka ha -- ti min -- ta \set ignoreMelismata = ##t Tu -- han \set ignoreMelismata = ##f da -- tang mau se -- ka a -- er ma -- ta.
  Ha -- nya sa -- tu pa -- leng in -- dah peng -- hi -- bur da -- lam su -- sah.
  Ba -- gai in -- tan per -- ma -- ta Al -- lah yang Ma -- ha Kua __ sa.

}

gpmduatujuhenam_lyricReff = \lyricmode {
  Cu -- ma Tu -- han yang ta -- u, a -- pa yang be -- ta ra -- sa. 
  Cu -- ma Tu -- han yang ta -- u, a -- pa yang be -- ta min -- ta.
  De -- ngan Tu -- han, ge -- lap ja -- di t'rang, de -- ri -- ta ja -- di su -- ka -- ci -- ta.
}
