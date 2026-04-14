\version "2.24.4"

\include "GPM188_KristusMengundang_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusdelapandelapan_e_music_solmisasi
      }
    }
    \gpmseratusdelapandelapan_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratusdelapandelapan_e_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
