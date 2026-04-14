\version "2.24.4"

\include "GPM243_IkutYesus_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaempattiga_a_music_solmisasi
      }
    }
    \gpmduaempattiga_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduaempattiga_a_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
