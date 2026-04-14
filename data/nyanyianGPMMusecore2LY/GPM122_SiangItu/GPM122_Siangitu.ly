\version "2.24.4"

\include "GPM122_Siangitu_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusduadua_d_music_solmisasi
      }
    }
    \gpmseratusduadua_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratusduadua_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
