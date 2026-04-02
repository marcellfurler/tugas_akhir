\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 108. Bahagialah Mereka"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 100"
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

% d --> 1-D, 2-E, 3-Fis, 4-G, 5-A, 6-B, 7-Cis, 8-D

gpmsembilansembilan_d_notes = {
  \key d \major
  \relative d'{
  
    a'4 a4 a4 a8 a8 | b4 (a4) fis2 | \break
    e4. e8 d4. e8 | fis2. r4 | \break
    a4 a4 a4 a8 a8 | b4 a4 fis2 | \break
    e4. d8 fis4. e8 | d2. r4 \break  \bar "||"
    \repeat volta 2{
        d'4 b4 d4 b4 | a2. r4 |  \break
        d4 b4 d4 b4 a2 r4 b8 a8 | fis4 fis2 r8 d8 | \break
    }
    \alternative {
        {e4. d8 e4. fis8 | a4 a2 r4 \break}
        {e4. d8 fis4. e8 | d4 d2 r4}
    }
  }
}


gpmsembilansembilan_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmsembilansembilan_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmsembilansembilan_d_music_solmisasi = \solmisasiMusic \gpmsembilansembilan_d_music

gpmsembilansembilan_lyricOne = \lyricmode {
    Lon -- ceng Na -- tal ber -- bu -- nyi, in -- dah dan mer -- du.
    Su -- dah la -- hir di Bet -- le -- hem, Sang I -- ma -- nu -- el.
    Ding, dong, ding, dong, ding.
    Ding, dong, ding, dong, ding.
    A -- yo ki -- ta sem -- bah dan pu -- ji Di -- a.
    bah dan pu -- ji Di -- a. 
}



% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmsembilansembilan_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmsembilansembilan_lyricOne
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
      \new Voice = melodi \gpmsembilansembilan_d_music
    }
    \new Lyrics \lyricsto melodi \gpmsembilansembilan_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
  >>
  \midi {
    \tempo 4 = 100
  }
}

