\version "2.24.4"

\include "GPM121_KarenaDosaManusia_ly_data.ily"

notasi =
#(if is-svg?
     #{
       
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratusdusatu_b_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratusdusatu_b_music_solmisasi
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
           \gpmseratusdusatu_lyricOne
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratusdusatu_lyricOne
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
  <<
    \new Staff {
      \new Voice = melodi \gpmseratusdusatu_b_music
    }
  >>
  \midi {
    \tempo 4 = 95
  }
}
