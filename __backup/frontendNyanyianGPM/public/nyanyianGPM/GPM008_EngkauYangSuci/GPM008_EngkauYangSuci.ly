\version "2.24.4"

\include "GPM008_EngkauYangSuci_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmnolnoldelapan_g_music_solmisasi
      }
    }
    \gpmnolnoldelapan_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmnolnoldelapan_g_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
