\version "2.24.4"

\include "GPM211_WaktuBerlalu_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratussebelas_d_music_solmisasi
      }
    }
    \gpmduaratussebelas_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduaratussebelas_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
