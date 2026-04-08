\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 212. Kumpol Cengke"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = F, 4/4, ♩ = 100"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Nus Tomatala"
      ", 2008"
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

% f --> 1-F, 2-G, 3-A, 4-Bes, 5-C, 6-D, 7-E, 8-F

gpmduaratusduabelas_f_notes = {
  \key f \major
  \relative f'
  \repeat volta 4 {
    \partial 4 a8 bes8 | c8 c4 c8 bes8 a8 g8 c8 | a4 a4 g4 a8 bes8 | \break
    c8 c4 a8 bes8 c8 d8 c8 | g2.  \break 
    \bar "||" ^\markup { \italic \bold "Refrein" } f8 f8 | f8 f8 f8 g8 a4 \breathe g8 g8 | \break
    g8 g8 g8 a8 bes4 \breathe c8 c8 | c8 c8 c8 bes8 a8 c8 bes8 g8 | f2. 

  }
}

gpmduaratusduabelas_f_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratusduabelas_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratusduabelas_f_music_solmisasi = \solmisasiMusic \gpmduaratusduabelas_f_music

gpmduaratusduabelas_lyricOne = \lyricmode {
    Kum -- pol ceng -- ke kum -- pol deng nya -- nyi -- an syu -- kur,
    co -- ba re -- keng sio ba -- nya la -- wang -- e.
    Syu -- kur a -- kang par Ye -- sus, syu -- kur jang pu -- tus- pu -- tus. 
    Bi -- lang sa -- ja dang -- ke ba -- nya Ye -- sus e.
}

gpmduaratusduabelas_lyricTwo = \lyricmode {
    I -- kang ka -- wang su po -- no di -- da -- lam ja -- reng,
    a -- rom -- ba -- e su am -- per ta -- ba -- le. 
}

gpmduaratusduabelas_lyricThree = \lyricmode {
    Bu -- nga pa -- la di -- po -- hong ba -- rang -- ke- rang -- ke,
    sa -- gu lem -- peng su po -- no di -- du -- lang.
}

gpmduaratusduabelas_lyricFour = \lyricmode {
    Da -- ri do -- lo su a -- da per -- se -- ku -- tu -- an 
    yang ba -- di -- ri a -- tas fir -- man Tu -- han. 
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratusduabelas_f_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratusduabelas_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratusduabelas_lyricTwo
    \new Lyrics \lyricsto melodi \gpmduaratusduabelas_lyricThree
    \new Lyrics \lyricsto melodi \gpmduaratusduabelas_lyricFour
       
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
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduaratusduabelas_f_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratusduabelas_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaratusduabelas_lyricTwo
    \new Lyrics \lyricsto melodi \gpmduaratusduabelas_lyricThree
    \new Lyrics \lyricsto melodi \gpmduaratusduabelas_lyricFour
  >>
  \midi {
    \tempo 4 = 100
  }
}

