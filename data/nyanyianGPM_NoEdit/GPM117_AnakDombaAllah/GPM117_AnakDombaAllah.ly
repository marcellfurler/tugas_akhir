\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 117. Anak Domba Allah"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = G, 2/4, ♩ = 80"
      "Berdasarkan Lagu Trad. Pulau Haruku"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", PH, 1994"
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

% 1G-2A-3B-4C-5D-6E-7Fis

gpmseratustujuhbelas_g_notes = {
  \key g \major
  \relative g'{
    d'8 d8 d8 d8 | d8 b8 d8 c8 | \break
    b8 b8 c8 c8 | b4 b4 | \break
    g8 g8 b8 b8 | b8 (d8) a4 \breathe | \break

    d8 d8 d8 d8 | d8 b8 d8 c8 | \break
    b8 b8 c8 c8 | b4 b4 \breathe | \break
    g8 g8 b8 b8 | b8 (d8) a4 \breathe | \break

    d8 d8 d8 d8 | d8 b8 d8 c8 | \break
    b8 b8 c8 c8 | b4 b4 \breathe | \break
    g8 g8 b8 d8 | c8 (b8) | b4~ | b2
  }
}

gpmseratustujuhbelas_g_music = {
  \time 2/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratustujuhbelas_g_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratustujuhbelas_g_music_solmisasi = \solmisasiMusic \gpmseratustujuhbelas_g_music

gpmseratustujuhbelas_lyricOne = \lyricmode {
    A -- nak Dom -- ba Al -- lah, Kau meng -- ha -- pus do -- sa du -- nia,
    ka -- sih -- a -- ni ka -- mi.
    A -- nak dom -- ba Al -- lah, Kau meng -- ha -- pus do -- sa du -- nia,
    ka -- sih -- a -- ni ka -- mi.
    A -- nak dom -- ba Al -- lah, Kau meng -- ha -- pus do -- sa du -- nia,
    b'ri -- lah ka -- mi da -- mai.
}



% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratustujuhbelas_g_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratustujuhbelas_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratustujuhbelas_lyricTwo
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
      \new Voice = melodi \gpmseratustujuhbelas_g_music
    }
    \new Lyrics \lyricsto melodi \gpmseratustujuhbelas_lyricOne
    % \new Lyrics \lyricsto melodi \gpmsembilanpuluhlima_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}

