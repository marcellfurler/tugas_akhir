\version "2.24.4"

\include "GPM143_HormatBagiAllah_ly_data.ily"


notasi =
#(if is-svg?
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratusempattiga_d_music_solmisasi
           }
         }
       >>
     #}
     ; else
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmseratusempattiga_d_music_solmisasi
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
            \gpmseratusempattiga_lyricOne
          }
        >>
      #}
      ; else
      #{
        <<
          \new Lyrics \lyricsto melodi {
            \gpmseratusempattiga_lyricOne
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
      \new Voice = melodi \gpmseratusempattiga_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
