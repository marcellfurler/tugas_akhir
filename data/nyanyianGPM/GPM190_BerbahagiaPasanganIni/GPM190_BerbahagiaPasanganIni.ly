\version "2.24.4"

\include "GPM190_BerbahagiaPasanganIni_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratussembilanpuluh_d_music_solmisasi
      }
    }
    \gpmseratussembilanpuluh_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratussembilanpuluh_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
