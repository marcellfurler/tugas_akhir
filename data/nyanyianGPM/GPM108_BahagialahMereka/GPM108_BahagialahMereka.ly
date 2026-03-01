\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 108. Bahagialah Mereka"

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

gpmseratusdelapan_c_notes = {
  \key c \major
  \relative c'
  \repeat volta 2 {
    % Baris pertama
    \partial 4 r8 g'8 |
    g8 e8 g8 c8 |
    a4 a8 f8 |
    f8 d8 a'8 g8 |
    g4 g4 ~ |
    g4 \break

    % Baris kedua
    r8 e8 |
    e8 c8 f8 e8 |
    e4 c8 c8 |
    \slurDashed c8( a8) \slurSolid b8 c8 |
    d4 d4 ~ |
    d4 \break

    % Baris ketiga
    r8 g8 |
    g8 e8 g8 c8 |
    a4 a8 f8 |
    f8 d8 a'8 g8 |
    g4 g4 ~ |
    g4 \break

    % Baris keempat
    r8 e8 |
    e8 c8 f8 e8 |
    e8 (a8) a4 ~ |
    a4\fermata
    r8 a8 |
    a8( c8) c8 b8 |
    c4 c4 ~ |
    c4
  }
}

gpmseratusdelapan_c_music = {
  \time 2/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusdelapan_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusdelapan_c_music_solmisasi = \solmisasiMusic \gpmseratusdelapan_c_music

gpmseratusdelapan_lyricOne = \lyricmode {
  Ba -- ha -- gia -- lah me -- re -- ka yang hi -- dup se -- der -- ha -- na.
  Ba -- ha -- gia -- lah me -- re -- ka yang re -- la ber -- ba -- gi.
  Ba -- ha -- gia -- lah me -- re -- ka yang sung -- guh  tu -- lus ha -- ti.
  Ba -- ha -- gia -- lah me -- re -- ka yang mem -- ba -- wa da -- mai.
}

gpmseratusdelapan_lyricTwo = \lyricmode {
  Ba -- ha -- gia -- lah me -- re -- ka yang tak me -- man -- dang mu -- ka.
  Ba -- ha -- gia -- lah me -- re -- ka yang
  \set ignoreMelismata = ##t
  \once\override LyricText.self-alignment-X = #LEFT
  ta --
  \once\override LyricText.self-alignment-X = #0.6
  bur
  \set ignoreMelismata = ##f
  ke a -- di -- lan.
  Ba -- ha -- gia -- lah me -- re -- ka yang rin -- du  ber -- se -- ku -- tu.
  Ba -- ha -- gia -- lah me -- re -- ka yang ta -- hu  ber -- syu -- kur.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusdelapan_c_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
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
      \new Voice = melodi \gpmseratusdelapan_c_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}