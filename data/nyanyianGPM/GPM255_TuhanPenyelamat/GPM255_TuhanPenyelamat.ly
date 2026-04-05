\version "2.24.4"

\include "GPM255_TuhanPenyelamat_ly_data.ily"

notasi =
#(if is-svg?
     #{
       \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduaratuslimalima_a_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduaratuslimalima_a_music_solmisasi
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
           \gpmduaratuslimalima_lyricOne
           \gpmduaratuslimalima_lyricReff
           \gpmduaratuslimalima_lyricTwo
           \gpmduaratuslimalima_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratuslimalima_lyricOne
           \gpmduaratuslimalima_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratuslimalima_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmduaratuslimalima_lyricReff
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
      \new Voice = melodi \gpmduaratuslimalima_a_music
    }
  >>
  \midi {
    \tempo 4 = 75
  }
}
