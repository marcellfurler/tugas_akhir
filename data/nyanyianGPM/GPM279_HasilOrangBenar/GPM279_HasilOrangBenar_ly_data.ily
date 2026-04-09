% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 279. Hasil Orang Benar"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = A, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
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

gpmduaratustujuhsembilan_a_notes_pdf = {
  \repeat volta 2 {
    cis''4 cis''4 d''8 cis''4 b'8 | a'2 r4 a'8 a'8 | \break
    a'4. a'8 a'8 a'8 gis'8 a'8 | b'2 r4 cis''8 cis''8 | \break
    cis''4. cis''8 b'4 a'4 | fis'2 r4 a'8 fis' | \break
    e'4. a'8 gis'4 b'4 | a'2. r4 | \break
    b'8 b'8 b'8 b'8 b'8 a'8 gis'8 fis'8 | e'4 a'4 a'4 r8 cis''8 | \break
    b'8 b'8 b'8 b'8 b'8 gis'8 a'8 b'8 | cis''2 r4 a'8 gis'8 | \break
    fis'8 fis'8 fis'8 a'8 d''8 d''8 cis''8 b'8 | a'4 e'4 r4 b'8 a'8 | \break
    gis'8 gis'4 gis'8 a'8 gis'8 fis'8 gis'8 | a'2. r4 | \break
  }
}

gpmduaratustujuhsembilan_a_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  cis''4 cis''4 d''8 cis''4 b'8 | a'2 r4 a'8 a'8 | \break
  a'4. a'8 a'8 a'8 gis'8 a'8 | b'2 r4 cis''8 cis''8 | \break
  cis''4. cis''8 b'4 a'4 | fis'2 r4 a'8 fis' | \break
  e'4. a'8 gis'4 b'4 | a'2. r4 | \break
  b'8 b'8 b'8 b'8 b'8 a'8 gis'8 fis'8 | e'4 a'4 a'4 r8 cis''8 | \break
  b'8 b'8 b'8 b'8 b'8 gis'8 a'8 b'8 | cis''2 r4 a'8 gis'8 | \break
  fis'8 fis'8 fis'8 a'8 d''8 d''8 cis''8 b'8 | a'4 e'4 r4 b'8 a'8 | \break
  gis'8 gis'4 gis'8 a'8 gis'8 fis'8 gis'8 | a'2. r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  cis''4 cis''4 d''8 cis''4 b'8 | a'2 r4 a'8 a'8 | \break
  a'4. a'8 a'8 a'8 gis'8 a'8 | b'2 r4 cis''8 cis''8 | \break
  cis''4. cis''8 b'4 a'4 | fis'2 r4 a'8 fis' | \break
  e'4. a'8 gis'4 b'4 | a'2. r4 | \break
  b'8 b'8 b'8 b'8 b'8 a'8 gis'8 fis'8 | e'4 a'4 a'4 r8 cis''8 | \break
  b'8 b'8 b'8 b'8 b'8 gis'8 a'8 b'8 | cis''2 r4 a'8 gis'8 | \break
  fis'8 fis'8 fis'8 a'8 d''8 d''8 cis''8 b'8 | a'4 e'4 r4 b'8 a'8 | \break
  gis'8 gis'4 gis'8 a'8 gis'8 fis'8 gis'8 | a'2. r4 | \break
}

gpmduaratustujuhsembilan_a_notes =
#(if is-svg?
     #{ \gpmduaratustujuhsembilan_a_notes_svg #}
     #{ \gpmduaratustujuhsembilan_a_notes_pdf #})

gpmduaratustujuhsembilan_a_music = {
  \time 4/4
  \key a \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratustujuhsembilan_a_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratustujuhsembilan_a_music_solmisasi = \solmisasiMusic \gpmduaratustujuhsembilan_a_music

gpmduaratustujuhsembilan_lyricOne = \lyricmode {
    Ha -- sil o -- rang be -- nar a -- da -- lah po -- hon ke -- hi -- du -- pan
    dan si -- a -- pa yang bi -- jak me -- ngam -- bil ha -- ti o -- rang.
    Ha -- ti yang te -- nang me -- nye -- gar -- kan tu -- buh, i -- ri ha -- ti mem -- bu -- suk -- kan tu -- lang.
    Ma -- ta Tu -- han a -- da di se -- ga -- la tem -- pat me -- nga -- wa  -- si yang ja -- hat dan ba -- ik.
}

gpmduaratustujuhsembilan_lyricTwo = \lyricmode {
    Ha -- sil o -- rang be -- nar a -- da -- lah sum -- ber ke -- hi -- du -- pan
    dan si -- a -- pa yang bi -- jak me -- nu -- ai ke -- ka -- ya -- an. 
    Ha -- ti me -- nge -- nal pe -- dih -- nya sen -- di -- ri o -- rang la -- in 'tak me -- ra -- sa -- kan -- nya.
    Ma -- ta yang ber -- si -- nar me -- nye -- gar -- kan ha -- ti ka -- bar ba -- ik me -- nye -- gar -- kan tu -- lang.
}

gpmduaratustujuhsembilan_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratustujuhsembilan_lyricOne
           \gpmduaratustujuhsembilan_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratustujuhsembilan_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratustujuhsembilan_lyricTwo
         }
       >>
     #}
     )