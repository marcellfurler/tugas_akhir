% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 242. Dengarkanlah Suara Tuhan"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      " - Ambon, 1982"
    }
  }
}

% do = c -> 1C - 2D - 3E - 4F 4 1/2g - 5A - 6B - 7C - 8D

gpmduaratusempatdua_c_notes_pdf = {

  \repeat volta 2 {
    g'4. f'8 g'4 | e'2. | a'4. g'8 f'8 ( g'8) | g'2. | \break
    a'2 c''4 | b'2 a'4 | \once \override Tie.stencil = ##f g'2.~ ( | g'2) r4 | \break
    f'4. e'8 f'4 | d'2. | a'4. g'8 f'8 ( g'8) | g'2 r4 | \break
    e'4. d'8 e'4 | f'4 e'4 d'4 | \once \override Tie.stencil = ##f c'2.~ ( | c'2) r4 | \break
    
    \section
    \tweak X-offset #1
    \sectionLabel \markup\smaller\italic\bold "Refrain"
    b'4. b'8 b'8 b'8 | b'2 a'8 ( b'8) | c''4. c''8 b'8 a'8 | g'2 r4 | \break
    b'4. b'8 b'8 b'8 | b'2 e''8 ( d''8) | c''4. c''8 b'8 a'8 | g'2 r4 | \break
    a'4 c''4. a'8 | g'1* 5/8 g'8 | a'4 c''4. d''8 | c''2 r4 | \break
    e'4. d'8 e'4 | f'4 e'4 d'4 | \once \override Tie.stencil = ##f ( c'2.~ | c'2) r4 | \break
  }
}

gpmduaratusempatdua_c_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  g'4. f'8 g'4 | e'2. | a'4. g'8 f'8 ( g'8) | g'2. | \break
  a'2 c''4 | b'2 a'4 | \once \override Tie.stencil = ##f g'2.~ ( | g'2) r4 | \break
  f'4. e'8 f'4 | d'2. | a'4. g'8 f'8 ( g'8) | g'2 r4 | \break
  e'4. d'8 e'4 | f'4 e'4 d'4 | \once \override Tie.stencil = ##f c'2.~ ( | c'2) r4 | \break
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  b'4. b'8 b'8 b'8 | b'2 a'8 ( b'8) | c''4. c''8 b'8 a'8 | g'2 r4 | \break
  b'4. b'8 b'8 b'8 | b'2 e''8 ( d''8) | c''4. c''8 b'8 a'8 | g'2 r4 | \break
  a'4 c''4. a'8 | g'1* 5/8 g'8 | a'4 c''4. d''8 | c''2 r4 | \break
  e'4. d'8 e'4 | f'4 e'4 d'4 | \once \override Tie.stencil = ##f ( c'2.~ | c'2) r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  g'4. f'8 g'4 | e'2. | a'4. g'8 f'8 ( g'8) | g'2. | \break
  a'2 c''4 | b'2 a'4 | \once \override Tie.stencil = ##f g'2.~ ( | g'2) r4 | \break
  f'4. e'8 f'4 | d'2. | a'4. g'8 f'8 ( g'8) | g'2 r4 | \break
  e'4. d'8 e'4 | f'4 e'4 d'4 | \once \override Tie.stencil = ##f c'2.~ ( | c'2) r4 | \break
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  b'4. b'8 b'8 b'8 | b'2 a'8 ( b'8) | c''4. c''8 b'8 a'8 | g'2 r4 | \break
  b'4. b'8 b'8 b'8 | b'2 e''8 ( d''8) | c''4. c''8 b'8 a'8 | g'2 r4 | \break
  a'4 c''4. a'8 | g'1* 5/8 g'8 | a'4 c''4. d''8 | c''2 r4 | \break
  e'4. d'8 e'4 | f'4 e'4 d'4 | \once \override Tie.stencil = ##f ( c'2.~ | c'2) r4 | \break
}

gpmduaratusempatdua_c_notes =
#(if is-svg?
     #{ \gpmduaratusempatdua_c_notes_svg #}
     #{ \gpmduaratusempatdua_c_notes_pdf #})

gpmduaratusempatdua_c_music = {
  \time 3/4
  \key c \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusempatdua_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusempatdua_c_music_solmisasi = \solmisasiMusic \gpmduaratusempatdua_c_music

gpmduaratusempatdua_lyricOne = \lyricmode {
  De -- ngar -- kan -- lah sua -- ra Tu -- han me -- mang -- gil ki -- ta.
  Kau dan a -- ku yang ber -- do -- sa, men -- ja -- di mu -- rid Tu -- han.
}

gpmduaratusempatdua_lyricTwo = \lyricmode {
    De -- ngar -- kan -- lah p'rin -- tah Tu -- han me -- ngu -- tus ki -- ta.
    N'tuk men -- ja -- di ab -- di Tu -- han, me -- nyak -- si -- kan na -- ma -- Nya.
}

gpmduaratusempatdua_lyricReff = \lyricmode {
  I -- kut -- lah Ye -- sus sang Ju -- ru s'la -- mat mu, pi -- kul sa -- lib -- Nya
  se -- u -- mur hi -- dup -- mu se -- tia s'la -- lu pa -- da jan -- ji -- Nya
  Men -- ja -- di mu -- rid Tu -- han.
}

gpmduaratusempatdua_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratusempatdua_lyricOne
           \gpmduaratusempatdua_lyricReff
           \gpmduaratusempatdua_lyricTwo
           \gpmduaratusempatdua_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratusempatdua_lyricOne
           \gpmduaratusempatdua_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratusempatdua_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmduaratusempatdua_lyricReff
         }
       >>
     #}
     )