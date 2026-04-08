\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 224. Nyatakanlah Dalam Hidupmu"

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

% d --> 1-D, 2-E, 3-Fis, 4-G, gis, 5-A, 6-B, 7-Cis, 8-D

gpmduaratusduaempat_d_notes = {
  \key d \major
  \relative d'{
    fis8 fis8 fis8 fis8 e8 d8 d8 e8 | fis2. r4 | fis8 fis8 fis8 fis8 g8 g8 fis8 g8 | \break
    a2 r8 fis8 e8 d8 | b'4 b4 b8 g8 g8 b8 | a8 a4 g8 fis4 r4 | \break
    gis8 gis4 fis8 e8 gis8 b8 gis8 | a2. r4 | \break

    fis8 fis8 fis8 fis8 e8 d8 d8 e8 | fis2. r4 | fis8 fis8 fis8 fis8 g8 g8 fis8 g8 | \break
    a2 r8 fis8 e8 d8 | b'4 b4 b8 g8 g8 b8 | a8 a4 g8 fis4 r4 | \break
    e8 e8 e8 fis8 g8 e8 d8 cis8 | d2 r4  a'8 b8 | \break

    a4 fis4 g8 fis8 g8 b8 | a4 fis4 r4 a8 a8 | g4 e4 fis8 e8 d8 e8 | \break
    fis2 r4 a8 g8 | fis4 fis4 g8 fis8 g8 a8 | b2 r4 cis8 b8 | \break
    a4 fis4 e8 a8 g8 e8 | d2. r4 | 
  }
}

gpmduaratusduaempat_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusduaempat_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusduaempat_d_music_solmisasi = \solmisasiMusic \gpmduaratusduaempat_d_music

gpmduaratusduaempat_lyricOne = \lyricmode {
    Nya -- ta -- kan -- lah da -- lam hi -- dup -- mu,
    nya -- ta -- kan pa -- da ti -- ap o -- rang,
    bah -- wa ka -- sih Tu -- han tak' kan per -- nah ber -- u -- bah,
    ki -- ni dan s'la -- ma- la -- ma -- nya.
    Nya -- ta -- kan -- lah ke -- mu -- lia -- an -- Nya,
    da -- lam ka -- ta dan per -- bu -- at -- an,
    ja -- uh -- kan -- lah hi -- dup da -- ri s'ga -- la yang ja -- hat,
    ya -- kin Tu -- han a -- da ser -- ta -- mu.
    Ha -- le -- lu -- ya, Al -- lah yang per -- ka -- sa.
    Ma -- ha kua -- sa, A -- gung kar -- ya -- Nya. 
    Ma -- ha ting -- gi, Ma -- ha mu -- li -- a, 
    ba -- gi ki -- ta hi -- dup ba -- ha -- gia. 
}


% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratusduaempat_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratusduaempat_lyricOne
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
      \new Voice = melodi \gpmduaratusduaempat_d_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratusduaempat_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

