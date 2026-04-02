\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 65. Bapa, Siapkanlah Hatiku"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = C, 4/4, ♩ = 70"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 2005"
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

gpmenampuluhlima_c_notes = {
  \key c \major
  \relative c'{
    % Baris pertama
    e8 e1* 7/8 | r4 e8 e8 f8 e8 f8 g8 | \once \override Tie.stencil = ##f d1* 4/4~ (| d4) r4 e4. d8 | \break
    c1* 7/8 c8 | f4 f4 f4. g8 | e2. \tuplet 3/2 {e8 (d8 c8} | d2.) r4 | \break
    g8 g1* 7/8 | r4 e8 e8 f8 e8 f8 g8 | \once \override Tie.stencil = ##f d1* 4/4~ (| d4) r4 e4. d8 | \break
    c1* 7/8 c8 | f4 e4 d4.c8 | c1* 4/4 | r1* 7/8 g'8 | \break
    b4 b2 b8 (a8) | g2 r4 a8 b8 | c2 c8 (b8) a8 a8~ | a8 (g1* 5/8) f8 g8 | \break
    a4 a2. \breathe | g2. g8 (f8) | e1* 4/4 | r1 * 7/8 g8 | \break
    b4 b2 b8 a8 | a8 (g8) g1* 5/8  b8 | c4 c4 c8 (b8) a8 a8~ | a8  (g1* 5/8) \breathe f8 g8 | \break
    a4 a1*3/4 | g2. \breathe g8 (f8) | e1* 4/4 | \break

    % repeat
    \repeat volta 2{
        r4 a8 g8 a8 g8 a8 b8 | c4. a8 g2 | r4 g8 g8 a8 a8 g8 f8 | (e2 g2) | \break
        r4 a8 g8 a8 g8 a8 b8 | c4. g8 e'2 (| d8) r8 b8 b8 b8 b8 c8 d8 | \break
        c1* 4/4 | 
    }   
    r4^\markup { \italic "rit." } a4 (b4 c4) | c1* 4/4 |
    
    
  }
}

gpmenampuluhlima_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmenampuluhlima_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmenampuluhlima_c_music_solmisasi = \solmisasiMusic \gpmenampuluhlima_c_music

gpmenampuluhlima_lyricOne = \lyricmode {
    Ba -- pa, si -- ap -- kan -- lah ha -- ti -- ku.
    A -- ku mau men -- de -- ngar sab -- da -- Mu, Ooo
    Ba -- pa, su -- ci -- kan -- lah ha -- ti -- ku.
    A -- ku mau men -- de -- ngar sab -- da -- Mu.

    Sab -- da -- Mu ke -- kal, pe -- ne -- rang lang -- kah ku
    da -- lam su -- sah dan se -- nang.
    Be -- ri -- lah Roh Ku -- dus -- Mu, me -- nun -- tun hi -- dup -- ku
    da -- lam su -- sah dan se -- nang.

    Si -- ap -- kan -- lah ha -- ti -- ku, Ba -- pa, mau me -- nyam -- but sab -- da -- Mu.
    Si -- ap -- kan -- lah ha -- ti -- ku, Ba -- pa, mau me -- nyam -- but sab -- da -- Mu.
    A -- min!
}



% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmenampuluhlima_c_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmenampuluhlima_lyricOne
    % \new Lyrics \lyricsto melodi \gpmenampuluhlima_lyricTwo
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
      \new Voice = melodi \gpmenampuluhlima_c_music
    }
    \new Lyrics \lyricsto melodi \gpmenampuluhlima_lyricOne
    % \new Lyrics \lyricsto melodi \gpmenampuluhlima_lyricTwo
  >>
  \midi {
    \tempo 4 = 70
  }
}

