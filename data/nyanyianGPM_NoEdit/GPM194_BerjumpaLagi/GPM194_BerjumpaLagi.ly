\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 194. Berjumpa Lagi"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = C, 4/4, ♩ = 90"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 1997"
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

gpmseratussembilanempat_c_notes = {
  \key c \major
  \relative c'
  \repeat volta 2 {
    r4 g'4 g4. f8 | f8 e2 e8 e8 d8 | \break
    c8 c8 c8 c8 b4 c4 | d1* 4/4 | \break
    r4 f4 f4. e8 | e8 d2 e8 d8 c8 | \break
    b8 b8 a'8 a8 g8 g4 f8 e1* 4/4 | \break
    r4 g4 g4. f8 | f8 e2 e8 e8 d8 | \break
    c8 c8 c8 c8 c'4. b8 | a1* 4/4 | \break
    r4 f4 g4. a8 | g8 e2 g8 f8 e8 | \break
    e8 d4. f4. g8 | g8 (e1* 7/8) | \break
    r4 f4 g4. a8 | g8 e2 g8 f8 e8 |\break 
    e8 d4. a'4. b8 | c1* 4/4 |\break
  }
}

gpmseratussembilanempat_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratussembilanempat_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratussembilanempat_c_music_solmisasi = \solmisasiMusic \gpmseratussembilanempat_c_music

gpmseratussembilanempat_lyricOne = \lyricmode {
    Ber -- jum -- pa la -- gi, ber -- jum -- pa la -- gi di tem -- pat i -- ni.
    Den -- dang ber -- sa -- ma, den -- dang ber -- sa -- ma ber -- gem -- bi -- ra ri -- a.
    Sa -- at yang in -- dah, ber -- ra -- mai- ra -- mai kum -- pul gan -- dong -- e.
    Ki -- ta ber -- sa -- tu di da -- lam ka -- sih, ma -- nis -- e.
    Ki -- ta ber -- sa -- tu di da -- lam ka -- sih, ma -- nie -- e.
}

gpmseratussembilanempat_lyricTwo = \lyricmode {
    Ba -- ku da -- pa lai, ba -- ku da -- pa lai di tem -- pat i -- ni.
    Den -- dang ber -- sa -- ma, den -- dang ber -- sa -- ma ber -- gem -- bi -- ra ri -- a.
    O -- ras yang in -- dah, ber -- ra -- mai- ra -- mai kum -- pul gan -- dong --  e.
    Ka -- tong ber -- sa -- tu di da -- lam ka -- sih, ma -- nis -- e.
    Ka -- tong ber -- sa -- tu di da -- lam ka -- sih, ma -- nis -- e.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratussembilanempat_c_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratussembilanempat_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratussembilanempat_lyricTwo
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
      \new Voice = melodi \gpmseratussembilanempat_c_music
    }
    \new Lyrics \lyricsto melodi \gpmseratussembilanempat_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratussembilanempat_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

