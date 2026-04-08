\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 274. Berjalan Bersama Yesus"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = F, 4/4, ♩ = 90"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
        ", 2004"
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

gpmduaratustujuhempat_f_notes = {
  \key f \major
  \relative f'{
    r4 c4 f8 f4 c8 | f4 g4 a8 (bes8 a8 g8) | \break
    f4 \breathe c'8 c8 c2 | g8 a4 bes8 a2 | \break
    r4 c,4 f8 f4 c8 | f4 g4 a8 bes8 a8 g8 | \break
    f4 \breathe c'8 c8 c2 | g8 a4 g8 f2 | \break
    
    \repeat volta 2{
        r4 f8 f8 bes2 | d2. d4 | \break
        c4 bes4 c8 (bes8 c8)  a8~ | \once \override Tie.stencil = ##f (a1* 4/4~) ( |a4) \break 
        r8 c8 c8 bes8 bes8 a8 | a8 g8 r8 c8 c8 bes8 bes8 a8 | \break
        a8 g8 r8 c8 c8 bes8 bes8 a8 | a8 g4. \break
        
    }
    \alternative{
        {g8 g4 g8 g8 (f4) g8 a2 \breathe | bes2 (c2) \break }
        {g8 g4 g8 bes8 (a4) g8 g8 (\once \override Tie.stencil = ##f f4.~ | f1* 4/4)}
    }
  }
}

gpmduaratustujuhempat_f_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratustujuhempat_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratustujuhempat_f_music_solmisasi = \solmisasiMusic \gpmduaratustujuhempat_f_music

gpmduaratustujuhempat_lyricOne = \lyricmode {
    Ber -- ja -- lan ber -- sa -- ma Ye -- sus, ha -- ti -- ku a -- mat se -- nang.
    Wa -- lau -- pun di -- tan -- tang ba -- dai yang ken -- cang, di -- ri -- ku ti -- dak gen -- tar.
    Ki -- ta ja -- lan ber -- sa -- ma Ye -- susu, di -- ma -- na- ma -- na sa -- ja, si -- ang a -- tau -- pun ma -- lam,
    bi -- ar i -- blis meng -- ha -- lang,
    Ye -- sus ber -- sa -- ma -- ku oo.
    Ye -- sus ber -- sa -- ma -- ku.
}






% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaratustujuhempat_f_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaratustujuhempat_lyricOne
    % \new Lyrics \lyricsto melodi \gpmduaratustujuhempat_lyricTwo
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
      \new Voice = melodi \gpmduaratustujuhempat_f_music
    }
    \new Lyrics \lyricsto melodi \gpmduaratustujuhempat_lyricOne
    % \new Lyrics \lyricsto melodi \gpmduaratustujuhempat_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

