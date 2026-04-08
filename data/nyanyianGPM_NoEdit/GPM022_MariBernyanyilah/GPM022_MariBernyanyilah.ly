\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 22. Mari Bernyanyilah"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = F, 4/4, ♩ = 90"
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

% do = f --> 1F, 2G, 3A, 4Bes, 5C, 6D, 7E

gpmduapuluhdua_f_notes = {
  \key f \major
  \relative f'
  \repeat volta 2 {
    a8 a4 a8 g8 f8 g8 f8 | a8 a4 a8 g8 f8 g8 f8 | \break a8 a4 a8 g8 f8 g8 f8 | f2. r4 | \break
    a8 a4 a8 g8 f8 g8 f8 | a8 a4 a8 g8 f8 g8 f8 | \break a8 a4 a8 g8 f8 g8 f8 | f2. r4 | \break

    g8 g4 g8 g8 f8 g8 f8 | a8 a4 g8 a8 g8 f8 r8 | \break g8 g4 g8 g8 f8 g8 f8 | f8 f8 g8 a8 c4 r4 | \break
     a8 a4 a8 g8 f8 g8 f8 | a8 a4 a8 g8 f8 g8 f8 \break
    ^\markup { \italic "rit." }
    f8 f8 f8 f8 g8 a8 g8 (f8) | f2. r4 |
  }
}

gpmduapuluhdua_f_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduapuluhdua_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduapuluhdua_f_music_solmisasi = \solmisasiMusic \gpmduapuluhdua_f_music

gpmduapuluhdua_lyricOne = \lyricmode {
    Ma -- ri ber -- nya -- nyi -- lah. Hai ma -- ri ber -- so -- rak- so -- rak, pu -- ji, pu -- ji, ha -- le -- lu -- ya. __
    A -- gung -- kan na -- ma -- Nya, b'ri hor -- mat ba -- gi -- Nya, Dia -- lah Ra -- ja a -- tas s'ga -- la ra -- ja. __
    Ja -- ngan -- lah kau ra -- gu, hai ja -- ngan -- lah kau bim -- bang da -- tang -- lah pa -- da Ye -- sus Ju -- ru s'la -- mat -- mu.
    Ti -- ap sa -- at I -- a pe -- nu -- hi has -- rat ha -- ti -- mu ber -- syu -- kur -- lah ke -- pa -- da -- Nya. __
}

gpmduapuluhdua_lyricTwo = \lyricmode {
    Ma -- ri nya -- nyi -- kan ba -- gi Tu -- han nya -- nyi -- an ba -- ru mu -- lia -- kan ke -- be -- sa -- ran -- Nya. __
    Bi -- ar -- lah yang ber -- na -- fas ang -- kat -- lah pu -- ja pu -- ji mas -- yur -- kan ke -- A -- gu -- ngan -- Nya. __
    Ja -- ngan -- lah kau gen -- tar, hai ber -- di -- ri -- lah te -- gar Di -- a -- lah ko -- ta ben -- teng per -- ta -- ha -- nan -- mu. 
    Ti -- ap sa -- at I -- a be -- ri -- kan ber -- kat ka -- ru -- nia ber -- syu -- kur -- lah ke -- pa -- da -- Nya. __
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduapuluhdua_f_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduapuluhdua_lyricOne
    \new Lyrics \lyricsto melodi \gpmduapuluhdua_lyricTwo
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
      \new Voice = melodi \gpmduapuluhdua_f_music
    }
    \new Lyrics \lyricsto melodi \gpmduapuluhdua_lyricOne
    \new Lyrics \lyricsto melodi \gpmduapuluhdua_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}