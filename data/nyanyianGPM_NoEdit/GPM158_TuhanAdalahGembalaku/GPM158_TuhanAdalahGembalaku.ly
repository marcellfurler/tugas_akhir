\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 158. Tuhan adalah Gembalaku"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = E, 4/4, ♩ = 90"
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

gpmseratuslimadelapan_e_notes = {
  \key e \major
  \relative e'
  \repeat volta 3 {
    e8 e8 e8 gis8 fis8 e8 fis8 gis8 | e2 r8 e8 dis8 e8 | \break
    fis4 fis4. fis8 e8 fis8 | gis2 r8 e8 fis8 e8 | \break
    cis8 b8 cis8 e8 a4. cis,8 | b8 gis'8 gis8 fis8 e4 \breathe gis8 gis8 | \break
    gis4 fis4 gis8 fis8 e8 fis8 | gis2 r8 e8 fis8 e8 | \break
    cis8 cis4 e8 dis8 e8 fis8 dis8 | e2. r4 | 
  }
}

gpmseratuslimadelapan_e_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratuslimadelapan_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratuslimadelapan_e_music_solmisasi = \solmisasiMusic \gpmseratuslimadelapan_e_music

gpmseratuslimadelapan_lyricOne = \lyricmode {
    Tu -- han a -- da -- lah gem -- ba -- la -- ku, a -- ku dom -- ba -- Nya te -- nang te -- duh
    Ke pa -- dang hi -- jau dan se -- gar, ke a -- ir yang se -- juk, ku di tun -- tun o -- leh cin -- ta -- Nya.
    A -- ku per -- ca -- ya se -- la -- ma- la -- ma -- nya.
}

gpmseratuslimadelapan_lyricTwo = \lyricmode {
    Tu -- han a -- da -- lah pe -- ri -- sai -- ku, da -- lam go -- da -- an te -- tap te -- guh.
    Hi -- lang se -- mua ke -- luh ke -- sah, ti -- a -- da ge -- li -- sah, ku -- ber -- ja -- lan da -- lam ka -- sih -- Nya.
    A -- ku per -- ca -- ya se -- la -- ma- la -- ma -- nya.
}
gpmseratuslimadelapan_lyricThree = \lyricmode {
    Tu -- han a -- da -- lah ca -- ha -- ya -- ku, di -- sa -- at ka -- but hi -- tam ke -- lam.
    Fir -- man -- Nya -- lah pe -- li -- ta -- ku, a -- da su -- ka -- ci -- ta, ku di -- ja -- ga o -- leh sa -- yang -- nya.
    A -- ku per -- ca -- ya se -- la -- ma- la -- ma -- nya.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratuslimadelapan_e_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratuslimadelapan_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratuslimadelapan_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratuslimadelapan_lyricThree
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
      \new Voice = melodi \gpmseratuslimadelapan_e_music
    }
    \new Lyrics \lyricsto melodi \gpmseratuslimadelapan_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratuslimadelapan_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratuslimadelapan_lyricThree
  >>
  \midi {
    \tempo 4 = 90
  }
}

