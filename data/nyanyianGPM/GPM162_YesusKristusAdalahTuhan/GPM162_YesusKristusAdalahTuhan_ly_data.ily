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

gpmseratusenamdua_f_notes = {
  \key f \major
  \relative f'
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

    d8 d8 d8 e8 f8 e8 d4 | a'4 a4 r8 a8 a8 a8 | \break
    bes4 bes r8 g8 g8 g8 | a4 a2 \breathe f8 f8 | \break
    g8 g8 r8 g8 f8 f8 e8 e8 | d2 r4 a'8 a8 | \break
    bes8 bes4. a4 a8 a8 | g4 g2 r4 | \break
    f4 f4 g8 g8 f8 f8 | d2. r4 | \break

    ^\markup { \italic \bold "Refrein" } bes'2 a4 g4 | a8 a4 g8 f4 e8 r8 | \break
    g2 g4 a8 (f8) | g2 f8 f8 e8 e8 | d2. r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusenamdua_f_music = {
  \time 4/4
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