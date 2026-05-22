\version "2.24.4"

\include "GPM095_BintangDiTimur_ly_data.ily"

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmsembilanpuluhlima_d_music_solmisasi
      }
    }
    \gpmsembilanpuluhlima_lyricsAll
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
      \new Voice = melodi \gpmsembilanpuluhlima_d_music
    }
  >>
  \midi {
    \tempo 4 = 90
  }
}
