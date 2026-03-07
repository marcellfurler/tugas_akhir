\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 284. Tuhan Ku"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = C, 4/4, ♩ = 80"
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

gpmduaratusdelapanempat_c_notes = {
  \key c \major
  \relative c'
  \repeat volta 2 {
    r2 g'4. a8 | g1* 4/4 | r4 c8 b8 a4 c4 | g4. f8 e2 | \break
    r4 e8 e8 e8 d8 c8 e8 | d2 d2 | r4 d8 e8 f8 f8 e8 d8 | e2 g2 | \break
    r2 g4. a8 | g1* 4/4 | r4 c8 b8 a4 c4 | g4. f8 e2 | \break
    r4 e8 e8 e8 d8 c8 e8 | d2 d2 | r4 d8 e8 f8 f8 e8 d8 | c1* 4/4 | \break

    % reef
    r4 e8 e8 d4 e4 | f2 d2 | r4 f8 f8 e4 f4 | g2 e2 | \break
    r4 e8 e8 d4 e4 | f2 d2 | r4 fis8 g8 a4 fis4 | g1* 5/8 g8 f8 e8 | \break
    d4 r4 g4. a8 | g1 * 4/4 | r4 c8 b8 a4 c4 | g4. f8 e2 | \break
    r4 e8 e8 e8 d8 c8 e8 | d2 d2 | r4 d8 e8 f8 f8 e8 d8 | c1* 4/4 |
  }
}

gpmduaratusdelapanempat_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusdelapanempat_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusdelapanempat_c_music_solmisasi = \solmisasiMusic \gpmduaratusdelapanempat_c_music

gpmduaratusdelapanempat_lyricOne = \lyricmode {
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  S'la -- lu ha -- ngat -- kan ji -- wa -- ku, s'la -- lu a -- da di ha -- ti -- ku.
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  da -- lam su -- ka mau -- pun du -- ka, a -- ku me -- rin -- du -- kan -- Mu.

  Ber -- kat -- Mu me -- lim -- pah, wa -- lau -- pun 'tak pin -- ta
  Ber -- ta -- bu -- ran cin -- ta, me -- le -- bi -- hi in -- tan per -- ma -- ta.
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  Da -- lam ti -- ap peng -- ha -- ra -- pan, ku -- pa -- tri -- kan na -- ma -- Mu.
}

gpmduaratusdelapanempat_lyricTwo = \lyricmode {
  Tu -- han -- ku, Kau -- lah sur -- ya hi -- dup -- ku.
  S'la -- lu ha -- ngat -- kan tu -- buh -- ku, s'la -- lu da -- mai -- kan ha -- ti -- ku.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratusdelapanempat_c_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratusdelapanempat_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratusdelapanempat_lyricTwo
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
      \new Voice = melodi \gpmduaratusdelapanempat_c_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratusdelapanempat_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratusdelapanempat_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}

