\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 161. Yesus Juru Selamat Ku"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 90"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Berthy Pattiasina"
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

% d --> 1-D, 2-E, 3-Fis, 4-G, 5-A, 6-B, 7-Cis, 8-D

gpmseratusenamsatu_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 3 {
    fis8 fis4 d8 cis8 d8 e8 fis8 | d2. r4 | \break
    a'8 a4 fis8 e8 fis8 g8 a8 | fis2. r4 | \break
    b8 b4 b8 a8 a8 a8 g8 | fis8 fis8 g8 a8 g4 r4 | \break
    fis8 fis4 d8 cis8 d8 e8 cis8 | d2. r4
  }
}

gpmseratusenamsatu_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenamsatu_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenamsatu_d_music_solmisasi = \solmisasiMusic \gpmseratusenamsatu_d_music

gpmseratusenamsatu_lyricOne = \lyricmode {
    Ye -- sus ju -- ru se -- la -- mat -- ku.
    Ye -- sus ju -- ru se -- la -- mat -- mu.
    Ye -- sus ju -- ru se -- la -- mat ki -- ta se -- mu -- a.
    Ye -- sus ju -- ru se -- la -- mat -- ku.
}

gpmseratusenamsatu_lyricTwo = \lyricmode {
    Ye -- sus na -- ko -- da ba -- gi -- ku.
    Ye -- sus na -- ko -- da ba -- gi -- mu.
    Ye -- sus na -- ko -- da ba -- gi ki -- ta se -- mu -- a.
    Ye -- sus na -- ko -- da ba -- gi -- ku.
}
gpmseratusenamsatu_lyricThree = \lyricmode {
    Ye -- sus pe -- lin -- dung hi -- dup -- ku.
    Ye -- sus pe -- lin -- dung hi -- dup -- mu.
    Ye -- sus pe -- lin -- dung hi -- dup ki -- ta se -- mu -- a.
    Ye -- sus pe -- lin -- dung hi -- dup -- ku.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusenamsatu_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusenamsatu_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusenamsatu_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratusenamsatu_lyricThree
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
      \new Voice = melodi \gpmseratusenamsatu_d_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusenamsatu_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusenamsatu_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratusenamsatu_lyricThree
  >>
  \midi {
    \tempo 4 = 90
  }
}

