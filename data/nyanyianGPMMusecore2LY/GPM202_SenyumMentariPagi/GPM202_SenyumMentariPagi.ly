\version "2.24.4"

\include "GPM202_SenyumMentariPagi_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduanoldua_d_music_solmisasi
      }
    }
    \gpmduanoldua_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduanoldua_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
