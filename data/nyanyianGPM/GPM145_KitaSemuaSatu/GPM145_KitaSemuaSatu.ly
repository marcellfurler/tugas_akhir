\version "2.24.4"

\include "GPM145_KitaSemuaSatu_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusempatlima_f_music_solmisasi
      }
    }
    \gpmseratusempatlima_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratusempatlima_f_music
    }
  >>
  \midi {
    \tempo 4 = 100
  }
}
