\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 173. Kami Syukurkan Berkat Mu"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = A, 3/4, ♩ = 80"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Nus Tomatala"
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

% 1A, 2B, 3Cis, 4D, 5E, 6Fis, 7Gis

gpmseratustujuhtiga_a_notes = {
  \key a \major
  \relative a'
  \repeat volta 3 {
    % Baris pertama
    cis4 cis4 cis | e4 e4 e4 | a2. | a2 r4 | \break
    cis4 b4 a4 | a4 gis4 fis4 | d2. d2 r4 | \break
    b4 b4 cis4 | d4 e4 fis4 | gis2. | gis2. | \break
    e4 e4 fis4 | gis4 a4 b4 | \once \override Tie.stencil = ##f e,2.~ (| e2) r4 | \break
    cis4 cis4 cis | e4 e4 e4 | a2. | a2 r4 | \break
    e4 e4 e4 | e4 \slurDashed (fis4 gis4) \slurSolid | \once \override Tie.stencil = ##f fis2.~ (| fis2) r4 \break
    fis4 d4 fis4 | a4 gis4 fis4 | e2. | cis'2 r4 | \break
    b4 fis4 a4 | a2 gis4 | a2 r4 |
  }
}

gpmseratustujuhtiga_a_music = {
  \time 3/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratustujuhtiga_a_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratustujuhtiga_a_music_solmisasi = \solmisasiMusic \gpmseratustujuhtiga_a_music

gpmseratustujuhtiga_lyricOne = \lyricmode {
    Ka -- mi syu -- kur -- kan ber -- kat -- Mu yang me -- nga -- lir tia -- da ak -- khir.
    Ba -- gai -- kan de -- ras -- nya su -- ngai bang -- kit -- kan gi -- rang ha -- ti.
    Ka -- mi tak mam -- pu b'ri gan -- ti mem -- ba -- las ka -- sih -- Mu.
    Ha -- nya -- lah ung -- ka -- pan ha -- ti mu -- lia -- kan ka -- sih -- Mu.
}

gpmseratustujuhtiga_lyricTwo = \lyricmode {
    Ka -- sih -- Mu ba -- gai men -- ta -- ri ber -- si -- nar ma -- suk di ha -- ti.
    Tak ha -- rap -- kan a -- da gan -- ti ma -- lah Kau b'ri -- kan le -- bih.
    Ye -- sus, Kau pu -- ja -- an ha -- ti, Kau Ma -- ha \set ignoreMelismata = ##t mu -- rah \set ignoreMelismata = ##f dan  baik.
    Pe -- ngor -- ba -- nan -- Mu se -- ja -- ti, ke -- me -- na -- ngan ka -- mi.
}

gpmseratustujuhtiga_lyricThree = \lyricmode {
    Bi -- ar -- pun maut di -- ha -- da -- pi ti -- a -- da ku -- rang ka -- sih -- Mu.
    A -- sal me -- ya -- kin -- kan jan -- ji yang Kau tak -- kan ing -- ka -- ri.
    Bah -- wa Ye -- sus da -- tang nan -- ti un -- tuk \set ignoreMelismata = ##t ke -- du -- a \set ignoreMelismata = ##f  ka -- li,
    me -- ngang -- kat o -- rang per -- ca -- ya se -- su -- ai fir -- man -- Mu.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratustujuhtiga_a_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratustujuhtiga_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratustujuhtiga_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratustujuhtiga_lyricThree
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
      \new Voice = melodi \gpmseratustujuhtiga_a_music
    }
    \new Lyrics \lyricsto melodi \gpmseratustujuhtiga_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratustujuhtiga_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratustujuhtiga_lyricThree
  >>
  \midi {
    \tempo 4 = 80
  }
}

