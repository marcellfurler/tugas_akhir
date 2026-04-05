% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 212. Kumpol Cengke"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = F, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Nus Tomatala"
      ", 2008"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaratusduabelas_f_notes = {
  \key f \major
  \relative f'
  \repeat volta 4 {
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
           \volta 3 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 3"
           }
           \volta 4 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 4"
           }
           
         #}
         ; else/defaulte
         (empty-music)
         )

    \partial 4 a8 bes8 | c8 c4 c8 bes8 a8 g8 c8 | a4 a4 g4 a8 bes8 | \break
    c8 c4 a8 bes8 c8 d8 c8 | g2.  \break 
    \bar "||" ^\markup { \italic \bold "Refrein" } f8 f8 | f8 f8 f8 g8 a4 \breathe g8 g8 | \break
    g8 g8 g8 a8 bes4 \breathe c8 c8 | c8 c8 c8 bes8 a8 c8 bes8 g8 | f2. \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmduaratusduabelas_f_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusduabelas_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusduabelas_f_music_solmisasi = \solmisasiMusic \gpmduaratusduabelas_f_music

gpmduaratusduabelas_lyricOne = \lyricmode {
    Kum -- pol ceng -- ke kum -- pol deng nya -- nyi -- an syu -- kur,
    co -- ba re -- keng sio ba -- nya la -- wang -- e.
}

gpmduaratusduabelas_lyricTwo = \lyricmode {
    I -- kang ka -- wang su po -- no di -- da -- lam ja -- reng,
    a -- rom -- ba -- e su am -- per ta -- ba -- le. 
}

gpmduaratusduabelas_lyricThree = \lyricmode {
    Bu -- nga pa -- la di -- po -- hong ba -- rang -- ke- rang -- ke,
    sa -- gu lem -- peng su po -- no di -- du -- lang.
}

gpmduaratusduabelas_lyricFour = \lyricmode {
    Da -- ri do -- lo su a -- da per -- se -- ku -- tu -- an 
    yang ba -- di -- ri a -- tas fir -- man Tu -- han. 
}

gpmduaratusduabelas_lyricReff = \lyricmode {
    Syu -- kur a -- kang par Ye -- sus, syu -- kur jang pu -- tus- pu -- tus. 
    Bi -- lang sa -- ja dang -- ke ba -- nya Ye -- sus e.
}
