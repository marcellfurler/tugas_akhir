\version "2.24.4"

\include "GPM055_TuhanKasihani_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmlimalima_c_music_solmisasi
      }
    }
    \gpmlimalima_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmlimalima_c_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
