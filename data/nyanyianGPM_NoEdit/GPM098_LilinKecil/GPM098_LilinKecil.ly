\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 98. Lilin Kecil"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 90"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
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

% 1D, 2E, 3Fis, 4G, 5A, 6B, 7Cis

gpmsembilanpuluhdelapan_d_notes = {
  \key d \major
  \relative d' {
    fis4 fis8 g8 a4. fis8 | a4 g8 fis8 e2 \breathe | \break
    e8 e8 e8 fis8 g4 g8 b8 | a4 g4 fis2 \breathe | \break
    fis4 fis8 g8 a4. fis8 | a4 g8 fis8 e2 \breathe | \break
    e8 e8 e8 fis8 g4 a8 g8 | fis4 e4 d2 \breathe | \break

    b'8 b8 b8 b8 b4 b4 \breathe | a8 a8 a8 a8 a4 a4 | \break
    g4 g4 fis4 g4 | a2. r4 | \break
    b8 b8 b8 b8 b4 b4 \breathe | a8 a8 a8 a8 a4 a4 | \break
    g4 g4 fis4 e4 | d2. r4 |

  }
}

gpmsembilanpuluhdelapan_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmsembilanpuluhdelapan_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmsembilanpuluhdelapan_d_music_solmisasi = \solmisasiMusic \gpmsembilanpuluhdelapan_d_music

gpmsembilanpuluhdelapan_lyricOne = \lyricmode {
    Li -- lin ke -- cil ber -- si -- nar te -- rang, Ye -- sus su -- dah la -- hir di Bet -- le -- hem.
    Li -- lin ke -- cil, ber -- si -- nar te -- rang, ka -- mi pu -- ji Ye -- sus ha -- ti se -- nang.
    Ha -- le, Ha -- le -- lu -- ya, pu -- ji, pu -- ji Tu -- han di ha -- ri Na -- tal.
    Ha -- le, Ha -- le -- lu -- ya, pu -- ji, pu -- ji Tu -- han di ha -- ri Na -- tal.
}



% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmsembilanpuluhdelapan_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmsembilanpuluhdelapan_lyricOne
    % \new Lyrics \lyricsto melodi \gpmsembilanpuluhdelapan_lyricTwo
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
      \new Voice = melodi \gpmsembilanpuluhdelapan_d_music
    }
    \new Lyrics \lyricsto melodi \gpmsembilanpuluhdelapan_lyricOne
    % \new Lyrics \lyricsto melodi \gpmsembilanpuluhdelapan_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

