\version "2.24.4"

\include "GPM021_MariBerdendang_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduasatu_d_music_solmisasi
      }
    }
    \gpmduasatu_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduasatu_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
