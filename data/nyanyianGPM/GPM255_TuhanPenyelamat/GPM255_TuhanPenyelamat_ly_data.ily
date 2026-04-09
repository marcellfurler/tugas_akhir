% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 255. Tuhan Penyelamat"

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
      \pad-x #1
      \column {
          "Lirik: Monica Pariela - Parera, 2009"
          "Lagu: Sonia C. Parera - Hummel, 2009"
      }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaratuslimalima_a_notes_pdf = {

  \repeat volta 2 {
    cis''8 e'8 a'8 cis''8 b'8 e'8 gis'8 b'8 | a'8 d'8 fis'8 a'8 g'2 | \break
    fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 e'8 | cis''4. d''16 ( cis''16) b'2 | \break
    cis''8 e'8 a'8 cis''8 b'8 e'8 gis'8 b'8 | a'8 d'8 fis'8 a'8 g'2 | \break
    fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 cis''8 | a'2. r4 | \break

    % reef
    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    cis''4. d''16 ( cis''16) b'2 | a'4. b'16 a'16 gis'2 | \break
    fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 e'8 | cis''2 ( b'2) | \break
    cis''4. d''16 ( cis''16) b'2 | a'4. b'16 ( a'16) gis'2 | \break
    fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 gis'8 | a'2. r4 | \break
  }
}

gpmduaratuslimalima_a_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  cis''8 e'8 a'8 cis''8 b'8 e'8 gis'8 b'8 | a'8 d'8 fis'8 a'8 g'2 | \break
  fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 e'8 | cis''4. d''16 ( cis''16) b'2 | \break
  cis''8 e'8 a'8 cis''8 b'8 e'8 gis'8 b'8 | a'8 d'8 fis'8 a'8 g'2 | \break
  fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 cis''8 | a'2. r4 | \break

  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  cis''4. d''16 ( cis''16) b'2 | a'4. b'16 a'16 gis'2 | \break
  fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 e'8 | cis''2 ( b'2) | \break
  cis''4. d''16 ( cis''16) b'2 | a'4. b'16 ( a'16) gis'2 | \break
  fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 gis'8 | a'2. r4 | \break

    \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  cis''8 e'8 a'8 cis''8 b'8 e'8 gis'8 b'8 | a'8 d'8 fis'8 a'8 g'2 | \break
  fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 e'8 | cis''4. d''16 ( cis''16) b'2 | \break
  cis''8 e'8 a'8 cis''8 b'8 e'8 gis'8 b'8 | a'8 d'8 fis'8 a'8 g'2 | \break
  fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 cis''8 | a'2. r4 | \break

  % reef
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  cis''4. d''16 ( cis''16) b'2 | a'4. b'16 a'16 gis'2 | \break
  fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 e'8 | cis''2 ( b'2) | \break
  cis''4. d''16 ( cis''16) b'2 | a'4. b'16 ( a'16) gis'2 | \break
  fis'8 d'8 fis'8 a'8 gis'8 a'8 b'8 gis'8 | a'2. r4 | \break
}

gpmduaratuslimalima_a_notes =
#(if is-svg?
     #{ \gpmduaratuslimalima_a_notes_svg #}
     #{ \gpmduaratuslimalima_a_notes_pdf #})

gpmduaratuslimalima_a_music = {
  \time 4/4
  \key a \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratuslimalima_a_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratuslimalima_a_music_solmisasi = \solmisasiMusic \gpmduaratuslimalima_a_music

gpmduaratuslimalima_lyricOne = \lyricmode {
    Tu -- han Pe -- nye -- la -- mat, Ra -- ja dan Jun -- ju -- ngan -- ku.
    Ja -- di -- kan a -- ku sak -- si se -- ti -- a -- Mu.
    Mem -- b'ri -- ta -- kan ke -- be -- na -- ran cin -- ta ka -- sih -- Mu, 
    yang t'lah se -- la -- mat -- kan ji -- wa -- ku.
}

gpmduaratuslimalima_lyricTwo = \lyricmode {
    Roh Ku -- dus ki -- ra -- nya me -- me -- nu -- hi ha -- ti -- ku.
    Ja -- di -- kan a -- ku sak -- si se -- ti -- a -- Mu.
    Un -- tuk me -- lak sa -- na -- kan a -- ma -- nat a -- gung -- Mu,
    ja -- di sak -- si ke -- be -- sa -- ran -- Mu.
}

gpmduaratuslimalima_lyricReff = \lyricmode {
    Tu -- han -- ku, Jun -- ju -- ngan -- ku. Ken -- da -- li -- kan s'lu -- ruh hi -- dup -- ku.
    Su -- pa -- ya kar -- ya -- ku s'la -- lu me -- mu -- lia -- kan na -- ma -- Mu.
}

gpmduaratuslimalima_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratuslimalima_lyricOne
           \gpmduaratuslimalima_lyricReff
           \gpmduaratuslimalima_lyricTwo
           \gpmduaratuslimalima_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratuslimalima_lyricOne
           \gpmduaratuslimalima_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratuslimalima_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmduaratuslimalima_lyricReff
         }
       >>
     #}
     )
