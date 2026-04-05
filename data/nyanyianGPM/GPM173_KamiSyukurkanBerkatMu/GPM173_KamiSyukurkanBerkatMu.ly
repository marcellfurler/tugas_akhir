\version "2.24.4"

\include "GPM173_KamiSyukurkanBerkatMu_ly_data.ily"

notasi =
#(if is-svg?
     #{
       \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratustujuhtiga_a_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratustujuhtiga_a_music_solmisasi
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
           \gpmseratustujuhtiga_lyricOne
           \gpmseratustujuhtiga_lyricTwo
           \gpmseratustujuhtiga_lyricThree
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratustujuhtiga_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratustujuhtiga_lyricTwo
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratustujuhtiga_lyricThree
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
      \new Voice = melodi \gpmseratustujuhtiga_a_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
