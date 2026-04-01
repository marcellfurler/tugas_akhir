\version "2.24.4"
% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../__includes/tie-attributes.ily"
\include "../__includes/fermata.ily"
\include "../__includes/highlight-bars.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% KONFIGURASI GLOBAL untuk partitur Nyanyian GPM %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Ekstensi untuk file MIDI
% Di Windows: .mid, di Linux: .midi
% Seragamkan saja
#(ly:set-option 'midi-extension "midi")

%% Dummy header
\header {
  % Dummy headers agar ada spasi vertikal
  % dari judul ke identitas lagu
  subsubtitle = \markup\null

  % Dummy headers agar ada spasi vertikal
  % dari identitas lagu ke baris pertama lagu
  arranger = \markup\null

  % Default tagline
  tagline = \markup {
    \sans \fontsize #-1 {
      \concat {
        "Koleksi Partitur Nyanyian GPM"
        " - Diproduksi dengan solmisasi-lily v"
        #(solmisasi-lily-version)
      }
    }
  }
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
      #:roman "Lilypond Serif"
      #:sans "Lilypond Sans Serif"
      #:typewriter "Noto Mono"
      #:factor (/ staff-height pt 20)
      ))
  % Lilypond 2.25 gunakan ini untuk fonts
  %   property-defaults.fonts.serif = "Times New Roman"
  %   property-defaults.fonts.sans = "Arial"

  %% KONFIGURASI INDENTASI DAN MARGIN %%

  % Partitur rata kiri
  indent = 0\mm
  short-indent = 0\mm

  left-margin = 15\mm
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

  % Jarak header ke sistem not pertama
  markup-system-spacing =
  #'((basic-distance . 8)
     (padding . 2))

  % Padding antar sistem/baris
  system-system-spacing.padding = 3

  % Spacing dari bottom-margin ke baris terakhir lagu
  last-bottom-spacing.padding = 5

  % Page breaking
  % Untuk SVG animation, no page breaking
  % Untuk SVG one-line, diatur di GPM000_JudulLagu_ly_one-line.ly
  page-breaking = #(if is-svg?
                       ly:one-page-breaking
                       ; else/default
                       ly:optimal-breaking
                       )
}


\layout {
  \context {
    \Score
    % Jika BarNumber tidak diperlukan:
    \remove Bar_number_engraver
    % Jika SystemStartBar tidak diperlukan:
    \remove System_start_delimiter_engraver
    % Diperlukan untuk animasi
    \override StaffHighlight.after-line-breaking = #add-data-bar-to-highlight
  }
  \context {
    % Diperlukan untuk animasi
    \SolmisasiStaff
    #(if is-svg?
         (ly:parser-include-string
          "\\consists #Simple_highlight_engraver
           \\consists Staff_highlight_engraver
           \\consists #Bar_timing_collector"))
  }
  \context {
    \Lyrics
    \override LyricText.Y-offset = #0.8
    \override LyricExtender.Y-offset = #0.8
    \override LyricHyphen.Y-offset = #0.95
  }
}

%% Utilities %%

lyricsOff = {
  \omit Lyrics.LyricText
  \omit Lyrics.LyricSpace
  \omit Lyrics.LyricHyphen
  \omit Lyrics.LyricExtender
  \omit Lyrics.LyricRepeatCount
}

% Layout untuk one-line
oneLineLayoutForSVG = \layout {
  \context {
    \Voice
    \consists \Tie_grob_engraver
    \consists #simple-fermata-data-engraver
  }
  \context {
    \SolmisasiVoice
    \consists \Tie_grob_engraver
    \consists #simple-fermata-data-engraver
  }
}