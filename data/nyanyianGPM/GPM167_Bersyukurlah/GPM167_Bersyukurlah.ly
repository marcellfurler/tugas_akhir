\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 167. Bersyukurlah"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = C, 4/4, ♩ = 80"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Haris Paais"
      " - Juli, 2007"
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

gpmseratusenamtujuh_c_notes = {
  \key c \major
  \relative c' {
    e4 e8 d8 c4 e8 f8 | g4. a8 g4. g8 | \break
    c4 g8 g8 f4 e4 | d2. r4 | \break
    d4 d8 c8 d4. e8 | f4. g8 f4. g8 | \break
    b8 b8 b8 a8 g4 f4 | e2. r4 | \break
    e4 e8 d8 c4 e8 f8 | g4. a8 g4. g8 | \break
    c4 g8 g8 a4 ais4 | a2. r4 | \break
    a4. a8 a4 a8 b8 | c4. a8 g4. \breathe g8 | \break
    b8 b8 b8 a8  g4 b4 | c2. r4
  }
}

gpmseratusenamtujuh_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenamtujuh_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenamtujuh_c_music_solmisasi = \solmisasiMusic \gpmseratusenamtujuh_c_music

gpmseratusenamtujuh_lyricOne = \lyricmode {
    Ber -- syu -- kur -- lah dan ber -- syu -- kur lah, ber -- syu -- kur ba -- gi Tu -- han. 
    Ka -- sih yang tak per -- nah pu -- dar di b'ri -- kan ba -- gi u -- mat -- Nya.
    Ber -- syu -- kur -- lah dan ber -- syu -- kur lah, ber -- syu -- kur ba -- gi Tu -- han. 
    Ka -- sih yang tak per -- nah pu -- dar di b'ri -- kan ba -- gi u -- mat -- Nya.
}



% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusenamtujuh_c_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusenamtujuh_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
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
      \new Voice = melodi \gpmseratusenamtujuh_c_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusenamtujuh_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}

