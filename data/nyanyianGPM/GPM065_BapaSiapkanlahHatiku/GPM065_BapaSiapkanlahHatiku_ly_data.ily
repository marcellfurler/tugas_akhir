% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 65. Bapa, Siapkanlah Hatiku"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 70"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 2005"
    }
  }
}

% do = c -> 1C - 2D - 3E - 4F 4 1/2gis - 5G - 6A - 7B - 8C

gpmenampuluhlima_c_notes_pdf = {
    % Baris pertama
    e'8 e'1* 7/8 | r4 e'8 e'8 f'8 e'8 f'8 g'8 | \once \override Tie.stencil = ##f d'1* 4/4~ ( | d'4) r4 e'4. d'8 | \break
    c'1* 7/8 c'8 | f'4 f'4 f'4. g'8 | e'2. \tuplet 3/2 {e'8 ( d'8 c'8} | d'2.) r4 | \break
    g'8 g'1* 7/8 | r4 e'8 e'8 f'8 e'8 f'8 g'8 | \once \override Tie.stencil = ##f d'1* 4/4~ ( | d'4) r4 e'4. d'8 | \break
    c'1* 7/8 c'8 | f'4 e'4 d'4.c'8 | c'1* 4/4 | r1* 7/8 g'8 | \break
    b'4 b'2 b'8 ( a'8) | g'2 r4 a'8 b'8 | c''2 c''8 ( b'8) a'8 a'8~ | a'8 ( g'1* 5/8) f'8 g'8 | \break
    a'4 a'2. \breathe | g'2. g'8 ( f'8) | e'1* 4/4 | r1 * 7/8 g'8 | \break
    b'4 b'2 b'8 a'8 | a'8 ( g'8) g'1* 5/8  b'8 | c''4 c''4 c''8 (b'8) a'8 a'8~ | a'8  ( g'1* 5/8) \breathe f'8 g'8 | \break
    a'4 a'1*3/4 | g'2. \breathe g'8 ( f'8) | e'1* 4/4 | \break

    % repeat
    \repeat volta 2{
        r4 a'8 g'8 a'8 g'8 a'8 b'8 | c''4. a'8 g'2 | r4 g'8 g'8 a'8 a'8 g'8 f'8 | ( e'2 g'2) | \break
        r4 a'8 g'8 a'8 g'8 a'8 b'8 | c''4. g'8 e''2( | d''8) r8 b'8 b'8 b'8 b'8 c''8 d''8 | \break
        c''1* 4/4 | 
    }   
    r4^\markup { \italic "rit." } a'4 ( b'4 c''4) | c''1* 4/4 |

  }

gpmenampuluhlima_c_notes_svg = {
      % Baris pertama
    e'8 e'1* 7/8 | r4 e'8 e'8 f'8 e'8 f'8 g'8 | \once \override Tie.stencil = ##f d'1*4/4~ ( | d'4) r4 e'4. d'8 | \break
    c'1* 7/8 c'8 | f'4 f'4 f'4. g'8 | e'2. \tuplet 3/2 {e'8 ( d'8 c'8} | d'2.) r4 | \break
    g'8 g'1* 7/8 | r4 e'8 e'8 f'8 e'8 f'8 g'8 | \once \override Tie.stencil = ##f d'1*4/4~ ( | d'4) r4 e'4. d'8 | \break
    c'1* 7/8 c'8 | f'4 e'4 d'4.c'8 | c'1* 4/4 | r1* 7/8 g'8 | \break
    b'4 b'2 b'8 ( a'8) | g'2 r4 a'8 b'8 | c''2 c''8 ( b'8) a'8 a'8~ | a'8 ( g'1* 5/8) f'8 g'8 | \break
    a'4 a'2. \breathe | g'2. g'8 ( f'8) | e'1* 4/4 | r1 * 7/8 g'8 | \break
    b'4 b'2 b'8 a'8 | a'8 ( g'8) g'1* 5/8  b'8 | c''4 c''4 c''8 ( b'8) a'8 a'8~ | a'8  ( g'1* 5/8) \breathe f'8 g'8 | \break
    a'4 a'1*3/4 | g'2. \breathe g'8 ( f'8) | e'1* 4/4 | \break

    r4 a'8 g'8 a'8 g'8 a'8 b'8 | c''4. a'8 g'2 | r4 g'8 g'8 a'8 a'8 g'8 f'8 | ( e'2 g'2) | \break
    r4 a'8 g'8 a'8 g'8 a'8 b'8 | c''4. g'8 e''2( | d''8) r8 b'8 b'8 b'8 b'8 c''8 d''8 | 
    c''1* 4/4 | \break

    r4 a'8 g'8 a'8 g'8 a'8 b'8 | c''4. a'8 g'2 | r4 g'8 g'8 a'8 a'8 g'8 f'8 | ( e'2 g'2) | \break
    r4 a'8 g'8 a'8 g'8 a'8 b'8 | c''4. g'8 e''2 ( | d''8) r8 b'8 b'8 b'8 b'8 c''8 d''8 | \break
    c''1* 4/4 | 
 
    r4^\markup { \italic "rit." } a'4 ( b'4 c''4) | c''1* 4/4 |

  
}

gpmenampuluhlima_c_notes =
#(if is-svg?
     #{ \gpmenampuluhlima_c_notes_svg #}
     #{ \gpmenampuluhlima_c_notes_pdf #})

gpmenampuluhlima_c_music = {
  \time 4/4
  \key c \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmenampuluhlima_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmenampuluhlima_c_music_solmisasi = \solmisasiMusic \gpmenampuluhlima_c_music

gpmenampuluhlima_lyricOne = \lyricmode {
    Ba -- pa, si -- ap -- kan -- lah ha -- ti -- ku.
    A -- ku mau men -- de -- ngar sab -- da -- Mu, Ooo
    Ba -- pa, su -- ci -- kan -- lah ha -- ti -- ku.
    A -- ku mau men -- de -- ngar sab -- da -- Mu.

    Sab -- da -- Mu ke -- kal, pe -- ne -- rang lang -- kah ku
    da -- lam su -- sah dan se -- nang.
    Be -- ri -- lah Roh Ku -- dus -- Mu, me -- nun -- tun hi -- dup -- ku
    da -- lam su -- sah dan se -- nang.
}

gpmenampuluhlima_lyricReff = \lyricmode {
    Si -- ap -- kan -- lah ha -- ti -- ku, Ba -- pa, mau me -- nyam -- but sab -- da -- Mu.
    Si -- ap -- kan -- lah ha -- ti -- ku, Ba -- pa, mau me -- nyam -- but sab -- da -- Mu.
}

gpmenampuluhlima_lyricRitt = \lyricmode {
  A -- min!
}
