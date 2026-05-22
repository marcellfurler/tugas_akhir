% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 95. Bintang Di Timur"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 2/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 1994"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmsembilanpuluhlima_d_notes_pdf = {
  \repeat volta 2 {
    a'4 a'8 b'8 | a'4 fis'4 | b'4 b'8 b'8 | b'4 a'4 \breathe | \break
    a'4 a'8 b'8 | a'4 fis'4 | e'8 e'8 e'8 fis'8 | e'2 \breathe | \break
    a'4 a'8 b'8 | a'4 fis'4 | b'8 b'8 b'8 b'8 | d''2 \breathe | \break
    a'8 a'8 a'8 b'8 | a'8 fis'8 fis'8 e'8 | d'4 d'4 ( | d'4) r4 | \break
  }
}

gpmsembilanpuluhlima_d_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  a'4 a'8 b'8 | a'4 fis'4 | b'4 b'8 b'8 | b'4 a'4 \breathe | \break
  a'4 a'8 b'8 | a'4 fis'4 | e'8 e'8 e'8 fis'8 | e'2 \breathe | \break
  a'4 a'8 b'8 | a'4 fis'4 | b'8 b'8 b'8 b'8 | d''2 \breathe | \break
  a'8 a'8 a'8 b'8 | a'8 fis'8 fis'8 e'8 | d'4 d'4 ( | d'4) r4 | \break
 

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  a'4 a'8 b'8 | a'4 fis'4 | b'4 b'8 b'8 | b'4 a'4 \breathe | \break
  a'4 a'8 b'8 | a'4 fis'4 | e'8 e'8 e'8 fis'8 | e'2 \breathe | \break
  a'4 a'8 b'8 | a'4 fis'4 | b'8 b'8 b'8 b'8 | d''2 \breathe | \break
  a'8 a'8 a'8 b'8 | a'8 fis'8 fis'8 e'8 | d'4 d'4 ( | d'4) r4 | \break
  
}

gpmsembilanpuluhlima_d_notes =
#(if is-svg?
     #{ \gpmsembilanpuluhlima_d_notes_svg #}
     #{ \gpmsembilanpuluhlima_d_notes_pdf #})

gpmsembilanpuluhlima_d_music = {
  \time 2/4
  \key d \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmsembilanpuluhlima_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmsembilanpuluhlima_d_music_solmisasi = \solmisasiMusic \gpmsembilanpuluhlima_d_music

gpmsembilanpuluhlima_lyricOne = \lyricmode {
  Bin -- tang di Ti -- mur si -- nar -- nya te -- rang
  ja --  di pe -- nun -- tun lang -- kah hi -- dup -- ku. 
  Ki -- ta me -- nu -- ju kan -- dang Bet -- le -- hem, 
  Ye -- sus su -- dah la -- hir di pa -- lu -- ngan.
}

gpmsembilanpuluhlima_lyricTwo = \lyricmode {
  Ki -- ta me -- li -- hat bin -- tang yang be -- sar
  di pun -- cak po -- hon Na -- tal yang in -- dah.
  Ki -- ta me -- nyam -- bu Ye -- sus pe -- ne -- bus,
  di -- se -- ki -- tar bin -- tang yang ber -- ki -- lau.
}

gpmsembilanpuluhlima_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmsembilanpuluhlima_lyricOne
           \gpmsembilanpuluhlima_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmsembilanpuluhlima_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmsembilanpuluhlima_lyricTwo
         }
       >>
     #}
     )
