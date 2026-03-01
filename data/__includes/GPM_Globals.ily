%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% KONFIGURASI GLOBAL untuk partitur Nyanyian GPM %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Ekstensi untuk file MIDI
% Di Windows: .mid, di Linux: .midi
% Seragamkan saja
#(ly:set-option 'midi-extension "mid")

%% Dummy header
\header {
  % Dummy subtitle agar ada spasi vertikal
  % dari judul ke identitas lagu
  subtitle = \markup\null
  % Dummy arranger agar ada spasi vertikal
  % dari identitas lagu ke baris pertama lagu
  arranger = \markup\null
}

%% Konfigrasu kertas partitur

\paper {
  %% KONFIGURASI UKURAN KERTAS %%
  % By Lilypond's default, sebenarnya sudah A4.

  #(set-default-paper-size "a4")

  %% KONFIGURASI FONT %%
  % Untuk memperbesar ukuran font tanpa mengubah layout size
  % secara global, ubah angka di #:faktor menjadi lebih kecil,
  % misalnya 19.
  % Layout size default adalah 20, setara dengan 7mm di Sibelius.

  #(define fonts
     (set-global-fonts
      #:roman "Noto Serif"
      #:sans "Noto Sans"
      #:typewriter "Noto Mono"
      #:factor (/ staff-height pt 20)
      ))
  % Lilypond 2.25 gunakan ini untuk fonts
  %   property-defaults.fonts.serif = "Times New Roman"
  %   property-defaults.fonts.sans = "Arial"

  %% KONFIGURASI INDENTASI DAN MARGIN %%

  % Partitur rata kiri
  indent = 10\mm
  short-indent = 10\mm

  left-margin = 5\mm
  right-margin = 15\mm

  top-margin = 15\mm
  bottom-margin = 15\mm

  % Rata kanan baris terakhir
  % Set ##t kalau tidak mau baris terakhir rata kanan.
  ragged-last = ##f

  % Jangan kompres atau stretch halaman secara vertikal
  ragged-bottom = ##t

  % Jangan kompres atau stretch halaman terakhir secara vertikal
  % Perhatikan: berbeda dengan ragged-bottom
  ragged-last-bottom = ##f

  %% KONFIGURASI SYSTEM SPACING %%

  % Padding antar sistem/baris
  system-system-spacing.padding = 3
}


\layout {
  \context {
    \Score
    % Jika BarNumber tidak diperlukan:
    \remove Bar_number_engraver
    % Jika SystemStartBar tidak diperlukan:
    \remove System_start_delimiter_engraver
  }
}

