\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 1. Akang Manis Lawang"
  subtitle = "Berdasarkan Mazmur 133 : 1, 150 : 1 - 6"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 80 - Irama Tifa Maluku"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 2010"
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

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmnolnolsatu_d_notes = {
  \key d \major
  \relative d' 
  \repeat volta 3{
    r4 fis8 e8 fis4 g4 | b4 a4. e8 fis8 g8 | a8 a8 a8 fis8 b4. fis8 | a4 g2. | \break
    r4 e4 e4 fis4 | a4 g2 \breathe a8 a8 | a8 a8 a8 a8 a8 b8 a8 g8 | fis1* 4/4 | \break
    r4 fis8 e8 fis4 g4 | b4 a4. e8 fis8 g8 | a8 a4. fis8 g4 a8 |  \slurDashed b2 (d2) \slurSolid | \break

    % reef
    r4 b4 cis4. e8 | (d4. b8) a2 | r4 e8 fis8 g8 (fis8) e4 | (fis4. a8) a2 | \break
    r4 b4 cis4. e8 | (d4. b8) a2 | r4 e8 fis8 a8 (fis8 ) fis4 | e4. (d8) d2 |
  }
}

gpmnolnolsatu_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmnolnolsatu_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmnolnolsatu_d_music_solmisasi = \solmisasiMusic \gpmnolnolsatu_d_music

gpmnolnolsatu_lyricOne = \lyricmode {
  A -- kang ma -- nis ka -- wang, ka -- lo ka -- tong sa -- mu -- a su ba -- kum -- pul.
  Ka -- tong ma -- nya -- nyi sa -- ma- sa -- ma pu -- ji Te -- te Ma -- nis e.
  To -- ki ti -- fa den -- dang, la ra -- me- ra -- me ang -- ka \set ignoreMelismata = ##t su -- a -- _ ra. \set ignoreMelismata = ##f

%   reef
    _ Ka -- tong bar -- su -- ka som -- ba Te __ te Ma -- nis.
    Ka -- tong bar -- su -- ka som -- ba Te __ te Ma -- nis.
}

gpmnolnolsatu_lyricTwo = \lyricmode {
  A -- yo ba -- su -- da -- ra ka -- tong sa -- mu -- a ba -- ku gan -- deng ta -- ngan.
  Ka -- tong ba -- den -- dang mu -- li -- a -- kan ka -- sih A -- ma yang ke -- kal.
  To -- ki to -- leng- to -- leng, ti -- op ta -- hu -- ri ang -- ka \set ignoreMelismata = ##t pu -- ji -- _ an. \set ignoreMelismata = ##f
}

gpmnolnolsatu_lyricThree = \lyricmode {
  A -- yo lo -- ko leng -- so ka -- tong ma -- na -- ri de -- ngan su -- ka -- ri -- a.
  Ka -- tong som -- ba -- yang, ja -- ga hi -- dop o -- rang ba -- su -- da -- ra e.
  To -- ki to -- to -- bu -- ang, deng ti -- op su -- ling ang -- ka syu -- kur. __
}


% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmnolnolsatu_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmnolnolsatu_lyricOne
    \new Lyrics \lyricsto melodi \gpmnolnolsatu_lyricTwo
    \new Lyrics \lyricsto melodi \gpmnolnolsatu_lyricThree
    % \new Lyrics \lyricsto melodi \gpmnolnolsatu_lyricFour
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
      \new Voice = melodi \gpmnolnolsatu_d_music
    }
    \new Lyrics \lyricsto melodi \gpmnolnolsatu_lyricOne
    \new Lyrics \lyricsto melodi \gpmnolnolsatu_lyricTwo
    \new Lyrics \lyricsto melodi \gpmnolnolsatu_lyricThree
    % \new Lyrics \lyricsto melodi \gpmnolnolsatu_lyricFour
  >>
  \midi {
    \tempo 4 = 80
  }
}
