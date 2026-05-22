% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 194. Berjumpa Lagi"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 1997"
    }
  }
}

% do = c -> 1C - 2D - 3E - 4F 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratussembilanempat_c_notes_pdf = {
  \repeat volta 2 {
    r4 g'4 g'4. f'8 | f'8 e'2 e'8 e'8 d'8 | \break
    c'8 c'8 c'8 c'8 b4 c'4 | d'1* 4/4 | \break
    r4 f'4 f'4. e'8 | e'8 d'2 e'8 d'8 c'8 | \break
    b8 b8 a'8 a'8 g'8 g'4 f'8 e'1* 4/4 | \break
    r4 g'4 g'4. f'8 | f'8 e'2 e'8 e'8 d'8 | \break
    c'8 c'8 c'8 c'8 c''4. b'8 | a'1* 4/4 | \break
    r4 f'4 g'4. a'8 | g'8 e'2 g'8 f'8 e'8 | \break
    e'8 d'4. f'4. g'8 | g'8 ( e'1* 7/8) | \break
    r4 f'4 g'4. a'8 | g'8 e'2 g'8 f'8 e'8 |\break 
    e'8 d'4. a'4. b'8 | c''1* 4/4 |\break
  }
}

gpmseratussembilanempat_c_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  r4 g'4 g'4. f'8 | f'8 e'2 e'8 e'8 d'8 | \break
  c'8 c'8 c'8 c'8 b4 c'4 | d'1* 4/4 | \break
  r4 f'4 f'4. e'8 | e'8 d'2 e'8 d'8 c'8 | \break
  b8 b8 a'8 a'8 g'8 g'4 f'8 e'1* 4/4 | \break
  r4 g'4 g'4. f'8 | f'8 e'2 e'8 e'8 d'8 | \break
  c'8 c'8 c'8 c'8 c''4. b'8 | a'1* 4/4 | \break
  r4 f'4 g'4. a'8 | g'8 e'2 g'8 f'8 e'8 | \break
  e'8 d'4. f'4. g'8 | g'8 ( e'1* 7/8) | \break
  r4 f'4 g'4. a'8 | g'8 e'2 g'8 f'8 e'8 |\break 
  e'8 d'4. a'4. b'8 | c''1* 4/4 |\break
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  r4 g'4 g'4. f'8 | f'8 e'2 e'8 e'8 d'8 | \break
  c'8 c'8 c'8 c'8 b4 c'4 | d'1* 4/4 | \break
  r4 f'4 f'4. e'8 | e'8 d'2 e'8 d'8 c'8 | \break
  b8 b8 a'8 a'8 g'8 g'4 f'8 e'1* 4/4 | \break
  r4 g'4 g'4. f'8 | f'8 e'2 e'8 e'8 d'8 | \break
  c'8 c'8 c'8 c'8 c''4. b'8 | a'1* 4/4 | \break
  r4 f'4 g'4. a'8 | g'8 e'2 g'8 f'8 e'8 | \break
  e'8 d'4. f'4. g'8 | g'8 ( e'1* 7/8) | \break
  r4 f'4 g'4. a'8 | g'8 e'2 g'8 f'8 e'8 |\break 
  e'8 d'4. a'4. b'8 | c''1* 4/4 |\break
}

gpmseratussembilanempat_c_notes =
#(if is-svg?
     #{ \gpmseratussembilanempat_c_notes_svg #}
     #{ \gpmseratussembilanempat_c_notes_pdf #})

gpmseratussembilanempat_c_music = {
  \time 4/4
  \key c \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratussembilanempat_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratussembilanempat_c_music_solmisasi = \solmisasiMusic \gpmseratussembilanempat_c_music

gpmseratussembilanempat_lyricOne = \lyricmode {
    Ber -- jum -- pa la -- gi, ber -- jum -- pa la -- gi di tem -- pat i -- ni.
    Den -- dang ber -- sa -- ma, den -- dang ber -- sa -- ma ber -- gem -- bi -- ra ri -- a.
    Sa -- at yang in -- dah, ber -- ra -- mai- ra -- mai kum -- pul gan -- dong -- e.
    Ki -- ta ber -- sa -- tu di da -- lam ka -- sih, ma -- nis -- e.
    Ki -- ta ber -- sa -- tu di da -- lam ka -- sih, ma -- nie -- e.
}

gpmseratussembilanempat_lyricTwo = \lyricmode {
    Ba -- ku da -- pa lai, ba -- ku da -- pa lai di tem -- pat i -- ni.
    Den -- dang ber -- sa -- ma, den -- dang ber -- sa -- ma ber -- gem -- bi -- ra ri -- a.
    O -- ras yang in -- dah, ber -- ra -- mai- ra -- mai kum -- pul gan -- dong --  e.
    Ka -- tong ber -- sa -- tu di da -- lam ka -- sih, ma -- nis -- e.
    Ka -- tong ber -- sa -- tu di da -- lam ka -- sih, ma -- nis -- e.
}

gpmseratussembilanempat_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratussembilanempat_lyricOne
           \gpmseratussembilanempat_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratussembilanempat_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratussembilanempat_lyricTwo
         }
       >>
     #}
     )