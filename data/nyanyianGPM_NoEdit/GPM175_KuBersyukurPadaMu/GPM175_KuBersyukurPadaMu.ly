\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 175. Ku Bersyukur PadaMu"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = C, 4/4, ♩ = 80"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "O. Laisina"
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

gpmseratustujuhlima_c_notes = {
  \key c \major
  \relative c' {
    g'4. g8 g8 e8 d8 c8 | a'4. g8 f2 | \break
    g4. a8 g8 e8 c8 e8 | d2. r4 | \break
    g4. g8 a8 g8 e8 c8 | a'4. b8 c4 b8 a8 | \break
    g4 f4 e4 d4 | c2. c'8 b8 | \break
    a4 a4. c8 b8 a8 | g4 e2 e8 f8 | \break
    g4 c4 b4. c8 | d2. e8 d8 | \break
    c4 g4. c8 c8 b8 | a4 c2 c8 d8 | \break
    e4 g,4 d'4. e8 | c1* 4/4 |
  }
}

gpmseratustujuhlima_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratustujuhlima_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratustujuhlima_c_music_solmisasi = \solmisasiMusic \gpmseratustujuhlima_c_music

gpmseratustujuhlima_lyricOne = \lyricmode {
    Ku ber -- syu -- kur pa -- da -- Mu Tu -- han, a -- tas ka -- sih se -- tia -- Mu.
    Ku -- a -- gung -- kan na -- ma -- Mu Tu -- han, di -- se -- pan -- jang hi -- dup -- ku.
    Ku -- nya -- nyi -- kan dan ku -- mas -- yur -- kan ke -- se -- tia -- an -- Mu, Tu -- han
    a -- tas ber -- kat ke -- mu -- ra -- han -- Mu di se -- pan -- jang hi -- dup -- ku.  
}


% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratustujuhlima_c_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratustujuhlima_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratustujuhlima_lyricTwo
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
   <<
    \new Staff {
      \new Voice = melodi \gpmseratustujuhlima_c_music
    }
    \new Lyrics \lyricsto melodi \gpmseratustujuhlima_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}

