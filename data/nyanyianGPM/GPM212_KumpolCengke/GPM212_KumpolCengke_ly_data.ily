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

gpmduaratusduabelas_f_notes_pdf = {
  \repeat volta 4 {
    \partial 4 a'8 bes'8 | c''8 c''4 c''8 bes'8 a'8 g'8 c''8 | a'4 a'4 g'4 a'8 bes'8 | \break
    c''8 c''4 a'8 bes'8 c''8 d''8 c''8 | g'2. \bar "||"  \break 
    
    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    f'8 f'8 | f'8 f'8 f'8 g'8 a'4 \breathe g'8 g'8 | \break
    g'8 g'8 g'8 a'8 bes'4 \breathe c''8 c''8 | c''8 c''8 c''8 bes'8 a'8 c''8 bes'8 g'8 | f'2. \break
  }
}

gpmduaratusduabelas_f_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 4 a'8 bes'8 | c''8 c''4 c''8 bes'8 a'8 g'8 c''8 | a'4 a'4 g'4 a'8 bes'8 | \break
  c''8 c''4 a'8 bes'8 c''8 d''8 c''8 | g'2. \bar "||"  \break 
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  f'8 f'8 | f'8 f'8 f'8 g'8 a'4 \breathe g'8 g'8 | \break
  g'8 g'8 g'8 a'8 bes'4 \breathe c''8 c''8 | c''8 c''8 c''8 bes'8 a'8 c''8 bes'8 g'8 | f'2. \break
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 4 a'8 bes'8 | c''8 c''4 c''8 bes'8 a'8 g'8 c''8 | a'4 a'4 g'4 a'8 bes'8 | \break
  c''8 c''4 a'8 bes'8 c''8 d''8 c''8 | g'2. \bar "||"  \break 
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  f'8 f'8 | f'8 f'8 f'8 g'8 a'4 \breathe g'8 g'8 | \break
  g'8 g'8 g'8 a'8 bes'4 \breathe c''8 c''8 | c''8 c''8 c''8 bes'8 a'8 c''8 bes'8 g'8 | f'2. \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  \partial 4 a'8 bes'8 | c''8 c''4 c''8 bes'8 a'8 g'8 c''8 | a'4 a'4 g'4 a'8 bes'8 | \break
  c''8 c''4 a'8 bes'8 c''8 d''8 c''8 | g'2. \bar "||"  \break 
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  f'8 f'8 | f'8 f'8 f'8 g'8 a'4 \breathe g'8 g'8 | \break
  g'8 g'8 g'8 a'8 bes'4 \breathe c''8 c''8 | c''8 c''8 c''8 bes'8 a'8 c''8 bes'8 g'8 | f'2. \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 4"
  \partial 4 a'8 bes'8 | c''8 c''4 c''8 bes'8 a'8 g'8 c''8 | a'4 a'4 g'4 a'8 bes'8 | \break
  c''8 c''4 a'8 bes'8 c''8 d''8 c''8 | g'2. \bar "||"  \break 
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  f'8 f'8 | f'8 f'8 f'8 g'8 a'4 \breathe g'8 g'8 | \break
  g'8 g'8 g'8 a'8 bes'4 \breathe c''8 c''8 | c''8 c''8 c''8 bes'8 a'8 c''8 bes'8 g'8 | f'2. \break
}


gpmduaratusduabelas_f_notes =
#(if is-svg?
     #{ \gpmduaratusduabelas_f_notes_svg #}
     #{ \gpmduaratusduabelas_f_notes_pdf #})

gpmduaratusduabelas_f_music = {
  \time 4/4
  \key f \major
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


gpmduaratusduabelas_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratusduabelas_lyricOne
           \gpmduaratusduabelas_lyricReff
           \gpmduaratusduabelas_lyricTwo
           \gpmduaratusduabelas_lyricReff
           \gpmduaratusduabelas_lyricThree
           \gpmduaratusduabelas_lyricReff
            \gpmduaratusduabelas_lyricFour
           \gpmduaratusduabelas_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratusduabelas_lyricOne
           \gpmduaratusduabelas_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratusduabelas_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmduaratusduabelas_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratusduabelas_lyricThree
           \lyricsOff
           \gpmduaratusduabelas_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratusduabelas_lyricFour
           \lyricsOff
           \gpmduaratusduabelas_lyricReff
         }
       >>
     #}
     )