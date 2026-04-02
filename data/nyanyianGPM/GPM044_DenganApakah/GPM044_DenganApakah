\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 44. Dengan Apakah"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 90"
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

% 1D, 2E, 3Fis, 4G, 5A, 6B, 7Cis

gpmempatpuluhempat_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 2 {
    % Baris pertama
    \partial 4 fis8 g8 | a4 a4 a4 a8 a8 | b4 b4 a4 d,8 e8 | fis4 e8 d8 e4 fis4 | e2 r4 \break
    fis8 g8 | a4 a4 a4 a8 a8 | b4 b4 a4 d,8 e8 | fis4 g8 fis8 e4 cis4 | d2 r4 \break
    cis8 d8 | e4 e4 e4 d8 e8 | fis4 fis4 fis4 e8 fis8 | g4 g8 g8 fis4 \slurDashed (fis8 d8) \slurSolid | e2 r4 \break
    fis8 e8 | d4 d4 d4 e8 d8 | d4 b4 b4 d8 e8 | fis4. fis8 fis4 a4 | \break
    a4 g4 r4 fis8 e8 | d4 d8 d8 cis4. d8 | d2 r4 \break 

  }
}

gpmempatpuluhempat_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmempatpuluhempat_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmempatpuluhempat_d_music_solmisasi = \solmisasiMusic \gpmempatpuluhempat_d_music

gpmempatpuluhempat_lyricOne = \lyricmode {
    De -- ngan a -- pa -- kah 'kan ku ba -- las -- kan se -- mu -- a pe -- ngor -- ba -- nan -- Mu.
    De -- ngan a -- pa -- jah 'kan ku ba -- yar -- kan se -- mu -- a pe -- ngor -- ba -- nan -- Mu.
    Ji -- wa ter -- sik -- sa ber -- pe -- luh do -- sa, na -- mun Kau \set ignoreMelismata = ##t me -- nga -- si -- hi -_ ku. \set ignoreMelismata = ##f
    _ B'ri -- kan -- lah a -- ku Roh dan Hik -- mat -- Mu bi -- ar a -- ku ja -- di ba -- ru
    mau i -- ku pa -- da fir -- man -- Mu.
}

gpmempatpuluhempat_lyricTwo = \lyricmode {
  De -- ngan a -- pa -- kah 'kan ku be -- ri -- kan yang a -- da pa -- da di -- ri -- ku.
  De -- ngan a -- pa -- kah 'kan ku buk -- ti -- kan se -- mu -- a pe -- ngab -- di -- an -- ku.
  Su -- rut lang -- kah -- ku me -- ngi -- ku -- ti -- Mu na -- mun Kau mau me -- mang -- gil -- ku.
  Bu -- ka ma -- ta -- ku, bu -- ka ha -- ti -- ku, bi -- ar a -- ku s'la -- ma hi -- dup
  se -- ti -- a pa -- da jan -- ji -- Mu.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmempatpuluhempat_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmempatpuluhempat_lyricOne
    \new Lyrics \lyricsto melodi \gpmempatpuluhempat_lyricTwo
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
      \new Voice = melodi \gpmempatpuluhempat_d_music
    }
    \new Lyrics \lyricsto melodi \gpmempatpuluhempat_lyricOne
    \new Lyrics \lyricsto melodi \gpmempatpuluhempat_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

