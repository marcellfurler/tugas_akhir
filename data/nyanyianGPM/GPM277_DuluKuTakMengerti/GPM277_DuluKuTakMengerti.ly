\version "2.24.4"

\include "GPM277_DuluKuTakMengerti_ly_data.ily"

notasi =
#(if is-svg?
     #{
        \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduaratustujuhtujuh_d_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduaratustujuhtujuh_d_music_solmisasi
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
           \gpmduaratustujuhtujuh_lyricOne

           % Reff pertama (kamar 1)
           \gpmduaratustujuhtujuh_lyricReff
           \gpmduaratustujuhtujuh_lyricReffKamar

           % Reff kedua (kamar 2)
           \gpmduaratustujuhtujuh_lyricReff
           \gpmduaratustujuhtujuh_lyricReffKamar
         }
       >>
     #}
     ; else
     ; else
     #{
       <<
         % Baris utama (bait + reff)
         \new Lyrics \lyricsto melodi {
           \gpmduaratustujuhtujuh_lyricOne
           \gpmduaratustujuhtujuh_lyricReff
           \gpmduaratustujuhtujuh_lyricReffKamar
           \gpmduaratustujuhtujuh_lyricReffKamar
         }
       >>
     #})

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
  \unfoldRepeats
  <<
    \new Staff {
      \new Voice = melodi \gpmduaratustujuhtujuh_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
