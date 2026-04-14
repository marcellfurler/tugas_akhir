\version "2.24.4"

\include "GPM131_SinarPaskahSudahTerbit_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratustigasatu_g_music_solmisasi
      }
    }
    \gpmseratustigasatu_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratustigasatu_g_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
