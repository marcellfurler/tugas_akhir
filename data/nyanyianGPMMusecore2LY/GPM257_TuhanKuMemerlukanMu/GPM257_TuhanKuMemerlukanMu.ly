\version "2.24.4"

\include "GPM257_TuhanKuMemerlukanMu_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmdualimatujuh_f_music_solmisasi
      }
    }
    \gpmdualimatujuh_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmdualimatujuh_f_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
