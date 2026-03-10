\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 229. Berkatilah, Ya Tuhan"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = F, 4/4, ♩ = 80"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Sonia C. Parera - Hummel"
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

% f --> 1-F, 2-G, 3-A, 4-Bes, 5-C, 6-D, 7-E, 8-F

gpmduaratusduasembilan_f_notes = {
  \key f \major
  \relative f' {
    f4 f8 g8 e4 d8 c8 | f2. g8 a8 | \break
    bes8 bes8 bes8 a8 bes8 a8 f8 a8 | g2. r4 | \break
    f4 f8 g8 e4 d8 c8 | f2. g8 a8 | \break
    bes8 bes8 bes8 a8 bes8 a8 bes8 c8 | c2. r4 | \break

    bes4 bes8 a8 g2 | c4 c8 bes8 a4 a16 g16 a8 | \break
    bes8 bes8 bes8 a8 bes8 a8 g8 f8 | f2. r4 | \break
    f1* 4/4 | f1* 3/4 r4 |
  }
}

gpmduaratusduasembilan_f_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusduasembilan_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusduasembilan_f_music_solmisasi = \solmisasiMusic \gpmduaratusduasembilan_f_music

gpmduaratusduasembilan_lyricOne = \lyricmode {
    Ber -- ka -- ti -- lah ya Tu -- han, ka -- ru -- nia -- kan rah -- mat -- Mu a -- tas ka -- mi.
    Ka -- si -- ha -- ni u -- mat -- Mu, tun -- tun ka -- mi pa -- da ja -- lan yang be -- nar.
    Bim -- bi -- ngan -- Mu, ku -- a -- sa -- Mu, s'mo -- ga ser -- ta -- i ka -- mi s'la -- ma- la -- ma -- nya.
    A -- min.
}



% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratusduasembilan_f_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratusduasembilan_lyricOne
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
      \new Voice = melodi \gpmduaratusduasembilan_f_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratusduasembilan_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}

