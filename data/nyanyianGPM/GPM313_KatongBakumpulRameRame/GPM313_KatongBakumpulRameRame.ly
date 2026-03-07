\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 313. Katong Bakumpul Rame-Rame"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = C, 4/4, ♩ = 85"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Bartje Istia"
      ", 2007"
    }
  }

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

gpmtigaratustigabelas_c_notes = {
  \key c \major
  \relative c'{
    r8 e8 e8 f8 e8 d8 c8 d8 |e8 e4 d8 c4 r4 | f8 f8 a8 a8 g4. f8 | e1* 4/4 | \break
    r4 e8 e8 e8 d8 c8 d8 | e8 e4 d8 c4 r4 | d8 d8 d8 e8 d8 c8 b8 c8 | d1* 4/4 | \break
    r8 e8 e8 f8 e8 d8 c8 d8 | e8 e4 d8 c4 r4 |f8 f8 a8 a8 g4. f8 | e1* 4/4 | \break 
    r4 e8 e8 e8 d8 c8 d8 | e8 e4 d8 c4 r4 | f8 f8 f8 f8 e4. d8 | c1* 4/4 | \break

    r4 a'8 a8 a8 g8 f8 g8 | a8 a4 g8 f4 r4 | c'8 c8 c8 c8 b4. a8 | g4. f8 e2 | \break  
    r4 a8 a8 a8 g8 f8 g8 | a8 a4 g8 f4 r4 | c'8 c8 c8 c8 b4. a8 | g4. f8 e2 | \break 
    r4 e8 e8 e8 d8 c8 d8 | e8 e4 d8 c4 r8 c8 | d8 d8 f8 f8 e4. d8 | c1 * 4/4
  }
}

gpmtigaratustigabelas_c_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmtigaratustigabelas_c_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmtigaratustigabelas_c_music_solmisasi = \solmisasiMusic \gpmtigaratustigabelas_c_music

gpmtigaratustigabelas_lyricOne = \lyricmode {
  Ka -- tong ba -- kum -- pul ra -- me- ra -- me a -- le li -- a ma -- nis la -- wang -- e.
  Hi -- dop sa -- ma a -- de  ka -- ka si -- o, sa -- tu ha -- ti sa -- tu jan -- tong -- e.
  Sa -- tu pung su -- sah la -- eng ban -- tu a -- le, sa -- ma- sa -- ma ra -- sa -- e.
  Ja -- ngan sim -- pan da -- lam ha -- ti si -- o, i -- tu Tu -- han pu -- nya mau.

  Yang me -- na  -- bur de -- ngan a -- er ma -- ta me -- nu -- ai de -- ngan su -- ka -- ci -- ta.
  A -- sal ku -- at deng som -- ba -- yang min -- ta se -- la -- lu a -- da peng -- hi -- bu -- ran.
  Ma -- nu -- sia me -- nim -- bang da -- lam ha -- ti, pu -- tus -- an a -- da di Tu -- han.
}


% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmtigaratustigabelas_c_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmtigaratustigabelas_lyricOne
    % \new Lyrics \lyricsto melodi \gpmtigaratustigabelas_lyricTwo
  >>
  \layout { }
}

% Score untuk MIDI
% Harus dipisah sebagai workaround untuk menghindari
% warning kompilasi bahwa context Voice tidak ditemukan.
% Juga untuk menghindari kesalahan lain yang mungkin disebabkan
% oleh \solmisasiMusic.
\score {
  % Gunakan original music
    <<
    \new Staff {
      \new Voice = melodi \gpmtigaratustigabelas_c_music
    }
    \new Lyrics \lyricsto melodi \gpmtigaratustigabelas_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
  >>
  \midi {
    \tempo 4 = 85
  }
}

