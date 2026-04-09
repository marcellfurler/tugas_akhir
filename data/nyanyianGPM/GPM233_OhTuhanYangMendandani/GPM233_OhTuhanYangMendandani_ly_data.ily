% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 233. Oh Tuhan Yang Mendandani"

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
      \caps "Monica Pariela - Parera"
      ", 2007"
    }
  }
}

% do = c -> 1C - 2D - 3E - 4F 4 1/2g - 5A - 6B - 7C - 8D

gpmduaratustigatiga_c_notes_pdf = {
  \repeat volta 2 {
    % 1. Menghilangkan tanda kamar (Bracket)
    \override Score.VoltaBracket.stencil = ##f
    
    % 2. PAKSA Fine dan D.C. al Fine untuk selalu di atas (UP)
    \override Score.SectionLabel.direction = #UP
    \override Score.JumpScript.direction = #UP
    
    % 3. Tambahkan jarak ekstra agar tidak mepet garis
    \override Score.SectionLabel.padding = #2
    \override Score.JumpScript.padding = #2

    \repeat segno 2 {
      
        \partial 4 g'4 | 
        g'8 e'8 \tuplet 3/2 {e'8 e'8 e'8} f'8 f'8 g'8 a'8 | g'8 e'4. \break
        r8 e'8 g'8 e'8 | d'8 d'8 d'8 e'8 f'8 f'8 e'8 d'8 | \slurDashed e'8 (g'4.) \slurSolid r4 \break
        g'4 | g'8 e'8 \tuplet 3/2 {g'8 g'8 g'8} g'8 g'8  \tuplet 3/2 {g'8 a'8 bes'8} bes'8 a'4. \break
        
        r8 a'8 b'8 c''8 | a'8 a'8 b'8 c''8 b'4. c''8 c''2 r4
        
        % Tanda Fine
        \fine 
         | \break
      }
      \section
      \tweak X-offset #1
      \sectionLabel \markup\smaller\italic\bold "Refrain"

      \alternative {
        \volta 1 {
          c''4 | b'8 b'4. a'4 b'4 | a'8 g'1* 5/8 r8 a'8 | g'4 g'4 f'8 f'4 g'8 | f'8 e'4. r4 | \break
          c''4 | b'8 b'4. a'4 b'4 | a'8 g'1* 5/8 r8 g'8 | a'8 a'8 a'8 a'8 a'8 b'8~ 
          b'8 c''8 | c''8 b'4. r4 | 
        }
      }
      \break
  }
}

gpmduaratustigatiga_c_notes_svg = {

  % =================
  % BAIT 1
  % =================
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 4 g'4 | 
  g'8 e'8 \tuplet 3/2 { e'8 e'8 e'8} f'8 f'8 g'8 a'8 | g'8 e'4. \break
  r8 e'8 g'8 e'8 | d'8 d'8 d'8 e'8 f'8 f'8 e'8 d'8 | \slurDashed e'8 ( g'4.) \slurSolid r4 \break
  g'4 | g'8 e'8 \tuplet 3/2 {g'8 g'8 g'8} g'8 g'8  \tuplet 3/2 {g'8 a'8 bes'8} bes'8 a'4. \break
  
  r8 a'8 b'8 c''8 | a'8 a'8 b'8 c''8  b'4. c''8 c''2 \mark \markup { \italic \bold "Fine" } r4  \break

  % =================
  % REFF
  % =================
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  c''4 | b'8 b'4. a'4 b'4 | a'8 g'1* 5/8 r8 a'8 | g'4 g'4 f'8 f'4 g'8 | f'8 e'4. r4 | \break
  c''4 | b'8 b'4. a'4 b'4 | a'8 g'1* 5/8 r8 g'8 | a'8 a'8 a'8 a'8 a'8 b'8~ 
  
  b'8 c''8 | c''8 b'4. \mark \markup { \italic \bold "D.C. al Fine" } r4 | \break

  % =================
  % BAIT 1 ULANG
  % =================
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 4 g'4 | 
  g'8 e'8 \tuplet 3/2 { e'8 e'8 e'8} f'8 f'8 g'8 a'8 | g'8 e'4. \break
  r8 e'8 g'8 e'8 | d'8 d'8 d'8 e'8 f'8 f'8 e'8 d'8 | \slurDashed e'8 ( g'4.) \slurSolid r4 \break
  g'4 | g'8 e'8 \tuplet 3/2 {g'8 g'8 g'8} g'8 g'8  \tuplet 3/2 { g'8 a'8 bes'8} bes'8 a'4. \break
  
  r8 a'8 b'8 c''8 | a'8 a'8 b'8 c''8 b'4. c''8 c''2 r4 \break


    % =================
  % BAIT 1
  % =================
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 4 g'4 | 
  g'8 e'8 \tuplet 3/2 { e'8 e'8 e'8} f'8 f'8 g'8 a'8 | g'8 e'4. \break
  r8 e'8 g'8 e'8 | d'8 d'8 d'8 e'8 f'8 f'8 e'8 d'8 | \slurDashed e'8 ( g'4.) \slurSolid r4 \break
  g'4 | g'8 e'8 \tuplet 3/2 {g'8 g'8 g'8} g'8 g'8  \tuplet 3/2 {g'8 a'8 bes'8} bes'8 a'4. \break
  
  r8 a'8 b'8 c''8 | a'8 a'8 b'8 c''8  b'4. c''8 c''2 \mark \markup { \italic \bold "Fine" } r4  \break

  % =================
  % REFF
  % =================
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\italic\bold "Refrain"
  c''4 | b'8 b'4. a'4 b'4 | a'8 g'1* 5/8 r8 a'8 | g'4 g'4 f'8 f'4 g'8 | f'8 e'4. r4 | \break
  c''4 | b'8 b'4. a'4 b'4 | a'8 g'1* 5/8 r8 g'8 | a'8 a'8 a'8 a'8 a'8 b'8~ 
  
  b'8 c''8 | c''8 b'4. \mark \markup { \italic \bold "D.C. al Fine" } r4 | \break

  % =================
  % BAIT 1 ULANG
  % =================
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 4 g'4 | 
  g'8 e'8 \tuplet 3/2 { e'8 e'8 e'8} f'8 f'8 g'8 a'8 | g'8 e'4. \break
  r8 e'8 g'8 e'8 | d'8 d'8 d'8 e'8 f'8 f'8 e'8 d'8 | \slurDashed e'8 ( g'4.) \slurSolid r4 \break
  g'4 | g'8 e'8 \tuplet 3/2 {g'8 g'8 g'8} g'8 g'8  \tuplet 3/2 { g'8 a'8 bes'8} bes'8 a'4. \break
  
  r8 a'8 b'8 c''8 | a'8 a'8 b'8 c''8 b'4. c''8 c''2 r4 \break
}


gpmduaratustigatiga_c_notes =
#(if is-svg?
     #{ \gpmduaratustigatiga_c_notes_svg #}
     #{ \gpmduaratustigatiga_c_notes_pdf #})

gpmduaratustigatiga_c_music = {
  \time 4/4
  \key c \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratustigatiga_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratustigatiga_c_music_solmisasi = \solmisasiMusic \gpmduaratustigatiga_c_music

gpmduaratustigatiga_lyricOne = \lyricmode {
  Oh Tu -- han, yang men -- dan -- da -- ni bu -- nga ba -- kung, dan mem -- b'ri ma -- kan bu -- rung- bu -- rung di \set ignoreMelismata = ##t u -- da -- ra.\set ignoreMelismata = ##f
  _ Oh Tu -- han, yang meng -- a -- da -- kan ro -- ti dan i -- kan, dan mem -- ber -- ka -- ti ka -- mi u -- mat -- Mu.
}

gpmduaratustigatiga_lyricTwo = \lyricmode {
  Oh Tu -- han, yang me -- ne -- duh -- kan a -- ngin ri -- but, dan mem -- ber -- ka -- ti per -- ja -- mu -- an di Ka -- na.
  Oh Tu -- han, yang me -- ngam -- pu -- ni do -- sa u -- mat -- Mu, sam -- but -- lah ka -- mi da -- lam ka -- sih -- Mu.
}

gpmduaratustigatiga_lyricReff = \lyricmode {
  Ja -- di -- kan hi -- dup ka -- mi pe -- no -- long ba -- gi se -- sa -- ma su -- pa -- ya ka -- mi ja -- di sa -- lu -- ran ber -- kat ba -- gi se -- sa -- ma.
}


gpmduaratustigatiga_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratustigatiga_lyricOne
           \gpmduaratustigatiga_lyricReff
           \gpmduaratustigatiga_lyricOne
           \gpmduaratustigatiga_lyricTwo
           \gpmduaratustigatiga_lyricReff
           \gpmduaratustigatiga_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratustigatiga_lyricOne
           \gpmduaratustigatiga_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratustigatiga_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmduaratustigatiga_lyricReff
         }
       >>
     #}
     )