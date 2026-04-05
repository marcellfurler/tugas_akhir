\version "2.24.4"

\include "GPM212_KumpolCengke_ly_data.ily"

notasi =
#(if is-svg?
     #{
       \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduaratusduabelas_f_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduaratusduabelas_f_music_solmisasi
           }
         }
       >>
     #}
     )

syair =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratusduabelas_lyricOne
           \gpmduaratusduabelas_lyricReff
           \gpmduaratusduabelas_lyricTwo
           \gpmduaratusduabelas_lyricReff
           \gpmduaratusduabelas_lyricThree
           \gpmduaratusduabelas_lyricReff
            \gpmduaratusduabelas_lyricFour
           \gpmduaratusduabelas_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratusduabelas_lyricOne
           \gpmduaratusduabelas_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratusduabelas_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmduaratusduabelas_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratusduabelas_lyricThree
           \lyricsOff
           \gpmduaratusduabelas_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratusduabelas_lyricFour
           \lyricsOff
           \gpmduaratusduabelas_lyricReff
         }
       >>
     #}
     )

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    \notasi
    \syair
  >>
  % Layout untuk SVG animation dan printed
  % Cek __includes/svg-animation-init.ily
  \layout {}
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
      \new Voice = melodi \gpmduaratusduabelas_f_music
    }
  >>
  \midi {
    \tempo 4 = 100
  }
}
