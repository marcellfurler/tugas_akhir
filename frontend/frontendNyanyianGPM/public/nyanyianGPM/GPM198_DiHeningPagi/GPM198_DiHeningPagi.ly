\version "2.24.4"

\include "GPM198_DiHeningPagi_ly_data.ily"

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratussembilandelapan_d_music_solmisasi
      }
    }
    \gpmseratussembilandelapan_lyricsAll
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
      \new Voice = melodi \gpmseratussembilandelapan_d_music
    }
  >>
  \midi {
    \tempo 4 = 80
  }
}
