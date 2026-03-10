\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 255. Tuhan Penyelamat"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = A, 4/4, ♩ = 75"
    }
  }

    composer = \markup {
        \pad-x #1
        \column {
            "Lirik: Monica Pariela - Parera, 2009"
            "Lagu: Sonia C. Parera - Hummel, 2009"
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

% a --> 1-A, 2-B, 3-Cis, 4-D, 5-E, 6-Fis, sa-g, 7-Gis, 8-A 

gpmduaratuslimalima_a_notes = {
  \key a \major
  \relative a'
  \repeat volta 2 {
    cis8 e,8 a8 cis8 b8 e,8 gis8 b8 | a8 d,8 fis8 a8 g2 | \break
    fis8 d8 fis8 a8 gis8 a8 b8 e,8 | cis'4. d16 (cis16) b2 | \break
    cis8 e,8 a8 cis8 b8 e,8 gis8 b8 | a8 d,8 fis8 a8 g2 | \break
    fis8 d8 fis8 a8 gis8 a8 b8 cis8 | a2. r4 | \break 

    % reef
    ^\markup { \italic \bold "Refrein" }cis4. d16 (cis16) b2 | a4. b16 a16 gis2 | \break
    fis8 d8 fis8 a8 gis8 a8 b8 e,8 | cis'2 (b2) | \break
    cis4. d16 (cis16) b2 | a4. b16 (a16) gis2 | \break
    fis8 d8 fis8 a8 gis8 a8 b8 gis8 | a2. r4 |
  }
}

gpmduaratuslimalima_a_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratuslimalima_a_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratuslimalima_a_music_solmisasi = \solmisasiMusic \gpmduaratuslimalima_a_music

gpmduaratuslimalima_lyricOne = \lyricmode {
    Tu -- han Pe -- nye -- la -- mat, Ra -- ja dan Jun -- ju -- ngan -- ku.
    Ja -- di -- kan a -- ku sak -- si se -- ti -- a -- Mu.
    Mem -- b'ri -- ta -- kan ke -- be -- na -- ran cin -- ta ka -- sih -- Mu, 
    yang t'lah se -- la -- mat -- kan ji -- wa -- ku.
    Tu -- han -- ku, Jun -- ju -- ngan -- ku. Ken -- da -- li -- kan s'lu -- ruh hi -- dup -- ku.
    Su -- pa -- ya kar -- ya -- ku s'la -- lu me -- mu -- lia -- kan na -- ma -- Mu.
}

gpmduaratuslimalima_lyricTwo = \lyricmode {
    Roh Ku -- dus ki -- ra -- nya me -- me -- nu -- hi ha -- ti -- ku.
    Ja -- di -- kan a -- ku sak -- si se -- ti -- a -- Mu.
    Un -- tuk me -- lak sa -- na -- kan a -- ma -- nat a -- gung -- Mu,
    ja -- di sak -- si ke -- be -- sa -- ran -- Mu.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratuslimalima_a_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratuslimalima_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratuslimalima_lyricTwo
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
      \new Voice = melodi \gpmduaratuslimalima_a_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratuslimalima_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratuslimalima_lyricTwo
  >>
  \midi {
    \tempo 4 = 75
  }
}

