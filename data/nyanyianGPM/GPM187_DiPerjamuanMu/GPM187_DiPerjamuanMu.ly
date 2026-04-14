\version "2.24.4"

\include "GPM187_DiPerjamuanMu_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusdelapantujuh_c_music_solmisasi
      }
    }
    \gpmseratusdelapantujuh_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratusdelapantujuh_c_music
    }
  >>
  \midi {
    \tempo 4 = 75
  }
}
