\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 105. Kristus T'lah Datang"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = E, 2/4, ♩ = 90"
    }
  }

  composer = \markup {
    Lagu dan Syair:
      \caps "Wendy Papilaya"
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


% do = e --> 1E, 2fis, 3Gis, 4A, 5B, 6Cis, 7Dis

gpmseratuslima_e_notes = {
  \key e \major
  \relative e'
  \repeat volta 2 {
    % Baris pertama
    gis8 gis8 gis8 fis8 | e4 e8 e8 | e8 fis8 e8 cis8 | b2 | \break
    e4 e4 | e8 e8 dis8 e8 | fis2 | \break
    r4 b,8 b8 | gis'4 gis8 fis8 | e2 | e8 fis8 e8 cis8 | \break 
    b4 \breathe e8 fis8 | gis8 gis8 gis8 b8 | a8 gis8 fis8 gis8 | e2 | \break

    \mark \markup { \italic "Refrain" } r4 gis8 a8 | b4 b4 | b4 b8 b8 | cis8 b8 a8 gis8 a4 | fis8 gis8 | \break
    a4 a4 | a4 a8 a8 | a8 b8 a8 fis8 | gis4 a4 |  \break
    gis4 e4 | dis4 fis4 | \once \override Tie.stencil = ##f (e2~ | e4) r4 |
  }
}

gpmseratuslima_e_music = {
  \time 2/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratuslima_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratuslima_e_music_solmisasi = \solmisasiMusic \gpmseratuslima_e_music

gpmseratuslima_lyricOne = \lyricmode {
  Kris -- tus t'lah da -- tang ma -- nu -- sia sem -- bah Di -- a dan ber -- su -- ka -- ci -- ta -- lah.
  Nya -- nyi dan so -- rak -- lah, pu -- ji na -- ma -- Nya t'lah da -- tang pe -- ne -- bus do -- sa ma -- nu -- sia.
  Di -- a -- lah Ra -- ja a -- tas se -- ga -- la ra -- ja yang ber -- ku -- a -- sa di -- bu -- mi dan di -- sor -- ga
  se -- la -- ma- la -- ma -- nya
}

gpmseratuslima_lyricTwo = \lyricmode {
  Kris -- tus t'lah da -- tang ge -- nap -- lah Fir -- man Tu -- han yang te -- lah di -- jan -- ji -- kan.
  Ma -- ri -- lah sam -- but Dia, pu -- ji na -- ma -- Nya Sang Pe -- ne -- bus Ju -- ru S'la -- mat du -- ni -- a.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratuslima_e_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratuslima_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratuslima_lyricTwo
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
      \new Voice = melodi \gpmseratuslima_e_music
    }
    \new Lyrics \lyricsto melodi \gpmseratuslima_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratuslima_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

