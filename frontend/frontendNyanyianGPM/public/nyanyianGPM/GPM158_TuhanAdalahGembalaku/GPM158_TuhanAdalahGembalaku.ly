\version "2.24.4"

\include "GPM158_TuhanAdalahGembalaku_ly_data.ily"

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratuslimadelapan_e_music_solmisasi
      }
    }
    \gpmseratuslimadelapan_lyricsAll
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
      \new Voice = melodi \gpmseratuslimadelapan_e_music
    }
  >>
  \midi {
    \tempo 4 = 90
  }
}
