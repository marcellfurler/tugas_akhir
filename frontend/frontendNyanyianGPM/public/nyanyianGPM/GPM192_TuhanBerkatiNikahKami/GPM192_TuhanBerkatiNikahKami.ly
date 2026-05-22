\version "2.24.4"

\include "GPM192_TuhanBerkatiNikahKami_ly_data.ily"

\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratussembilandua_e_music_solmisasi
      }
    }
    \gpmseratussembilandua_lyricsAll
  >>
  \layout {}
}

\score {
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratussembilandua_e_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
