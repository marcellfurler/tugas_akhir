\version "2.24.4"

\include "GPM270_BersukacitalahDalamPengharapan_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduatujuhpuluh_c_music_solmisasi
      }
    }
    \gpmduatujuhpuluh_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduatujuhpuluh_c_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
