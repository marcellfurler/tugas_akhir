% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 162. Yesus Kristus Adalah Tuhan"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = F, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "P. J. Ferdinandus"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusenamdua_f_notes_pdf = {
  \repeat volta 2 {
    d'8 d'8 d'8 e'8 f'8 e'8 d'4 | a'4 a'4 r8 a'8 a'8 a'8 | \break
    bes'4 bes'4 r8 g'8 g'8 g'8 | a'4 a'2 \breathe f'8 f'8 | \break
    g'8 g'8 r8 g'8 f'8 f'8 e'8 e'8 | d'2 r4 a'8 a'8 | \break
    bes'8 bes'4. a'4 a'8 a'8 | g'4 g'2 r4 | \break
    f'4 f'4 g'8 g'8 f'8 f'8 | d'2. r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  bes'2 a'4 g'4 | a'8 a'4 g'8 f'4 e'8 r8 | \break
    g'2 g'4 a'8 ( f'8) | g'2 f'8 f'8 e'8 e'8 | d'2. r4 \break
  }
}

gpmseratusenamdua_f_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  d'8 d'8 d'8 e'8 f'8 e'8 d'4 | a'4 a'4 r8 a'8 a'8 a'8 | \break
  bes'4 bes'4 r8 g'8 g'8 g'8 | a'4 a'2 \breathe f'8 f'8 | \break
  g'8 g'8 r8 g'8 f'8 f'8 e'8 e'8 | d'2 r4 a'8 a'8 | \break
  bes'8 bes'4. a'4 a'8 a'8 | g'4 g'2 r4 | \break
  f'4 f'4 g'8 g'8 f'8 f'8 | d'2. r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  bes'2 a'4 g'4 | a'8 a'4 g'8 f'4 e'8 r8 | \break
  g'2 g'4 a'8 ( f'8) | g'2 f'8 f'8 e'8 e'8 | d'2. r4 \break
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  d'8 d'8 d'8 e'8 f'8 e'8 d'4 | a'4 a'4 r8 a'8 a'8 a'8 | \break
  bes'4 bes'4 r8 g'8 g'8 g'8 | a'4 a'2 \breathe f'8 f'8 | \break
  g'8 g'8 r8 g'8 f'8 f'8 e'8 e'8 | d'2 r4 a'8 a'8 | \break
  bes'8 bes'4. a'4 a'8 a'8 | g'4 g'2 r4 | \break
  f'4 f'4 g'8 g'8 f'8 f'8 | d'2. r4 | \break

  \section  
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  bes'2 a'4 g'4 | a'8 a'4 g'8 f'4 e'8 r8 | \break
  g'2 g'4 a'8 ( f'8) | g'2 f'8 f'8 e'8 e'8 | d'2. r4 \break
  
}

gpmseratusenamdua_f_notes =
#(if is-svg?
     #{ \gpmseratusenamdua_f_notes_svg #}
     #{ \gpmseratusenamdua_f_notes_pdf #})

gpmseratusenamdua_f_music = {
  \time 4/4
  \key f \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenamdua_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenamdua_f_music_solmisasi = \solmisasiMusic \gpmseratusenamdua_f_music

gpmseratusenamdua_lyricOne = \lyricmode {
    Ye -- sus Kris -- tus a -- da -- lah Tu -- han, me -- ngam -- bil ru -- pa se -- o -- rang ham -- ba, 
    ja -- di sa -- ma de -- ngan ma -- nu -- si -- a, ren -- dah ha -- ti dan ber -- wi -- ba -- wa, 
    u -- mat tun -- duk me -- nyem -- bah.  
}

gpmseratusenamdua_lyricTwo = \lyricmode {
    Na -- ma a -- tas se -- ga -- la na -- ma, na -- ma yang in -- dah lu -- hur mu -- li -- a.
    Al -- lah b'ri -- kan ke -- pa -- da A -- nak -- Nya, na -- ma Ye -- sus mem -- be -- ri hi -- dup,
    pa -- da yang mau per -- ca -- ya.
}

gpmseratusenamdua_lyricReff = \lyricmode {
  Se -- ga -- la li -- dah me -- nga -- ku Ye -- sus Kris -- tus a -- da -- lah Tu -- han. 
}

gpmseratusenamdua_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamdua_lyricOne
           \gpmseratusenamdua_lyricReff
           \gpmseratusenamdua_lyricTwo
           \gpmseratusenamdua_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamdua_lyricOne
           \gpmseratusenamdua_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamdua_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmseratusenamdua_lyricReff
         }
       >>
     #}
     )