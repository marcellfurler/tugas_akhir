\version "2.24.4"

\include "GPM186_YesusPanggil_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusdelapanenam_g_music_solmisasi
      }
    }
    \gpmseratusdelapanenam_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratusdelapanenam_g_music
    }
  >>
  \midi {
    \tempo 4 = 90
  }
}
