\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 287. Pegang Tangan Tuhan"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 85"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Hein Samangun"
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

gpmduaratusdelapantujuh_d_notes = {
  \key d \major
  \relative d'{
    fis8 fis8 fis8 g8 fis8 e8 d8 g8 | fis4 e4 d2 | \break
    e8 e8 e8 d8 e8 fis8 g8 fis8 | e2. r4 | \break
    fis8 fis8 fis8 g8 fis8 e8 d8 g8 | fis4 e4 d2 | \break
    e8 e8 e8 fis8 g8 fis8 e8 fis8 | d2. r4 | \break
    b'8 b8 b8 b8 g8 g8 a8 b8 | a2. r4 | \break
    g8 g8 g8 g8 g8 g8 a8 b8 | cis2. r4 | \break
    d8 d8 d8 d8 d8 d8 cis8 b8 | a2. r4 | \break
    g8 g8 a8 g8 fis8 fis8 e8 e8 | d2. r4 |
  }
}

gpmduaratusdelapantujuh_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusdelapantujuh_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusdelapantujuh_d_music_solmisasi = \solmisasiMusic \gpmduaratusdelapantujuh_d_music

gpmduaratusdelapantujuh_lyricOne = \lyricmode {
    Pe -- gang ta -- ngan Tu -- han, eng -- kau yang le -- mah,
    ha -- rap dan per -- ca -- ya pa -- da -- Nya.
    Pe -- gan ta -- ngan -- Nya sa -- at ra -- sa su -- sah,
    hi -- dup -- mu pas -- ti di -- ku -- at -- kan.

    Pe -- gang ta -- ngan Tu -- han yang e -- rat,
    ya -- kin I -- a de -- kat di ha -- ti.
    Pe -- gang ta -- ngan -- Nya 'ti -- ap wak -- tu,
    pas -- ti hi -- dup -- mu ba -- ha -- gi -- a.
}


% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratusdelapantujuh_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratusdelapantujuh_lyricOne
    % \new Lyrics \lyricsto melodi \gpmduaratusdelapantujuh_lyricTwo
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
      \new Voice = melodi \gpmduaratusdelapantujuh_d_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratusdelapantujuh_lyricOne
    % \new Lyrics \lyricsto melodi \gpmduaratusdelapantujuh_lyricTwo
  >>
  \midi {
    \tempo 4 = 85
  }
}

