\version "2.24.4"

\include "GPM194_BerjumpaLagi_ly_data.ily"

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratussembilanempat_c_music_solmisasi
      }
    }
    \gpmseratussembilanempat_lyricsAll
  >>
  % Layout untuk SVG animation dan printed
  % Cek __includes/svg-animation-init.ily
  \layout {}
}

% Score untuk MIDI
% Harus dipisah sebagai workaround untuk menghindari
% warning kompilasi bahwa context Voice tidak ditemukan.
% Juga untuk menghindari kesalahan lain yang mungkin disebabkan
% oleh \solmisasiMusic.
\score {
  % Gunakan original music
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratussembilanempat_c_music
    }
  >>
  \midi {
    \tempo 4 = 90
  }
}
