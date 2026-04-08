\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 95. Bintang Di Timur"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 2/4, ♩ = 90"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 1994"
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

gpmsembilanpuluhlima_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 2 {
    a'4 a8 b8 | a4 fis4 | b4 b8 b8 | b4 a4 \breathe | \break
    a4 a8 b8 | a4 fis4 | e8 e8 e8 fis8 | e2 \breathe | \break
    a4 a8 b8 | a4 fis4 | b8 b8 b8 b8 | d2 \breathe | \break
    a8 a8 a8 b8 | a8 fis8 fis8 e8 | d4 d4~ | d4 r4 |

  }
}

gpmsembilanpuluhlima_d_music = {
  \time 2/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmsembilanpuluhlima_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmsembilanpuluhlima_d_music_solmisasi = \solmisasiMusic \gpmsembilanpuluhlima_d_music

gpmsembilanpuluhlima_lyricOne = \lyricmode {
  Bin -- tang di Ti -- mur si -- nar -- nya te -- rang
  ja --  di pe -- nun -- tun lang -- kah hi -- dup -- ku. 
  Ki -- ta me -- nu -- ju kan -- dang Bet -- le -- hem, 
  Ye -- sus su -- dah la -- hir di pa -- lu -- ngan.
}

gpmsembilanpuluhlima_lyricTwo = \lyricmode {
  Ki -- ta me -- li -- hat bin -- tang yang be -- sar
  di pun -- cak po -- hon Na -- tal yang in -- dah.
  Ki -- ta me -- nyam -- bu Ye -- sus pe -- ne -- bus,
  di -- se -- ki -- tar bin -- tang yang ber -- ki -- lau.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmsembilanpuluhlima_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmsembilanpuluhlima_lyricOne
    \new Lyrics \lyricsto melodi \gpmsembilanpuluhlima_lyricTwo
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
      \new Voice = melodi \gpmsembilanpuluhlima_d_music
    }
    \new Lyrics \lyricsto melodi \gpmsembilanpuluhlima_lyricOne
    \new Lyrics \lyricsto melodi \gpmsembilanpuluhlima_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

