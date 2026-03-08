\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 116. Saat Yesus Di Getsemani"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = E, 4/4, ♩ = 80"
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

% e --> 1-E, 2-Fis 3-Gis, 4-A, 5-B, 6-Cis, 7-Dis, 8-E

gpmseratusenambelas_e_notes = {
  \key e \major
  \relative e'
  \repeat volta 2 {
    cis8 cis8 cis8 dis8 e8 dis8 e8 gis8 | gis2 r4 gis8 e8 | \break
    cis4 cis8 dis8 e8 dis8 cis8 b8 | cis2. r4 | \break
    cis8 cis8 cis8 dis8 e8 dis8 e8 gis8 | gis2 r4 gis8 gis8 | \break
    fis8 fis8 fis8 gis8 fis8 e8 dis8 cis8 | dis4 dis4 r8 \slurDashed (e16 dis16) \slurSolid e8 dis8 | \break
    cis4 cis4 cis8 cis8 cis8 dis8 | e4 e4. fis8 e8 fis8 | gis4 gis2 r4 |
  }
}

gpmseratusenambelas_e_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusenambelas_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusenambelas_e_music_solmisasi = \solmisasiMusic \gpmseratusenambelas_e_music

gpmseratusenambelas_lyricOne = \lyricmode {
    Sa -- at Ye -- sus di Get -- se -- ma -- ni sen -- di -- ri tia -- da yang me -- ne -- ma -- ni.
    Al -- lam ra -- ya men -- ja -- di sak -- si Pu -- tra Al -- lah yang pe -- nuh cin -- ta dan ka -- sih.
    su -- jud ber -- do -- a mo -- hon pa -- da Al -- lah Ba -- pa di Sor -- ga.
}

gpmseratusenambelas_lyricTwo = \lyricmode {
    Sa -- at Ye -- sus a -- kan di -- ta -- wan men -- ja -- la -- ni dan tia -- da me -- la -- wan. 
    Ha -- ti yang re -- muk 'tak ter -- pe -- ri ci -- um -- an ke -- ji bu -- kan -- nya cin -- ta ka -- sih
    \set ignoreMelismata = ##t I -- a \set ignoreMelismata = ##f me -- ne -- ri -- ma, se -- tia pa -- da jan -- ji Ba -- pa di Sor -- ga.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusenambelas_e_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusenambelas_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusenambelas_lyricTwo
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
      \new Voice = melodi \gpmseratusenambelas_e_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusenambelas_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusenambelas_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}

