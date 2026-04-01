\version "2.24.4"

\include "GPM001_AkangManisLawang_ly_data.ily"

notasi =
#(if is-svg?
     #{
       \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmnolnolsatu_d_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmnolnolsatu_d_music_solmisasi
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
           \gpmnolnolsatu_lyricOne
           \gpmnolnolsatu_lyricReff
           \gpmnolnolsatu_lyricTwo
           \gpmnolnolsatu_lyricReff
           \gpmnolnolsatu_lyricThree
           \gpmnolnolsatu_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmnolnolsatu_lyricOne
           \gpmnolnolsatu_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmnolnolsatu_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmnolnolsatu_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmnolnolsatu_lyricThree
           \lyricsOff
           \gpmnolnolsatu_lyricReff
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
      \new Voice = melodi \gpmnolnolsatu_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
