% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 284. Tuhan Ku"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
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

gpmduaratusdelapanempat_c_notes_pdf = {
  \repeat volta 2 {
    r2 g'4. a'8 | g'1* 4/4 | r4 c''8 b'8 a'4 c''4 | g'4. f'8 e'2 | \break
    r4 e'8 e'8 e'8 d'8 c'8 e'8 | d'2 d'2 | r4 d'8 e'8 f'8 f'8 e'8 d'8 | e'2 g'2 | \break
    r2 g'4. a'8 | g'1* 4/4 | r4 c''8 b'8 a'4 c''4 | g'4. f'8 e'2 | \break
    r4 e'8 e'8 e'8 d'8 c'8 e'8 | d'2 d'2 | r4 d'8 e'8 f'8 f'8 e'8 d'8 | c'1* 4/4 | \break

    % reef
    r4 e'8 e'8 d'4 e'4 | f'2 d'2 | r4 f'8 f'8 e'4 f'4 | g'2 e'2 | \break
    r4 e'8 e'8 d'4 e'4 | f'2 d'2 | r4 fis'8 g'8 a'4 fis'4 | g'1* 5/8 g'8 f'8 e'8 | \break
    d'4 r4 g'4. a'8 | g'1 * 4/4 | r4 c''8 b'8 a'4 c''4 | g'4. f'8 e'2 | \break
    r4 e'8 e'8 e'8 d'8 c'8 e'8 | d'2 d'2 | r4 d'8 e'8 f'8 f'8 e'8 d'8 | c'1* 4/4 |
  }
}

gpmduaratusdelapanempat_c_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  r2 g'4. a'8 | g'1* 4/4 | r4 c''8 b'8 a'4 c''4 | g'4. f'8 e'2 | \break
  r4 e'8 e'8 e'8 d'8 c'8 e'8 | d'2 d'2 | r4 d'8 e'8 f'8 f'8 e'8 d'8 | e'2 g'2 | \break
  r2 g'4. a'8 | g'1* 4/4 | r4 c''8 b'8 a'4 c''4 | g'4. f'8 e'2 | \break
  r4 e'8 e'8 e'8 d'8 c'8 e'8 | d'2 d'2 | r4 d'8 e'8 f'8 f'8 e'8 d'8 | c'1* 4/4 | \break

  % reef
  r4 e'8 e'8 d'4 e'4 | f'2 d'2 | r4 f'8 f'8 e'4 f'4 | g'2 e'2 | \break
  r4 e'8 e'8 d'4 e'4 | f'2 d'2 | r4 fis'8 g'8 a'4 fis'4 | g'1* 5/8 g'8 f'8 e'8 | \break
  d'4 r4 g'4. a'8 | g'1 * 4/4 | r4 c''8 b'8 a'4 c''4 | g'4. f'8 e'2 | \break
  r4 e'8 e'8 e'8 d'8 c'8 e'8 | d'2 d'2 | r4 d'8 e'8 f'8 f'8 e'8 d'8 | c'1* 4/4 |

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  r2 g'4. a'8 | g'1* 4/4 | r4 c''8 b'8 a'4 c''4 | g'4. f'8 e'2 | \break
  r4 e'8 e'8 e'8 d'8 c'8 e'8 | d'2 d'2 | r4 d'8 e'8 f'8 f'8 e'8 d'8 | e'2 g'2 | \break
  r2 g'4. a'8 | g'1* 4/4 | r4 c''8 b'8 a'4 c''4 | g'4. f'8 e'2 | \break
  r4 e'8 e'8 e'8 d'8 c'8 e'8 | d'2 d'2 | r4 d'8 e'8 f'8 f'8 e'8 d'8 | c'1* 4/4 | \break

  % reef
  r4 e'8 e'8 d'4 e'4 | f'2 d'2 | r4 f'8 f'8 e'4 f'4 | g'2 e'2 | \break
  r4 e'8 e'8 d'4 e'4 | f'2 d'2 | r4 fis'8 g'8 a'4 fis'4 | g'1* 5/8 g'8 f'8 e'8 | \break
  d'4 r4 g'4. a'8 | g'1 * 4/4 | r4 c''8 b'8 a'4 c''4 | g'4. f'8 e'2 | \break
  r4 e'8 e'8 e'8 d'8 c'8 e'8 | d'2 d'2 | r4 d'8 e'8 f'8 f'8 e'8 d'8 | c'1* 4/4 |
}

gpmduaratusdelapanempat_c_notes =
#(if is-svg?
     #{ \gpmduaratusdelapanempat_c_notes_svg #}
     #{ \gpmduaratusdelapanempat_c_notes_pdf #})

gpmduaratusdelapanempat_c_music = {
  \time 4/4
  \key c \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusdelapanempat_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusdelapanempat_c_music_solmisasi = \solmisasiMusic \gpmduaratusdelapanempat_c_music

gpmduaratusdelapanempat_lyricOne = \lyricmode {
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  S'la -- lu ha -- ngat -- kan ji -- wa -- ku, s'la -- lu a -- da di ha -- ti -- ku.
}

gpmduaratusdelapanempat_lyricTwo = \lyricmode {
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  S'la -- lu ha -- ngat -- kan tu -- buh -- ku, s'la -- lu da -- mai -- kan ha -- ti -- ku.
}

gpmduaratusdelapanempat_lyricPreReff = \lyricmode {
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  da -- lam su -- ka mau -- pun du -- ka, a -- ku me -- rin -- du -- kan -- Mu.
}

gpmduaratusdelapanempat_lyricReff = \lyricmode {
  Ber -- kat -- Mu me -- lim -- pah, wa -- lau -- pun 'tak pin -- ta
  Ber -- ta -- bu -- ran cin -- ta, me -- le -- bi -- hi in -- tan per -- ma -- ta.
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  Da -- lam ti -- ap peng -- ha -- ra -- pan, ku -- pa -- tri -- kan na -- ma -- Mu.
}


gpmduaratusdelapanempat_lyricsAll = 
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratusdelapanempat_lyricOne
           \gpmduaratusdelapanempat_lyricPreReff
           \gpmduaratusdelapanempat_lyricReff
           \gpmduaratusdelapanempat_lyricTwo
           \gpmduaratusdelapanempat_lyricPreReff
           \gpmduaratusdelapanempat_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratusdelapanempat_lyricOne
           \gpmduaratusdelapanempat_lyricPreReff
           \gpmduaratusdelapanempat_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratusdelapanempat_lyricTwo
           \lyricsOff
           \gpmduaratusdelapanempat_lyricPreReff
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmduaratusdelapanempat_lyricReff
         }
       >>
     #}
     )