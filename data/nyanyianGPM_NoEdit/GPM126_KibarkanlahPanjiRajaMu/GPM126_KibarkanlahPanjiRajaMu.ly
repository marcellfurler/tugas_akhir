\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 126. Kibarkan Panji Raja mu"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 90"
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

% 1D - 2E - 3F# - 4G 4-1/2gis (as) - 5A - 6B - 7C#

gpmseratusduaenam_d_notes = {
  \key d \major
  \relative d'{
    fis4 e8 d8 a'4 d,8 b'8 | a4 g4 fis4 r4 | fis4 e8 d8 a'4 g8 fis8 | e4 fis4 e4 r4 | \break
    fis4 e8 d8 a'4 d,8 b'8 | a4 g4 fis4 r4 | fis4 e8 d8 a'4 g8 fis8 | e4 fis4 d4 r4 | \break
    cis'8 cis4 b8 a8 a4 b8 | cis8 b8 cis8 d8 cis4 r4 | b8 b4 b8 d4 cis8 b8 | a2. r4 | \break

    % reef
    cis8 cis4 b8 a4 r4 |  cis8 b8 cis8 d8 cis4 r4 | b8 b4 b8 d4 cis8 b8 | a2 r4 fis8  e8 | \break
    d8 d4 fis8 as8 a4 b8 | a4 g4 fis r4 | e8 fis8 g8 a8 b4 a4 | d2. r4 
  }
}

gpmseratusduaenam_d_music = {
  \time 4/4
  % \tempo 4 = 100
  \gpmseratusduaenam_d_notes
  \bar "|."
}

gpmseratusduaenam_d_music_solmisasi = \solmisasiMusic \gpmseratusduaenam_d_music


gpmseratusduaenam_lyricOne = \lyricmode {
  Ki -- bar -- kan -- lah  pan -- ji Ra -- ja Mu, be -- ri -- ta pas -- kah t'lah ber -- ge -- ma.
  Hai sam -- but -- lah ke -- me -- na -- ngan -- Nya, ku -- bur ke -- lam i -- blis me -- nge -- rang.
  Ja -- ngan kau ra -- gu, ja -- ngan -- lah kau  ce -- mas ku -- a -- sa maut t'lah le -- nyap.
  Ki -- bar -- kan -- lah pan -- ji Ra -- ja -- Mu Tu -- han sung -- guh per -- ka -- sa
  jan -- ji Al -- lah di Sor -- ga su -- dah ge -- nap, ki -- ta -- pun di -- s'la -- mat -- kan.
}



\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusduaenam_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusduaenam_lyricOne
  >>
  \layout { }
}

\score {
  % Gunakan original music
   <<
    \new Staff {
      \new Voice = melodi \gpmseratusduaenam_d_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusduaenam_lyricOne
  >>
  \midi {
    \tempo 4 = 90
  }
}
