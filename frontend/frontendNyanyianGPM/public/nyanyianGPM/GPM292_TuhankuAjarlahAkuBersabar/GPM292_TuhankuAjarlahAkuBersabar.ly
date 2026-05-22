\version "2.24.4"

\include "GPM292_TuhankuAjarlahAkuBersabar_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduasembilandua_d_music_solmisasi
      }
    }
    \gpmduasembilandua_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduasembilandua_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
