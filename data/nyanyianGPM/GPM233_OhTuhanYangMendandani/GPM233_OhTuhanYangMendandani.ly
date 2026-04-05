\version "2.24.4"

\include "GPM233_OhTuhanYangMendandani_ly_data.ily"

notasi =
#(if is-svg?
     #{
       % SVG → linear
       \unfoldRepeats
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduaratustigatiga_c_music_solmisasi
           }
         }
       >>
     #}
     #{
       % PDF → normal (pakai repeat)
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduaratustigatiga_c_music_solmisasi
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
           \gpmduaratustigatiga_lyricOne
           \gpmduaratustigatiga_lyricReff
           \gpmduaratustigatiga_lyricOne
           \gpmduaratustigatiga_lyricTwo
           \gpmduaratustigatiga_lyricReff
           \gpmduaratustigatiga_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratustigatiga_lyricOne
           \gpmduaratustigatiga_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaratustigatiga_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmduaratustigatiga_lyricReff
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
  \unfoldRepeats {
    <<
      \new Staff {
        \new Voice = "melodi" { \gpmduaratustigatiga_c_music }
      }
      \new Lyrics \lyricsto "melodi" { \repeat unfold 2 \gpmduaratustigatiga_lyricOne }
      \new Lyrics \lyricsto "melodi" { \repeat unfold 2 \gpmduaratustigatiga_lyricTwo }
    >>
  }
  \midi { \tempo 4 = 80 }
}
