\version "2.24.4"

\include "GPM208_MalamMenutupiWajahBumi_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratusdelapan_f_music_solmisasi
      }
    }
    \gpmduaratusdelapan_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduaratusdelapan_f_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
