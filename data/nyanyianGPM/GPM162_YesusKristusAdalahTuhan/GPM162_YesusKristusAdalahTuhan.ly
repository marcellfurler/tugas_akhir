\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 108. Bahagialah Mereka"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = F, 4/4, ♩ = 90"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "P. J. Ferdinandus"
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

% f --> 1-F, 2-G, 3-A, 4-Bes, 5-C, 6-D, 7-E, 8-F

gpmseratusenamdua_f_notes = {
  \key f \major
  \relative f'
  \repeat volta 2 {
    d8 d8 d8 e8 f8 e8 d4 | a'4 a4 r8 a8 a8 a8 | \break
    bes4 bes r8 g8 g8 g8 | a4 a2 \breathe f8 f8 | \break
    g8 g8 r8 g8 f8 f8 e8 e8 | d2 r4 a'8 a8 | \break
    bes8 bes4. a4 a8 a8 | g4 g2 r4 | \break
    f4 f4 g8 g8 f8 f8 | d2. r4 | \break

    ^\markup { \italic \bold "Refrein" } bes'2 a4 g4 | a8 a4 g8 f4 e8 r8 | \break
    g2 g4 a8 (f8) | g2 f8 f8 e8 e8 | d2. r4
  }
}

gpmseratusenamdua_f_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenamdua_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenamdua_f_music_solmisasi = \solmisasiMusic \gpmseratusenamdua_f_music

gpmseratusenamdua_lyricOne = \lyricmode {
    Ye -- sus Kris -- tus a -- da -- lah Tu -- han, me -- ngam -- bil ru -- pa se -- o -- rang ham -- ba, 
    ja -- di sa -- ma de -- ngan ma -- nu -- si -- a, ren -- dah ha -- ti dan ber -- wi -- ba -- wa, 
    u -- mat tun -- duk me -- nyem -- bah.
    Se -- ga -- la li -- dah me -- nga -- ku Ye -- sus Kris -- tus a -- da -- lah Tu -- han.   
}

gpmseratusenamdua_lyricTwo = \lyricmode {
    Na -- ma a -- tas se -- ga -- la na -- ma, na -- ma yang in -- dah lu -- hur mu -- li -- a.
    Al -- lah b'ri -- kan ke -- pa -- da A -- nak -- Nya, na -- ma Ye -- sus mem -- be -- ri hi -- dup,
    pa -- da yang mau per -- ca -- ya.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusenamdua_f_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusenamdua_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusenamdua_lyricTwo
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
      \new Voice = melodi \gpmseratusenamdua_f_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusenamdua_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusenamdua_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

