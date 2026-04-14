\version "2.24.4"

\include "GPM171_KamiBersyukurMemujiMu_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratustujuhsatu_d_music_solmisasi
      }
    }
    \gpmseratustujuhsatu_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratustujuhsatu_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
