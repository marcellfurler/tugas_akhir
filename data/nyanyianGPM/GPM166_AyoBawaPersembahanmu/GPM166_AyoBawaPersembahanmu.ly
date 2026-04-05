\version "2.24.4"

\include "GPM166_AyoBawaPersembahanmu_ly_data.ily"

notasi =
#(if is-svg?
     #{
       \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratusenamenam_d_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratusenamenam_d_music_solmisasi
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
           \gpmseratusenamenam_lyricOne
           \gpmseratusenamenam_lyricTwo
           \gpmseratusenamenam_lyricThree
           \gpmseratusenamenam_lyricFour
           \gpmseratusenamenam_lyricFive
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamenam_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamenam_lyricTwo
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamenam_lyricThree
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamenam_lyricFour
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusenamenam_lyricFive
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
      \new Voice = melodi \gpmseratusenamenam_d_music
    }
  >>
  \midi {
    \tempo 4 = 100
  }
}
