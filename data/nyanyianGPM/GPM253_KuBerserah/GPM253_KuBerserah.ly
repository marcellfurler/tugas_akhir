\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 253. Ku Berserah"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = Bes, 3/4, ♩ = 90"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Elly Toisutta"
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

% Bes --> 1bes-2C-3D-4Es-5F-6G-7A-8Bes

gpmduaratuslimatiga_bes_notes = {
  \key bes \major
  \relative bes'
  \repeat volta 2 {
    d4 d4 d4 | f2. | g4 g4 g4 | bes2. | \break
    a2 bes4 | c2 a4 | bes4 a4 g4 | f2 r4 | \break
    d4 d4 d4 | f2. | g4 g4 g4 | bes2. | \break
    a2 bes4 | c4 bes4 a4 | \once \override Tie.stencil = ##f bes2.~ (| bes2) r4 | \break

    % reef
    d2 d4 | d4 c4 bes4 | c2 a4 | f2. | \break 
    es'2 es4 | es4 d4 c4 | d2 c4 | bes2 r4 | \break
    d2 d4 | d4 c4 bes4 | g2 bes4 | es2. | \break
    d4 d4 d4 | c4 bes4 c4 | \once \override Tie.stencil = ##f bes2.~ (| bes2) r4
  }
}

gpmduaratuslimatiga_bes_music = {
  \time 3/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratuslimatiga_bes_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratuslimatiga_bes_music_solmisasi = \solmisasiMusic \gpmduaratuslimatiga_bes_music

gpmduaratuslimatiga_lyricOne = \lyricmode {
    Ku -- ber -- se -- rah, ku -- ber -- se -- rah,
    ke -- pa -- da -- Mu oh Tu -- han -- ku.
    Ku -- ber -- se -- rah, ku -- ber -- se -- rah,
    ke -- pa -- da -- Mu Tu -- han.

    Ku mau i -- kut Tu -- han Ye -- sus, 
    ku mau pi -- kul Sa -- lib Ye -- sus.
    Ye -- sus u -- bah -- lah hi -- dup -- ku,
    ku mau ber -- sa -- ma Ye -- sus.
}

gpmduaratuslimatiga_lyricTwo = \lyricmode {
  Ku ber -- do --a, ku ber -- do -- a, 
  ke -- pa -- da -- Mu oh Tu -- han -- ku.
  Ku ber -- do --a, ku ber -- do -- a, 
  ke -- pa -- da -- Mu Tu -- han.

  Ku mau se -- tia i -- kut Ye -- sus, 
  ku mau se -- tia ber -- sa -- ma -- Nya.
  Di se -- tiap lang -- kah hi -- dup -- ku, 
  ku mau ber -- sa -- ma Ye -- sus.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratuslimatiga_bes_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratuslimatiga_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratuslimatiga_lyricTwo
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
      \new Voice = melodi \gpmduaratuslimatiga_bes_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratuslimatiga_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratuslimatiga_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

