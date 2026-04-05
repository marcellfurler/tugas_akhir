\version "2.24.4"

\include "GPM159_TuhanAdalahRajaSegalaRaja_ly_data.ily"

notasi =
#(if is-svg?
     #{
       \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratuslimasembilan_e_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratuslimasembilan_e_music_solmisasi
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
           \gpmseratuslimasembilan_lyricOne
           \gpmseratuslimasembilan_lyricReff
           \gpmseratuslimasembilan_lyricTwo
           \gpmseratuslimasembilan_lyricReff
           \gpmseratuslimasembilan_lyricThree
           \gpmseratuslimasembilan_lyricReff
           \gpmseratuslimasembilan_lyricFour
           \gpmseratuslimasembilan_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimasembilan_lyricOne
           \gpmseratuslimasembilan_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimasembilan_lyricTwo
           \lyricsOff
           \gpmseratuslimasembilan_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimasembilan_lyricThree
           \lyricsOff
           \gpmseratuslimasembilan_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimasembilan_lyricFour
           \lyricsOff
           \gpmseratuslimasembilan_lyricReff
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
      \new Voice = melodi \gpmseratuslimasembilan_e_music
    }
  >>
  \midi {
    \tempo 4 = 90
  }
}
