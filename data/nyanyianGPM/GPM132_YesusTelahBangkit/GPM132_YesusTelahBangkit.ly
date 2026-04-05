\version "2.24.4"

\include "GPM132_YesusTelahBangkit_ly_data.ily"

notasi =
#(if is-svg?
     #{
       \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratustigadua_d_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratustigadua_d_music_solmisasi
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
           \gpmseratustigadua_lyricOne
           \gpmseratustigadua_lyricReff
           \gpmseratustigadua_lyricTwo
           \gpmseratustigadua_lyricReff

         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratustigadua_lyricOne
           \gpmseratustigadua_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratustigadua_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmseratustigadua_lyricReff
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
      \new Voice = melodi \gpmseratustigadua_d_music
    }
  >>
  \midi {
    \tempo 4 = 90
  }
}
