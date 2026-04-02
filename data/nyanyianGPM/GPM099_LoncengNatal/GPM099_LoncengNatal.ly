\version "2.24.4"

\include "GPM099_LoncengNatal_ly_data.ily"

notasi =
#(if is-svg?
     #{
       \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmsembilanpuluhsembilan_d_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmsembilanpuluhsembilan_d_music_solmisasi
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
           \gpmsembilanpuluhsembilan_lyricOne
           \gpmsembilanpuluhsembilan_lyricReff
           \gpmsembilanpuluhsembilan_kamar
           \gpmsembilanpuluhsembilan_lyricReff
           \gpmsembilanpuluhsembilan_kamar
         }
       >>
     #}
     ; else
     #{
       <<
         % lirik utama
         \new Lyrics \lyricsto melodi {
           \gpmsembilanpuluhsembilan_lyricOne
           \gpmsembilanpuluhsembilan_lyricReff
           \gpmsembilanpuluhsembilan_kamar
           \gpmsembilanpuluhsembilan_kamar
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
   \unfoldRepeats<<
    \new Staff {
      \new Voice = melodi \gpmsembilanpuluhsembilan_d_music
    }
  >>
  \midi {
    \tempo 4 = 100
  }
}
