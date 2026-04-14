\version "2.24.4"

\include "GPM146_Kudus_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusempatenam_c_music_solmisasi
      }
    }
    \gpmseratusempatenam_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratusempatenam_c_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
