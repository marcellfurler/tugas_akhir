\version "2.24.4"

\include "GPM012_IndahNamaMuBapa_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduabelas_c_music_solmisasi
      }
    }
    \gpmduabelas_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduabelas_c_music
    }
  >>
  \midi {
    \tempo 4 = 90
  }
}
