\version "2.24.4"

\include "GPM065_BapaSiapkanlahHatiku_ly_data.ily"

notasi =
#(if is-svg?
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmenampuluhlima_c_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmenampuluhlima_c_music_solmisasi
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
           \gpmenampuluhlima_lyricOne
           \gpmenampuluhlima_lyricReff
           \gpmenampuluhlima_lyricReff
           \gpmenampuluhlima_lyricRitt

         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
            \gpmenampuluhlima_lyricOne
           \gpmenampuluhlima_lyricReff
           \gpmenampuluhlima_lyricRitt
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
      \new Voice = melodi \gpmenampuluhlima_c_music
    }
  >>
  \midi {
    \tempo 4 = 70
  }
}
