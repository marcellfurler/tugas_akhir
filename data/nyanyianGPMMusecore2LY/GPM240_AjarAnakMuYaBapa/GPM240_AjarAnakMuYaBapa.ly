\version "2.24.4"

\include "GPM240_AjarAnakMuYaBapa_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaempatnol_c_music_solmisasi
      }
    }
    \gpmduaempatnol_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduaempatnol_c_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
