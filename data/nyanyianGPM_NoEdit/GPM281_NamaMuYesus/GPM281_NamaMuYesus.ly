\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 281. NamaMu Yesus"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = G, 4/4, ♩ = 100"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Bartje Istia"
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

% g --> 1-G, 2-A, 3-B, 4-C, 5-D, 6-E, 7-Fis, 8-G

gpmduaratusdelapansatu_g_notes = {
  \key g \major
  \relative g'
  \repeat volta 2{
    b2 a4 g4 | d'2 b4 r4 | g8 g8 g8 a8 b4 a8 g8 | a4 b4 a4 r4 | \break
    b2 a4 g4 | d'2 b4 r4 | g8 g8 g8 a8 b4 c8 b8 | a4 b4 g4 r4 | \break
    fis8 e8 fis8 g8 a4 fis4 | g8 fis8 g8 a8 b4 g4 | fis8 e8 fis8 g8 a8 fis8 e8 d8 | c'4. b8 b4 r4 | \break 
    fis8 e8 fis8 g8 a4 fis4 | g8 fis8 g8 a8 b4 g4 | a8 a8 a8 b8 a8 g8 fis8 e8 | d2 d4 r4 | \break
    b'2 a4 g4 | d'2 b4 r4 | g8 g8 g8 a8 b4 c8 a8 | g4 fis4 g4 r4 | \break
  }
}

gpmduaratusdelapansatu_g_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusdelapansatu_g_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusdelapansatu_g_music_solmisasi = \solmisasiMusic \gpmduaratusdelapansatu_g_music

gpmduaratusdelapansatu_lyricOne = \lyricmode {
    Na -- ma -- Mu Ye -- sus se -- la -- lu a -- da da -- lam ha -- ti -- ku.
    Ka -- sih -- Mu Ye -- sus se -- la -- lu a -- da da -- lam hi -- dup -- ku.
    Bi -- la ku ber -- ja -- lan da -- lam ke -- ge -- la -- pan, tia -- da ra -- sa ta -- kut kar -- 'na Kau de -- kat.
    Bi -- la ku di -- ha -- dang se -- ti -- ap go -- da -- an, sa -- yap ka -- sih -- Mu me -- lin -- du -- ngi -- ku.
    Da -- mai di -- ha -- ti, se -- la -- lu a -- da kar -- 'na cin -- ta -- Mu.
}

gpmduaratusdelapansatu_lyricTwo = \lyricmode {
    Ta -- ngan -- Mu Ye -- sus se -- la -- lu a -- da da -- lam bak -- ti -- ku.
    Ber -- kat -- Mu Ye -- sus se -- la -- lu a -- da da -- lam lum -- bung -- ku.
    Bah -- t'ra -- ku me -- la -- ju me -- nan -- tang ge -- lom -- bang, me -- nu -- ju ne -- g'ri yang Eng -- kau jan -- ji -- kan.
    Ber -- kat -- Mu me -- nga -- lir ba -- gai ma -- ta a -- ir, me -- nye -- gar -- kan se -- lu -- ruh hi -- dup -- ku.
    Da -- mai se -- jah -- t'ra, se -- la -- lu a -- da kar -- 'na ka -- sih -- Mu.
}


% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratusdelapansatu_g_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratusdelapansatu_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratusdelapansatu_lyricTwo
  >>
  \layout { }
}

% Score untuk MIDI
% Harus dipisah sebagai workaround untuk menghindari
% warning kompilasi bahwa context Voice tidak ditemukan.
% Juga untuk menghindari kesalahan lain yang mungkin disebabkan
% oleh \solmisasiMusic.
\score {
  % Gunakan original music
   \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduaratusdelapansatu_g_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratusdelapansatu_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratusdelapansatu_lyricTwo
  >>
  \midi {
    \tempo 4 = 100
  }
}

