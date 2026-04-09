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

gpmseratusduapuluh_d_notes_pdf = {
  \repeat volta 2 {
    fis'4. fis'8 fis'8 a'8 d'8 e'8 | fis'2 r4 fis'8 fis'8 | \phrasingSlurDashed fis'8\( e'8\) \phrasingSlurSolid e'2 e'8 e'8 | g'4. fis'8 fis'4 r4 | \break
    fis'4. fis'8 fis'8 a'8 d'8 e'8 | fis'2 r4 fis'8 fis'8 | fis'8 e'8 e'4 r4 cis'8 e'8 | e'4. d'8 d'4 r4 | \break
    e'4. e'8 e'8 a'8 a'8 e'8 | g'4. fis'8 fis'4 r4 | e'4. e'8 e'8 a'8 a'8 a'8 |  gis'4 fis'8 gis'8 a'4 r4 | \break
    fis'4. fis'8 fis'8 a'8 d'8 e'8 | fis'2 r4 fis'8 fis' | fis'8 e'8 e'4 r4 cis'8 e'8 | e'4. d'8 d'4 r4 |
  }
}

gpmseratusduapuluh_d_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  fis'4. fis'8 fis'8 a'8 d'8 e'8 | fis'2 r4 fis'8 fis'8 | \phrasingSlurDashed fis'8\( e'8\) \phrasingSlurSolid e'2 e'8 e'8 | g'4. fis'8 fis'4 r4 | \break
  fis'4. fis'8 fis'8 a'8 d'8 e'8 | fis'2 r4 fis'8 fis'8 | fis'8 e'8 e'4 r4 cis'8 e'8 | e'4. d'8 d'4 r4 | \break
  e'4. e'8 e'8 a'8 a'8 e'8 | g'4. fis'8 fis'4 r4 | e'4. e'8 e'8 a'8 a'8 a'8 |  gis'4 fis'8 gis'8 a'4 r4 | \break
  fis'4. fis'8 fis'8 a'8 d'8 e'8 | fis'2 r4 fis'8 fis' | fis'8 e'8 e'4 r4 cis'8 e'8 | e'4. d'8 d'4 r4 |

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  fis'4. fis'8 fis'8 a'8 d'8 e'8 | fis'2 r4 fis'8 fis'8 | \phrasingSlurDashed fis'8\( e'8\) \phrasingSlurSolid e'2 e'8 e'8 | g'4. fis'8 fis'4 r4 | \break
  fis'4. fis'8 fis'8 a'8 d'8 e'8 | fis'2 r4 fis'8 fis'8 | fis'8 e'8 e'4 r4 cis'8 e'8 | e'4. d'8 d'4 r4 | \break
  e'4. e'8 e'8 a'8 a'8 e'8 | g'4. fis'8 fis'4 r4 | e'4. e'8 e'8 a'8 a'8 a'8 |  gis'4 fis'8 gis'8 a'4 r4 | \break
  fis'4. fis'8 fis'8 a'8 d'8 e'8 | fis'2 r4 fis'8 fis' | fis'8 e'8 e'4 r4 cis'8 e'8 | e'4. d'8 d'4 r4 |
}

gpmseratusduapuluh_d_notes =
#(if is-svg?
     #{ \gpmseratusduapuluh_d_notes_svg #}
     #{ \gpmseratusduapuluh_d_notes_pdf #})

gpmseratusduapuluh_d_music = {
  \time 4/4
  \key d \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusduapuluh_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusduapuluh_d_music_solmisasi = \solmisasiMusic \gpmseratusduapuluh_d_music

gpmseratusduapuluh_lyricOne = \lyricmode {
  I -- tu buk -- ti cin -- ta -- Mu. Me -- ne -- ri -- _ ma sik -- sa -- an ke -- ji.
  Di cam -- buk dan di hi -- na, mah -- ko -- ta du -- ri, ju -- ga di -- be -- ri.
  I -- tu kar' -- na do -- sa ku -- ju -- a, sam -- pai nya -- wa -- pun re -- la Kau be -- ri.
  Tu -- lus pe -- ngor -- ba -- nan -- Mu. Pa -- lang yang ka -- sar buk -- ti cin -- ta -- Mu.

}

gpmseratusduapuluh_lyricTwo = \lyricmode {
  Tak ter -- ni -- lai ka -- sih -- Mu, di  ka -- \set ignoreMelismata = ##t yu sa \set ignoreMelismata = ##f -- lib  sa -- kit -- Mu pe -- rih.
  Sa -- bar tia -- da me -- la -- wan ja -- lan sa -- lib -- Mu t'lah Kau ja -- la -- ni.
  I -- tu kar' -- na ke -- sa -- la -- han -- ku, sam -- pai nya -- wa -- pun re -- la Kau be -- ri.
  Su -- ci pe -- ngor -- ba -- nan -- Mu. Da -- rah ter -- cu -- rah buk -- ti cin -- ta -- Mu.
}


gpmseratusduapuluh_lyricAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusduapuluh_lyricOne
           \gpmseratusduapuluh_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusduapuluh_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusduapuluh_lyricTwo
         }
       >>
     #}
     )