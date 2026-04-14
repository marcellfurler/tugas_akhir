\version "2.24.4"

\include "GPM185_SiapkanBetaJuaYesusE_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusdelapanlima_c_music_solmisasi
      }
    }
    \gpmseratusdelapanlima_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratusdelapanlima_c_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
