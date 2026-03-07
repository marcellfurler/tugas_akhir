\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 106. Ya Tuhan"
  subtitle = "(Nyanyian Pujian Simeon)"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = E, 3/4, ♩ = 80"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 1986"
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

% do=e --> 1E, 2Fis, 3Gis, 4A, 5B, 6Cis, dan 7Dis

gpmseratusenam_e_notes = {
  \key e \major
  \relative e' {
    % Baris pertama
    cis2 cis8 (dis8) | e4 e4 dis8 (e8) | fis4 fis4 gis8 fis8 | gis2 \breathe cis,8 cis8 | \break
    a'4 a4 gis4 | fis2 fis8 (e8) | \once \override Tie.stencil = ##f dis2.~ (| dis2) r4 | \break
    cis2 cis8 dis8 | e4 e4 dis8 e8 | fis4 fis4 gis8 fis8 | gis2 \breathe cis,8 cis8 | \break
    a'4 a4 gis4 | fis2 e8 (dis8) |cis4 \once \override Tie.stencil = ##f cis2~ (| cis2) r4 | \break

    e4 e4 dis8 e8 | fis4 fis4 fis8 gis8 | gis4 gis4 a8 gis8 |fis2 r4 | \break
    fis4 fis4 e8 dis8 | e2 e8 e8 | cis4 e4 fis8 e8 | dis4 gis2 \breathe | \break
    cis,2 cis8 dis8 | e4 e4 dis8 e8 | fis4 fis4 gis8 fis8 | gis4 gis4 cis,8 cis8 | \break
    a'4 a4 fis8 e8 | fis2 e8 dis8 | \once \override Tie.stencil = ##f cis2.~ (| cis2) r4 |
  }
}

gpmseratusenam_e_music = {
  \time 3/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenam_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenam_e_music_solmisasi = \solmisasiMusic \gpmseratusenam_e_music

gpmseratusenam_lyricOne = \lyricmode {
    Ya Tu -- han -- ku, bi -- ar -- kan ku per -- gi da -- lam da -- mai se -- jah -- te -- ra.
    Da -- mai se -- jah -- t'ra da -- ri Al -- lah pe -- ne -- bus, yang ber -- la -- ku, se -- suai Fir -- man -- Mu.
    A -- ku t'lah me -- li -- hat ke -- s'la -- ma -- tan Kau be -- ri, i -- tu -- lah te -- rang
    ba -- gi bang -- sa- bang -- sa la -- in dan ke -- mu -- lia -- an ba -- gi u -- mat pi -- li -- han -- Mu,
    pu -- ji Tu -- han pe -- ne -- bus yang te -- guh. 
}


% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusenam_e_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusenam_lyricOne
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
   <<
    \new Staff {
      \new Voice = melodi \gpmseratusenam_e_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusenam_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratusenam_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}

