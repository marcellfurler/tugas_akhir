\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 169. Kami Bawa Persembahan"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 100"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Alex Titawanno"
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

% d --> 1-D, 2-E, 3-Fis, 4-G, 5-A, 6-B, 7-Cis, 8-D

gpmseratusenamsembilan_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 2 {
    \partial 4 a8 a8 | fis'4 fis4e8 d8 e8 fis8 | a4 a4. \breathe fis8 \break
    g8 a8 | b4 b8. a16 b8 a8 | g8 fis8 | fis4 e4. \breathe e8 \break
    e8 fis8 | g4 g8. fis16 \slurDashed ( g8 fis8) \slurSolid e8 d8 | fis4 e4. cis8 \break
    d8 e8 | fis4 a8. a16 a8 a8 g8 e8 | d4 d2 \bar "||"  \break

    % reef
    ^\markup { \italic \bold "Refrein" } r8 d8 | e4 e8. e16 fis8 e8 d8 e8 | fis4 a2 \break
    r8 fis8 e4 e8. e16 fis8 e8 d8 e8 | fis4 fis2 \break
    r8 d8 | e4 e8. e16 fis8 e8 d8 e8 | fis4 a2 \break
    r8 fis8 | e4 e8. e16 fis8 e8 d8 cis8 | d4 d4 r4

  }
}

gpmseratusenamsembilan_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenamsembilan_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenamsembilan_d_music_solmisasi = \solmisasiMusic \gpmseratusenamsembilan_d_music

gpmseratusenamsembilan_lyricOne = \lyricmode {
    Ka -- mi ba -- wa per -- sem -- ba -- han i -- ni dan s'lu -- ruh hi -- dup di ka -- ki sa -- lib Tu -- han.
    kar' -- na Eng -- kau per -- sem -- bah -- an yang A -- gung,
    Tu -- lus dan su -- ci, Pe -- ne -- bus do -- sa du -- nia. 

    Te -- ri -- ma -- lah Tu -- han hi -- dup ka -- mi,
    Te -- ri -- ma -- lah Tu -- han cin -- ta ka -- mi.
    Te -- ri -- ma -- lah per -- sem -- ba -- han ka -- mi,
    ba -- gi pe -- la -- ya -- nan -- Mu di -- du -- nia.
}

gpmseratusenamsembilan_lyricTwo = \lyricmode {
    A -- pa ar -- ti hi -- dup ka -- mi i -- ni ji -- ka ber -- ja -- lan tan -- pa per -- to -- lo -- ngan -- Mu.
    Bi -- la co -- ba -- an \set ignoreMelismata = ##t da -- tang \set ignoreMelismata = ##f si -- lih ber -- gan -- ti, ha -- nya Tu -- han -- lah san -- da -- ran ba -- gi ka -- mi.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusenamsembilan_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusenamsembilan_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusenamsembilan_lyricTwo
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
      \new Voice = melodi \gpmseratusenamsembilan_d_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusenamsembilan_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusenamsembilan_lyricTwo
  >>
  \midi {
    \tempo 4 = 100
  }
}