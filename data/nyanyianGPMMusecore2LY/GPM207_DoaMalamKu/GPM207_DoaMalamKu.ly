\version "2.24.4"

\include "GPM207_DoaMalamKu_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratustujuh_d_music_solmisasi
      }
    }
    \gpmduaratustujuh_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduaratustujuh_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
