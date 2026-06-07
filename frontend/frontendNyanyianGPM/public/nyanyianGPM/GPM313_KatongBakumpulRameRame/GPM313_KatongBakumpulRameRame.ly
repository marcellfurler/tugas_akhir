\version "2.24.4"

\include "GPM313_KatongBakumpulRameRame_ly_data.ily"

notasi =
#(if is-svg?
     #{
      
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmtigaratustigabelas_c_music_solmisasi
           }
         }
       >>
     #}
     #{
       <<
         \new SolmisasiStaff {
           \new SolmisasiVoice = melodi {
             \gpmtigaratustigabelas_c_music_solmisasi
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
           \gpmtigaratustigabelas_lyricOne
           \gpmtigaratustigabelas_lyricReff
         }
       >>
     #}
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmtigaratustigabelas_lyricOne
           \gpmtigaratustigabelas_lyricReff
         }
       >>
     #}
     )

\score {
  <<
    \notasi
    \syair
  >>
  \layout {}
}
\score {
   <<
    \new Staff {
      \new Voice = melodi \gpmtigaratustigabelas_c_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
