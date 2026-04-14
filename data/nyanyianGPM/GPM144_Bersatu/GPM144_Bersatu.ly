\version "2.24.4"

\include "GPM144_Bersatu_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusempatempat_g_music_solmisasi
      }
    }
    \gpmseratusempatempat_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratusempatempat_g_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
