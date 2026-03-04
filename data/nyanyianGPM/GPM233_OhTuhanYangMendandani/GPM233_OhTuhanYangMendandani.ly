\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 233. Oh Tuhan Yang Mendandani"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = C, 4/4, ♩ = 80"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Monica Pariela - Parera"
      ", 2007"
    }
  }

  % Default tagline
  tagline = \markup {
    \sans \fontsize #-1 {
      \concat {
        "Koleksi Partitur Nyanyian GPM"
        " - Diproduksi dengan solmisasi-lily v"
        #(solmisasi-lily-version)
      }
    }
  }
}

gpmduaratustigatiga_c_music = {
  \key c \major
  \time 4/4
  \relative c' {
    % 1. Menghilangkan tanda kamar (Bracket)
    \override Score.VoltaBracket.stencil = ##f
    
    % 2. PAKSA Fine dan D.C. al Fine untuk selalu di atas (UP)
    \override Score.SectionLabel.direction = #UP
    \override Score.JumpScript.direction = #UP
    
    % 3. Tambahkan jarak ekstra agar tidak mepet garis
    \override Score.SectionLabel.padding = #2
    \override Score.JumpScript.padding = #2

    \repeat segno 2 {
      \repeat volta 2 {
        \partial 4 g'4 | 
        g8 e8 \tuplet 3/2 {e8 e8 e8} f8 f8 g8 a8 | g8 e4. \break
        r8 e8 g8 e8 | d8 d8 d8 e8 f8 f8 e8 d8 | \slurDashed e8 (g4.) \slurSolid r4 \break
        g4 | g8 e8 \tuplet 3/2 {g8 g8 g8} g8 g8  \tuplet 3/2 {g8 a8 bes8} bes8 a4. \break
        
        r8 a8 b8 c8 | a8 a8 b8 c8 b4. c8 c2 r4
        
        % Tanda Fine
        \fine 
         | \break
      }

      \alternative {
        \volta 1 {
          c4 | b8 b4. a4 b4 | a8 g1* 5/8 r8 a8 | g4 g4 f8 f4 g8 | f8 e4. r4 | \break
          c'4 | b8 b4. a4 b4 | a8 g1* 5/8 r8 g8 | a8 a8 a8 a8 a8 b8~ 
          b8 c8 | c8 b4. r4 | 
        }
      }
    }
  }
}

% Optimasi Solmisasi
gpmduaratustigatiga_c_music_solmisasi = \solmisasiMusic \gpmduaratustigatiga_c_music

gpmduaratustigatiga_lyricOne = \lyricmode {
  Oh Tu -- han, yang men -- dan -- da -- ni bu -- nga ba -- kung, dan mem -- b'ri ma -- kan bu -- rung- bu -- rung di \set ignoreMelismata = ##t u -- da -- ra.\set ignoreMelismata = ##f
  _ Oh Tu -- han, yang meng -- a -- da -- kan ro -- ti dan i -- kan, dan mem -- ber -- ka -- ti ka -- mi u -- mat -- Mu.
  Ja -- di -- kan hi -- dup ka -- mi pe -- no -- long ba -- gi se -- sa -- ma su -- pa -- ya ka -- mi ja -- di sa -- lu -- ran ber -- kat ba -- gi se -- sa -- ma.
}

gpmduaratustigatiga_lyricTwo = \lyricmode {
  Oh Tu -- han, yang me -- ne -- duh -- kan a -- ngin ri -- but, dan mem -- ber -- ka -- ti per -- ja -- mu -- an di Ka -- na.
  Oh Tu -- han, yang me -- ngam -- pu -- ni do -- sa u -- mat -- Mu, sam -- but -- lah ka -- mi da -- lam ka -- sih -- Mu.
}

% --- OUTPUT PDF ---
\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratustigatiga_c_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratustigatiga_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratustigatiga_lyricTwo
  >>
  \layout { indent = 0 }
}

% --- OUTPUT MIDI ---
\score {
  \unfoldRepeats {
    <<
      \new Staff {
        \new Voice = "melodi" { \gpmduaratustigatiga_c_music }
      }
      \new Lyrics \lyricsto "melodi" { \repeat unfold 2 \gpmduaratustigatiga_lyricOne }
      \new Lyrics \lyricsto "melodi" { \repeat unfold 2 \gpmduaratustigatiga_lyricTwo }
    >>
  }
  \midi { \tempo 4 = 80 }
}