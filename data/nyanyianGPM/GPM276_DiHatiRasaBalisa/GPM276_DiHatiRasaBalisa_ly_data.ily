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

gpmduatujuhenam_d_notes_pdf = {
  \repeat volta 2 {
    fis'4 e'4 d'4 | fis'4 e'4 d'4 | a'2. | fis'2 r4 | a'4 b'4 a'4 | fis'2 a'4 | g'2 ( fis'4) | e'2 r4 | \break
    e'4 e'4. d'8 | cis'4 cis'4 e'4 |  g'4 \phrasingSlurDashed g'4\( fis'4\) \phrasingSlurHalfSolid | e'2 r4 | a'4 a'4 a'4 | b'4 a'4 g'4 | \once \override Tie.stencil = ##f fis'2. ~ ( | fis'2) r4 \break
    fis'4 e'4 d'4 | fis'4 e'4 d'4 | a'2. | fis'2 r4 | fis'4 g'4 gis'4 | a'2 a'4 | b'2. | g'2 r4 | \break
    d''4 d''4 d''4 | cis''2 b'4 | a'2. | fis'2 r4 | a'4 a'4 a'4 | g'4 fis'4 e'4 | \once \override Tie.stencil = ##f d'2.~ ( | d'2) r4 | \break

    % reef
    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    fis'4 fis'4 a'4 | g'2 b'4 | a'2. | fis'2 r4 | d''4 d''4 d''4 | a'4 a'4 d''4 | \once \override Tie.stencil = ##f cis''2.~ ( | cis''2) r4 | \break
    g'4 g'4 a'4 | g'2 a'4 | cis''2. | b'2 r4 | a'4 a'4 a'4 | b'4 a'4 g'4 | \once \override Tie.stencil = ##f fis'2.~ ( | fis'2) fis'4 | \break
    a'2 b'8 ( a'8) | fis'2 a'4 | b'4 b'4 b'4 | d''2 cis''8 b'8 | a'2 a'8 a'8 | a'4 g'4 e'4 | \once \override Tie.stencil = ##f d'2.~ ( | d'2) r4 |
  }
}

gpmduatujuhenam_d_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  fis'4 e'4 d'4 | fis'4 e'4 d'4 | a'2. | fis'2 r4 | a'4 b'4 a'4 | fis'2 a'4 | g'2 ( fis'4) | e'2 r4 | \break
  e'4 e'4. d'8 | cis'4 cis'4 e'4 |  g'4 \phrasingSlurDashed g'4\( fis'4\) \phrasingSlurHalfSolid | e'2 r4 | a'4 a'4 a'4 | b'4 a'4 g'4 | fis'2.~ \once \override Tie.stencil = ##f \once \override Slur.stencil = #ly:slur::print | fis'2 r4 \break
  fis'4 e'4 d'4 | fis'4 e'4 d'4 | a'2. | fis'2 r4 | fis'4 g'4 gis'4 | a'2 a'4 | b'2. | g'2 r4 | \break
  d''4 d''4 d''4 | cis''2 b'4 | a'2. | fis'2 r4 | a'4 a'4 a'4 | g'4 fis'4 e'4 | \once \override Tie.stencil = ##f d'2.~ ( | d'2) r4 | \break

  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  fis'4 fis'4 a'4 | g'2 b'4 | a'2. | fis'2 r4 | d''4 d''4 d''4 | a'4 a'4 d''4 | \once \override Tie.stencil = ##f cis''2.~ ( | cis''2) r4 | \break
  g'4 g'4 a'4 | g'2 a'4 | cis''2. | b'2 r4 | a'4 a'4 a'4 | b'4 a'4 g'4 | \once \override Tie.stencil = ##f fis'2.~ ( | fis'2) fis'4 | \break
  a'2 b'8 ( a'8) | fis'2 a'4 | b'4 b'4 b'4 | d''2 cis''8 b'8 | a'2 a'8 a'8 | a'4 g'4 e'4 | \once \override Tie.stencil = ##f d'2.~ ( | d'2) r4 |

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  fis'4 e'4 d'4 | fis'4 e'4 d'4 | a'2. | fis'2 r4 | a'4 b'4 a'4 | fis'2 a'4 | g'2 ( fis'4) | e'2 r4 | \break
  e'4 e'4. d'8 | cis'4 cis'4 e'4 |  g'4 \phrasingSlurDashed g'4\( fis'4\) \phrasingSlurHalfSolid | e'2 r4 | a'4 a'4 a'4 | b'4 a'4 g'4 | \once \override Tie.stencil = ##f fis'2. ~ ( | fis'2) r4 \break
  fis'4 e'4 d'4 | fis'4 e'4 d'4 | a'2. | fis'2 r4 | fis'4 g'4 gis'4 | a'2 a'4 | b'2. | g'2 r4 | \break
  d''4 d''4 d''4 | cis''2 b'4 | a'2. | fis'2 r4 | a'4 a'4 a'4 | g'4 fis'4 e'4 | \once \override Tie.stencil = ##f d'2.~ ( | d'2) r4 | \break

  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  fis'4 fis'4 a'4 | g'2 b'4 | a'2. | fis'2 r4 | d''4 d''4 d''4 | a'4 a'4 d''4 | \once \override Tie.stencil = ##f cis''2.~ ( | cis''2) r4 | \break
  g'4 g'4 a'4 | g'2 a'4 | cis''2. | b'2 r4 | a'4 a'4 a'4 | b'4 a'4 g'4 | \once \override Tie.stencil = ##f fis'2.~ ( | fis'2) fis'4 | \break
  a'2 b'8 ( a'8) | fis'2 a'4 | b'4 b'4 b'4 | d''2 cis''8 b'8 | a'2 a'8 a'8 | a'4 g'4 e'4 | \once \override Tie.stencil = ##f d'2.~ ( | d'2) r4 |
}

gpmduatujuhenam_d_notes =
#(if is-svg?
     #{ \gpmduatujuhenam_d_notes_svg #}
     #{ \gpmduatujuhenam_d_notes_pdf #})

gpmduatujuhenam_d_music = {
  \time 3/4
  \key d \major
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
  Sa -- ki ra -- sa sam -- pe di jan -- _ tong co -- ba -- an hi -- dop i -- ni.
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

gpmduatujuhenam_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduatujuhenam_lyricOne
           \gpmduatujuhenam_lyricReff
           \gpmduatujuhenam_lyricTwo
           \gpmduatujuhenam_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduatujuhenam_lyricOne
           \gpmduatujuhenam_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduatujuhenam_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmduatujuhenam_lyricReff
         }
       >>
     #}
     )
