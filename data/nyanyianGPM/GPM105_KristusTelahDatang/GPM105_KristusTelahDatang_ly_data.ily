% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 105. Kristus T'lah Datang"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = E, 2/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Wendy Papilaya"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratuslima_e_notes_pdf = {
  \repeat volta 2 {
    gis'8 gis'8 gis'8 fis'8 | e'4 e'8 e'8 | e'8 fis'8 e'8 cis'8 | b2 | \break
    e'4 e'4 | e'8 e'8 dis'8 e'8 | fis'2 | \break
    r4 b8 b8 | gis'4 gis'8 fis'8 | e'2 | e'8 fis'8 e'8 cis'8 | \break 
    b4 \breathe e'8 fis'8 | gis'8 gis'8 gis'8 b'8 | a'8 gis'8 fis'8 gis'8 | e'2 | \break

    \mark \markup { \italic "Refrain" } r4 gis'8 a'8 | b'4 b'4 | b'4 b'8 b'8 | cis''8 b'8 a'8 gis'8 a'4 | fis'8 gis'8 | \break
    a'4 a'4 | a'4 a'8 a'8 | a'8 b'8 a'8 fis'8 | gis'4 a'4 |  \break
    gis'4 e'4 | dis'4 fis'4 | \once \override Tie.stencil = ##f e'2~ ( | e'4) r4 | \break
  }
}

gpmseratuslima_e_notes_svg = {
  \section
  \tweak X-offset #1 
  \sectionLabel \markup\smaller\bold "Bait 1"
  gis'8 gis'8 gis'8 fis'8 | e'4 e'8 e'8 | e'8 fis'8 e'8 cis'8 | b2 | \break
  e'4 e'4 | e'8 e'8 dis'8 e'8 | fis'2 | \break
  r4 b8 b8 | gis'4 gis'8 fis'8 | e'2 | e'8 fis'8 e'8 cis'8 | \break 
  b4 \breathe e'8 fis'8 | gis'8 gis'8 gis'8 b'8 | a'8 gis'8 fis'8 gis'8 | e'2 | \break

  \mark \markup { \italic "Refrain" } r4 gis'8 a'8 | b'4 b'4 | b'4 b'8 b'8 | cis''8 b'8 a'8 gis'8 a'4 | fis'8 gis'8 | \break
  a'4 a'4 | a'4 a'8 a'8 | a'8 b'8 a'8 fis'8 | gis'4 a'4 |  \break
  gis'4 e'4 | dis'4 fis'4 | \once \override Tie.stencil = ##f e'2~ ( | e'4) r4 | \break

  \section
  \tweak X-offset #1 
  \sectionLabel \markup\smaller\bold "Bait 2"
  gis'8 gis'8 gis'8 fis'8 | e'4 e'8 e'8 | e'8 fis'8 e'8 cis'8 | b2 | \break
  e'4 e'4 | e'8 e'8 dis'8 e'8 | fis'2 | \break
  r4 b8 b8 | gis'4 gis'8 fis'8 | e'2 | e'8 fis'8 e'8 cis'8 | \break 
  b4 \breathe e'8 fis'8 | gis'8 gis'8 gis'8 b'8 | a'8 gis'8 fis'8 gis'8 | e'2 | \break

  \mark \markup { \italic "Refrain" } r4 gis'8 a'8 | b'4 b'4 | b'4 b'8 b'8 | cis''8 b'8 a'8 gis'8 a'4 | fis'8 gis'8 | \break
  a'4 a'4 | a'4 a'8 a'8 | a'8 b'8 a'8 fis'8 | gis'4 a'4 |  \break
  gis'4 e'4 | dis'4 fis'4 | \once \override Tie.stencil = ##f e'2~ ( | e'4) r4 | \break
}

gpmseratuslima_e_notes =
#(if is-svg?
     #{ \gpmseratuslima_e_notes_svg #}
     #{ \gpmseratuslima_e_notes_pdf #})


gpmseratuslima_e_music = {
  \time 2/4
  \key e \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratuslima_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratuslima_e_music_solmisasi = \solmisasiMusic \gpmseratuslima_e_music

gpmseratuslima_lyricOne = \lyricmode {
  Kris -- tus t'lah da -- tang ma -- nu -- sia sem -- bah Di -- a dan ber -- su -- ka -- ci -- ta -- lah.
  Nya -- nyi dan so -- rak -- lah, pu -- ji na -- ma -- Nya t'lah da -- tang pe -- ne -- bus do -- sa ma -- nu -- sia.
}

gpmseratuslima_lyricTwo = \lyricmode {
  Kris -- tus t'lah da -- tang ge -- nap -- lah Fir -- man Tu -- han yang te -- lah di -- jan -- ji -- kan.
  Ma -- ri -- lah sam -- but Dia, pu -- ji na -- ma -- Nya Sang Pe -- ne -- bus Ju -- ru S'la -- mat du -- ni -- a.
}

gpmseratuslima_lyricReff = \lyricmode {
  Di -- a -- lah Ra -- ja a -- tas se -- ga -- la ra -- ja yang ber -- ku -- a -- sa di -- bu -- mi dan di -- sor -- ga
  se -- la -- ma- la -- ma -- nya
}

gpmseratuslima_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratuslima_lyricOne
           \gpmseratuslima_lyricReff
           \gpmseratuslima_lyricTwo
           \gpmseratuslima_lyricReff

         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratuslima_lyricOne
           \gpmseratuslima_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratuslima_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmseratuslima_lyricReff
         }

       >>
     #}
     )