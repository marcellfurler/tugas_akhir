\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 149. Saya Punya Kekasih"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = C, 4/4, ♩ = 90"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Josia G. Jamlean"
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

gpmseratusempatsembilan_c_notes = {
  \key c \major
  \relative c'{
    g'8 e2 c'8 b8 a8 | g8 e2 \breathe a8 g8 e8 | \break
    f8 d2 a'8 g8 fis8 | a8 g1* 5/8 r4 | \break
    g8 e2 c'8 b8 a8 | g8 e2 \breathe a8 g8 e8 | \break
    f8 d4. f8 f8 e8 d8 | c2 r4 b'8 c8 | \break
    d8 d4 c8 d8 d8 c8 d8 | e8 e8 e8 d8 c4 r8 b16 c16 | \break
    d8 d8 d8 (c8) b8 b8 \tuplet 3/2 {c8 b8 a8} | g2 r4 b8 c8 | \break
    d8 d4 c8 d8 d8 c8 d8 | e8 e8 e8 d8 c4 r8 b16 c16 | \break
    d8 d8 d8 c8 b8 b8 c8 d8 | c1* 4/4 |
  }
}

gpmseratusempatsembilan_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusempatsembilan_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusempatsembilan_c_music_solmisasi = \solmisasiMusic \gpmseratusempatsembilan_c_music

gpmseratusempatsembilan_lyricOne = \lyricmode {
    Sa -- ya pu -- nya ke -- ka -- sih na -- ma -- Nya Ye -- sus,
    Ju -- ru S'la -- mat -- ku. 
    Sa -- ya pu -- nya ha -- ra -- pan. Dia a -- kan da -- tang un -- tuk men -- jem -- put. 
    Ba -- wa ma -- suk ke sur -- ga ru -- mah Ba -- pa yang ku -- dus 
    kar -- 'na ka -- sih -- Nya sung -- guh a -- mat a -- jaib 
    ba -- wa ma -- suk ke sur -- ga ru -- mah Ba -- pa yang ku -- dus.
    T'ri -- ma jan -- ji s'la -- mat hi -- dup yang ke -- kal.
}


% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusempatsembilan_c_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusempatsembilan_lyricOne
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
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratusempatsembilan_c_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusempatsembilan_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

