\version "2.24.4"

\include "GPM005_DatanglahPadaTuhan_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmnolnollima_c_music_solmisasi
      }
    }
    \gpmnolnollima_c_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmnolnollima_c_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
