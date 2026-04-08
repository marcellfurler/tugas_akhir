\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 198. Di Hening Pagi"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 80"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Monica Pariela - Parera"
      ", 2008"
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

gpmseratussembilandelapan_d_notes = {
  \key d\major
  \relative d'
  \repeat volta 2 {
    \partial 4 d8 e8 | fis8 a8 fis8 e8 fis8 e8 fis8 a8 | b8. a16 a2 \breathe \break
    e8 fis8 | a8 g8 g8 fis8 g8 fis8 g8. a16 | e2 r4 \break
    d8 e8 | fis8 a8 fis8 e8 fis8 e8 fis8 a8 | b8. a16 a2 \breathe \break
    e8 fis8 | a8 g8 g8 fis8 e8 d8 cis8 e8 | d2 \bar "||" \break

    ^\markup { \italic \bold "Refrein" } r8 d8 fis8 a8 | d2 cis4 \breathe fis,8 a8 | b2 a4 \break
    e8 fis8 | a8 g8 g8 fis8 e8 d8 cis8 d8 | e2 \break
    r8 d8 fis8 a8 | d2 cis4 \breathe fis,8 a8 | b2 a4 \break
    e8 fis8 | a8 g8 g8 fis8 e8 d8 cis8. e16 | d2 r4
  }
}

gpmseratussembilandelapan_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratussembilandelapan_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratussembilandelapan_d_music_solmisasi = \solmisasiMusic \gpmseratussembilandelapan_d_music

gpmseratussembilandelapan_lyricOne = \lyricmode {
    Di -- he -- ning pa -- gi, ku ta -- tap wa -- jah -- Mu, Tu -- han dan ber -- syu -- kur un -- tuk ha -- ri yang ba -- ru.
    Ku nan -- ti -- kan de -- ngan ta -- ngan ter -- bu -- ka, Tu -- han rah -- mat -- Mu yang ter -- se -- di -- a ba -- gi -- ku.
    O, ha -- ri ba -- ru, pa -- gi ba -- ru, ba -- ha gi -- a Kau da -- tang me -- nya -- pa -- ku. 
    O, ha -- ri ba -- ru, pa -- gi ba -- ru ba -- ha -- gi -- a Kau a -- da ber -- sa -- ma -- ku.
}

gpmseratussembilandelapan_lyricTwo = \lyricmode {
    Di -- he -- ning pa -- gi, ku ta -- tap wa -- jah -- Mu, Tu -- han dan me -- mo -- hon un -- tuk ke -- se -- dia -- an -- Mu
    me -- ne -- ma -- ni ku di ja -- lan yang 'kan ku tem -- puh meng -- il -- ha -- mi ku de -- ngan kar -- ya ba -- ru.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratussembilandelapan_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratussembilandelapan_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratussembilandelapan_lyricTwo
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
      \new Voice = melodi \gpmseratussembilandelapan_d_music
    }
    \new Lyrics \lyricsto melodi \gpmseratussembilandelapan_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratussembilandelapan_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}

