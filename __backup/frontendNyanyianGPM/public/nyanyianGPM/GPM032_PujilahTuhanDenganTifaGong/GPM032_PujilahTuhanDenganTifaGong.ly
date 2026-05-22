\version "2.24.4"

\include "GPM032_PujilahTuhanDenganTifaGong_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmtigadua_c_music_solmisasi
      }
    }
    \gpmtigadua_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmtigadua_c_music
    }
  >>
  \midi {
    \tempo 4 = 100
  }
}
