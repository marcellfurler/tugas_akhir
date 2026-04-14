\version "2.24.4"

\include "GPM130_SiapakahYangKauCari_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratustigapuluh_d_music_solmisasi
      }
    }
    \gpmseratustigapuluh_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratustigapuluh_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
