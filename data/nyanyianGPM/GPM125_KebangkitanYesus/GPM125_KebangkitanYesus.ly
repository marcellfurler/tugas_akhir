\version "2.24.4"

\include "GPM125_KebangkitanYesus_ly_data.ily"

notasi =
#(if is-svg?
     #{
       \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratusdualima_f_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratusdualima_f_music_solmisasi
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
          \gpmseratusdualima_lyricOne
          \gpmseratusdualima_lyricReff
          \gpmseratusdualima_lyricTwo
          \gpmseratusdualima_lyricReff
          \gpmseratusdualima_lyricThree
          \gpmseratusdualima_lyricReff
          \gpmseratusdualima_lyricFour
          \gpmseratusdualima_lyricReff
          \gpmseratusdualima_lyricFive
          \gpmseratusdualima_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusdualima_lyricOne
           \gpmseratusdualima_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusdualima_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmseratusdualima_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusdualima_lyricThree
           \lyricsOff
           \gpmseratusdualima_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusdualima_lyricFour
           \lyricsOff
           \gpmseratusdualima_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratusdualima_lyricFive
           \lyricsOff
           \gpmseratusdualima_lyricReff
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
      \new Voice = melodi \gpmseratusdualima_f_music
    }
  >>
  \midi {
    \tempo 4 = 100
  }
}
