\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 242. Dengarkanlah Suara Tuhan"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = C, 3/4, ♩ = 80"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      " - Ambon, 1982"
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

gpmduaratusempatdua_c_notes = {
  \key c \major
  \relative c'
  \repeat volta 2 {
    g'4. f8 g4 | e2. | a4. g8 f8 (g8) | g2. | a2 c4 | b2 a4 | \once \override Tie.stencil = ##f (g2.~ | g2) r4 | \break
    f4. e8 f4 | d2. | a'4. g8 f8 (g8) | g2 r4 | e4. d8 e4 | f4 e4 d4 | \once \override Tie.stencil = ##f (c2.~ | c2) r4 | \break
    b'4. b8 b8 b8 | b2 a8 (b8) | c4. c8 b8 a8 | g2 r4 | \break
    b4. b8 b8 b8 | b2 e8 (d8) | c4. c8 b8 a8 | g2 r4 | \break
    a4 c4. a8 | g1* 5/8 g8 | a4 c4. d8 | c2 r4 | \break
    e,4. d8 e4 | f4 e4 d4 | \once \override Tie.stencil = ##f (c2.~ | c2) r4 |
  }
}

gpmduaratusempatdua_c_music = {
  \time 3/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusempatdua_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusempatdua_c_music_solmisasi = \solmisasiMusic \gpmduaratusempatdua_c_music

gpmduaratusempatdua_lyricOne = \lyricmode {
  De -- ngar -- kan -- lah sua -- ra Tu -- han me -- mang -- gil ki -- ta.
  Kau dan a -- ku yang ber -- do -- sa, men -- ja -- di mu -- rid Tu -- han.
  I -- kut -- lah Ye -- sus sang Ju -- ru s'la -- mat mu, pi -- kul sa -- lib -- Nya
  se -- u -- mur hi -- dup -- mu se -- tia s'la -- lu pa -- da jan -- ji -- Nya
  Men -- ja -- di mu -- rid Tu -- han.
}

gpmduaratusempatdua_lyricTwo = \lyricmode {
    De -- ngar -- kan -- lah p'rin -- tah Tu -- han me -- ngu -- tus ki -- ta.
    N'tuk men -- ja -- di ab -- di Tu -- han, me -- nyak -- si -- kan na -- ma -- Nya.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratusempatdua_c_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratusempatdua_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratusempatdua_lyricTwo
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
      \new Voice = melodi \gpmduaratusempatdua_c_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratusempatdua_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratusempatdua_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}