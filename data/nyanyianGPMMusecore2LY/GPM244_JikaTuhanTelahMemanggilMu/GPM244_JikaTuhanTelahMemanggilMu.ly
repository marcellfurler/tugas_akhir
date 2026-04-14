\version "2.24.4"

\include "GPM244_JikaTuhanTelahMemanggilMu_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaempatempat_f_music_solmisasi
      }
    }
    \gpmduaempatempat_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduaempatempat_f_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
