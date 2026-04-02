\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 279. Hasil Orang Benar"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = A, 4/4, ♩ = 90"
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

% a --> 1-A, 2-B, 3-Cis, 4-D, 5-E, 6-Fis, 7-Gis, 8-A 

gpmduaratustujuhsembilan_a_notes = {
  \key a \major
  \relative a'
  \repeat volta 2{
    cis4 cis4 d8 cis4 b8 | a2 r4 a8 a8 | a4. a8 a8 a8 gis8 a8 | b2 r4 cis8 cis8 | \break
    cis4. cis8 b4 a4 | fis2 r4 a8 fis | e4. a8 gis4 b4 | a2. r4 | \break
    b8 b8 b8 b8 b8 a8 gis8 fis8 | e4 a4 a4 r8 cis8 | b8 b8 b8 b8 b8 gis8 a8 b8 | cis2 r4 a8 gis8 | \break
    fis8 fis8 fis8 a8 d8 d8 cis8 b8 | a4 e4 r4 b'8 a8 | gis8 gis4 gis8 a8 gis8 fis8 gis8 | a2. r4 |
  }
}

gpmduaratustujuhsembilan_a_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratustujuhsembilan_a_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratustujuhsembilan_a_music_solmisasi = \solmisasiMusic \gpmduaratustujuhsembilan_a_music

gpmduaratustujuhsembilan_lyricOne = \lyricmode {
    Ha -- sil o -- rang be -- nar a -- da -- lah po -- hon ke -- hi -- du -- pan
    dan si -- a -- pa yang bi -- jak me -- ngam -- bil ha -- ti o -- rang.
    Ha -- ti yang te -- nang me -- nye -- gar -- kan tu -- buh, i -- ri ha -- ti mem -- bu -- suk -- kan tu -- lang.
    Ma -- ta Tu -- han a -- da di se -- ga -- la tem -- pat me -- nga -- wa  -- si yang ja -- hat dan ba -- ik.
}

gpmduaratustujuhsembilan_lyricTwo = \lyricmode {
    Ha -- sil o -- rang be -- nar a -- da -- lah sum -- ber ke -- hi -- du -- pan
    dan si -- a -- pa yang bi -- jak me -- nu -- ai ke -- ka -- ya -- an. 
    Ha -- ti me -- nge -- nal pe -- dih -- nya sen -- di -- ri o -- rang la -- in 'tak me -- ra -- sa -- kan -- nya.
    Ma -- ta yang ber -- si -- nar me -- nye -- gar -- kan ha -- ti ka -- bar ba -- ik me -- nye -- gar -- kan tu -- lang.
}




% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratustujuhsembilan_a_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratustujuhsembilan_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratustujuhsembilan_lyricTwo
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
      \new Voice = melodi \gpmduaratustujuhsembilan_a_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratustujuhsembilan_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratustujuhsembilan_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

