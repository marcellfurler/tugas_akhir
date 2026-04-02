\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 277. Dulu Ku Tak Mengerti"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 80"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Ots. Kilanmasse"
      ", 2009"
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

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaratustujuhtujuh_d_notes = {
  \key d \major
  \relative d' {
    
    r4 a4 d4 e8 (g8) | fis4. fis8 fis8 fis8 e16 (d16) e8 | d2 r8 d8 fis8 a8 | \break
    d8 d4. cis4. b8 | b8 a1* 7/8 | r4 \tuplet 3/2 {fis8 e8 fis8} b4. a8 | \break
    a8 g8 g4 g8 fis8 e8 fis8 | g4 a8 a8 a8 b8 a8 g8 | fis1* 4/4 | \break 
    r4 a,4 d4 e8 (g8) | fis8 fis4 fis8 fis8 fis8 e16 (d16) e8 | d2 r4 \tuplet 3/2 {d8 fis8 a8} | \break
    d4. d8 cis8 cis8 b8 (a16 b16) | a1* 4/4 | r4 fis8 fis8 b4. a8 | \break
    a8 g8 g4 g8 fis8 e8 fis8 | g4 a8 g8 fis4. e16 (d16) | d1* 4/4 | \break

    \repeat volta 2 {
      % reef
      r4 d'4 e8 (d8) cis8 (d8) | b4 b8 b8 b8 a8 g8 fis8 | e4 d'4 cis4 b4 | \break
      a4 a8 a8 a8 gis8 a8 b8 | a4 \breathe  fis8 fis8 b4. a8 | a4 g8 g8 g8 (fis8) e8 fis8 | \break
      g4 a8 a8 b4 a8 g8 | fis1* 4/4 | r4 d'4 e8 (d8) cis8 (d8) |  \break
      b4 b8 b8 b8 a8 g8 fis8 | e4 \breathe  d'8 d8 cis4 b4 | b4 a8 a8 a8 g8 fis8 g8 | \break
      a4 \breathe  fis8 fis8 b4. a8 | g4 g8 fis8 e4 fis4 | \break
    }
    
    \alternative{
    
      { g4 \breathe a8 g8 fis4 e4 | 
      d1* 4/4 } 
      { g4 \breathe  a8 a8 d4 e4 | d2. r4 }
    }
  }
}

gpmduaratustujuhtujuh_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratustujuhtujuh_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratustujuhtujuh_d_music_solmisasi = \solmisasiMusic \gpmduaratustujuhtujuh_d_music

gpmduaratustujuhtujuh_lyricOne = \lyricmode {
  Du -- lu ku tak me -- nger -- ti ya Tu -- han a -- kan ka -- sih -- Mu yang a -- ba -- di
  te -- ta -- pi Kau pe -- du -- li dan me -- nga -- si -- hi -- ku wa -- lau ja -- uh da -- ri -- Mu
  Ki -- ni ku da -- tang pa -- da -- Mu ya Tu -- han tun -- juk -- kan -- lah ke -- be -- sar -- an -- Mu
  Hi -- dup yang tak pas -- ti mem -- bu -- at di -- ri ku tia -- da ber -- ar -- ti.

  A -- ja -- ri -- lah a -- ku de -- ngan ka -- sih -- Mu, a -- gar a -- ku s'la -- lu de -- kat pa -- da -- Mu.
  Ja -- ngan Kau bi -- ar -- kan a -- ku ter -- se -- sat di du -- ni -- a i -- ni.
  A -- jar -- i -- lah a -- ku de -- ngan ka -- sih -- Mu me -- nyu -- su -- ri lem -- bah ke -- hi -- dup -- an i -- ni
  me -- ne -- bar -- kan ka -- sih yang a -- ba -- di da -- ri -- Mu, Tu -- han.
  di da -- ri -- Mu, Tu -- han.
}



% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratustujuhtujuh_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratustujuhtujuh_lyricOne
    % \new Lyrics \lyricsto melodi \gpmduaratustujuhtujuh_lyricTwo
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
      \new Voice = melodi \gpmduaratustujuhtujuh_d_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratustujuhtujuh_lyricOne
    % \new Lyrics \lyricsto melodi \gpmduaratustujuhtujuh_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}