\version "2.24.4"

\include "GPM210_SampeDiUjungTaongIni_ly_data.ily"


notasi =
#(if is-svg?
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduasatunol_d_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmduasatunol_d_music_solmisasi
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
            \gpmduasatunol_d_lyrics
          }
        >>
      #}
      ; else
      #{
        <<
          \new Lyrics \lyricsto melodi {
            \gpmduasatunol_d_lyrics
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
\score {
  <<
    \new Staff {
      \new Voice = melodi \gpmduasatunol_d_music
    }
  >>
  \midi {
    \tempo 4 = 70
  }
}
