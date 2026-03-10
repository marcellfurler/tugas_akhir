\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 166. Ayo Bawa Persembahanmu"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 2/4, ♩ = 100"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
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

% d --> 1-D, 2-E, 3-Fis, 4-G, 5-A, 6-B, 7-Cis, 8-D

gpmseratusenamenam_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 5 {
    % Baris pertama
    \partial 4 a8 a8 | d8 d8 d8 e8 fis8 fis8 fis8 g8 | a4 b4 | a8 fis8 r4 | \break
    d'4 b8 (a8) | b8 (a4) a8 | a8 e8 fis8 g8 | g8 (fis4.) | \break
    r4 a,8 a8 | d8 d8 d8 e8 fis8 fis8 fis8 g8 | a4 b4 | a8 fis8 r4 | \break
    d'4 b8 (a8) | a8 (b8) r4 | a4 b8 (a8) | a8 (fis8) r4 | \break
    fis8 fis8 a8 fis8 | e8 d8 e8 d8 | d2 | r4  
  }
}

gpmseratusenamenam_d_music = {
  \time 2/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenamenam_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenamenam_d_music_solmisasi = \solmisasiMusic \gpmseratusenamenam_d_music

gpmseratusenamenam_lyricOne = \lyricmode {
    A -- yo ba -- wa per -- sem -- bah -- an -- mu ke -- pa -- da Tu -- han.
    Ba -- wa -- ah de -- ngan ra -- sa se -- nang.
    A -- yo ba -- wa per -- sem -- bah -- an -- mu ke -- pa -- da Tu -- han.
    Ba -- wa -- lah, ba -- wa -- lah. Tu -- han sam -- but per -- sem -- ba -- han -- mu.
}

gpmseratusenamenam_lyricTwo = \lyricmode {
    A -- yo ba -- wa kor -- ban syu -- kur -- mu ke al -- tar Tu -- han.
    Ba -- wa -- lah de -- ngan tem -- bang syu -- kur.
    A -- yo ba -- wa kor -- ban syu -- kur -- mu ke al -- tar Tu -- han.
    Ba -- wa -- lah, ba -- wa -- lah. Tu -- han sam -- but kor -- ban syu -- kur -- mu.
}
gpmseratusenamenam_lyricThree  = \lyricmode {
    A -- yo ang -- kat -- lah sua -- ra -- mu sam -- but ka -- sih Tu -- han.
    Ang -- kat -- lah de -- ngan sua -- ra mer -- du.
    A -- yo ang -- kat -- lah sua -- ra -- mu sam -- but ka -- sih Tu -- han.
    Ang -- kat -- lah, ang -- kat -- lah. Tu -- han sam -- but sua -- ra ha -- ti -- mu.
}
gpmseratusenamenam_lyricFour = \lyricmode {
    A -- yo bu -- nyi -- kan te -- puk ta -- ngan -- mu pu -- ji Tu -- han.
    Bu -- nyi -- kan de -- ngan su -- ka ri -- a.
    A -- yo bu -- nyi -- kan te -- puk ta -- ngan -- mu pu -- ji Tu -- han.
    Bu -- nyi -- kan, bu -- nyi -- kan. Tu -- han sam -- but bu -- nyi ta -- ngan -- mu.
}
gpmseratusenamenam_lyricFive = \lyricmode{
    A -- yo ha -- rum -- kan ta -- ri -- an -- mu ke -- pa -- da Tu -- han.
    Ha -- rum -- kan de -- nga se -- nyum ka -- sih.
    A -- yo ha -- rum -- kan ta -- ri -- an -- mu ke -- pa -- da Tu -- han. 
    Ha -- rum -- kan, ha -- rum -- kan. Tu -- han sam -- but ta -- ri syu -- kur -- mu.
}


% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusenamenam_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusenamenam_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusenamenam_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratusenamenam_lyricThree
    \new Lyrics \lyricsto melodi \gpmseratusenamenam_lyricFour
    \new Lyrics \lyricsto melodi \gpmseratusenamenam_lyricFive
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
      \new Voice = melodi \gpmseratusenamenam_d_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusenamenam_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusenamenam_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratusenamenam_lyricThree
    \new Lyrics \lyricsto melodi \gpmseratusenamenam_lyricFour
    \new Lyrics \lyricsto melodi \gpmseratusenamenam_lyricFive
  >>
  \midi {
    \tempo 4 = 100
  }
}

