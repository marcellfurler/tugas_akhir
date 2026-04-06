\version "2.24.4"

\include "GPM284_TuhanKu_ly_data.ily"

notasi =
#(if is-svg?
     #{
       \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduaratusdelapanempat_c_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduaratusdelapanempat_c_music_solmisasi
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
           \gpmduaratusdelapanempat_lyricOne
           \gpmduaratusdelapanempat_lyricPreReff
           \gpmduaratusdelapanempat_lyricReff
           \gpmduaratusdelapanempat_lyricTwo
           \gpmduaratusdelapanempat_lyricPreReff
           \gpmduaratusdelapanempat_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratusdelapanempat_lyricOne
           \gpmduaratusdelapanempat_lyricPreReff
           \gpmduaratusdelapanempat_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratusdelapanempat_lyricTwo
           \lyricsOff
           \gpmduaratusdelapanempat_lyricPreReff
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmduaratusdelapanempat_lyricReff
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
      \new Voice = melodi \gpmduaratusdelapanempat_c_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
