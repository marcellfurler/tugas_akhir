\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 280. Hidop Dalam Tuhan"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = C, 4/4, ♩ = 90"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "John F. Beay"
        ", 2009"
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

gpmduaratusdelapanpuluh_c_notes = {
  \key c \major
  \relative c'{
    e8 e8 e8 e8 e8 e8 g8 g16 (f16) | e4. e16 (d16) e2 \breathe | \break
    d8 d8 d8 d8 e8 d8 c8 d8 | e4. f16 (e16) d4 r4 \breathe | \break
    e8 e8 e8 e8 e8 e8 g8 g16 (f16) | e4. e16 (d16) e2 \breathe | \break
    d8 d8 d8 d8 e8 d8 e8 e16 (d16) | c2. r4 | \break
    
    c'8 c8 c8 c8 c8 c8 c16 c16 c16 c16 | a8 a4 a16 g16 a2 \breathe | \break
    a8 a8 a8 a8 g8 g8 g8 a16 (g16) | g2. r4 | \break
    c8 c8 c8 c8 c8 c8 c16 c16 c16 c16 | a8 a4 a16 g16 a2 \breathe | \break
    a8 a8 a8 a8 g8 g8 g8 a16 (g16) | g2. r4 | \break
    e8 e8 e8 e8 e8 e8 g8 g16 (f16) | e4. e16 (d16) e2 \breathe | \break
    d8 d8 d8 d8 e8 d8 e8 e16 (d16) | c1* 4/4 | \break
  }
}

gpmduaratusdelapanpuluh_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusdelapanpuluh_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusdelapanpuluh_c_music_solmisasi = \solmisasiMusic \gpmduaratusdelapanpuluh_c_music

gpmduaratusdelapanpuluh_lyricOne = \lyricmode {
    Hi -- dop da -- lam Tu -- han pa -- leng ma -- nis e, 
    sa -- tu ha -- ti sa -- tu ra -- sa gan -- dong e.
    Su -- sah deng sa -- nang sio sa -- ma ra -- sa e,
    i -- nga jan -- ji Tu -- han, gan -- dong e.

    Da -- lam su -- sah ja -- ngan lu -- pa jan -- ji Tu -- han, gan -- dong e,
    ma -- ri pe -- gang ta -- ngan ma -- nis e.
    Ja -- ngan bu -- ang mu -- ka da -- ri ba -- su -- da -- ra gan -- dong e,
    i -- nga jan -- ji Tu -- han ma -- nis e.
    Ma -- ri ba -- ngong hi -- dop sa -- ma- sa -- ma e,
    sa -- tu ha -- ti, sa -- tu jan -- tong e. 
}




% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratusdelapanpuluh_c_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratusdelapanpuluh_lyricOne
    % \new Lyrics \lyricsto melodi \gpmduaratusdelapanpuluh_lyricTwo
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
      \new Voice = melodi \gpmduaratusdelapanpuluh_c_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratusdelapanpuluh_lyricOne
    % \new Lyrics \lyricsto melodi \gpmduaratusdelapansatu_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

