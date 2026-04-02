\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 310. Satu Tangan Tak Kuat"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 100"
    }
  }

  composer = \markup {
    \pad-x #1
    \column {
        "Lirik: Wim. Davidsz, Juni 2005"
        "Lagu: Agust C. W. Gaspersz, Juni 2005"
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

% 1D, 2E, 3Fis, 4G, 5A, 6B, 7Cis

gpmtigaratussepuluh_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 2 {
    \partial 2 r8 a8 d8 fis8 | a4. fis8 b8 a8 fis8 d8 | e2 \break 
    r8 a,8 cis'8 e,8 | g4. b8 b8 b8 cis8 b8 | a2 \break 
    r8 fis8 fis8 g8 | a8 a8 a8 b8 a4. d8 | d8 b8 b8 a8 \break
    b4. b8 | a8 fis8 d8 fis8 g8 e8 d8 cis8 | d2 \break

    % reef
    r8 a'8 a8 a8 |  a8 e8 e2 r8 a8 | a8 fis8 fis4 \break
    r8 a8 a8 a8 | a8 e8 e4. e8 d8 e8 fis2 | \break
    r8 d8 d8 fis8 | a8 a8 a8 b8 a4 r8 d8 | d8 b8 b8 a8 \break
    b4 r8 b8 | a4 d4 cis4 cis4 | d2

  }
}

gpmtigaratussepuluh_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmtigaratussepuluh_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmtigaratussepuluh_d_music_solmisasi = \solmisasiMusic \gpmtigaratussepuluh_d_music

gpmtigaratussepuluh_lyricOne = \lyricmode {
  Sa -- tu ta -- ngan 'tak ku -- at ber -- ju -- ang, 
  du -- a ta -- ngan 'tak ku -- at ber -- ju -- ang. 
  Bi -- la ki -- ta se -- mua ber -- juang ha -- sil pas -- ti be -- sar,
  ma -- ri ki -- ta se -- mu -- a ber -- ju -- ang.

  Ha -- sil pas -- ti be -- sar, pas -- ti be -- sar.
  Ha -- sil pas -- ti be -- sar, pas -- ti be -- sar.
  Bi -- la ki -- ta se -- mua ber -- juang, ha -- sil pas -- ti be -- sar.
  B'ri -- ta -- kan na -- ma -- Nya. 
}

gpmtigaratussepuluh_lyricTwo = \lyricmode {
  Sa -- tu mu -- lut, 'tak ku -- at ta -- ba -- os,
  du -- a mu -- lut 'tak ku -- at ta -- ba -- os.
  Bi -- la ki -- ta se -- mua ta -- baos o -- rang pas -- ti de -- ngar, 
  ma -- ri ki -- ta se -- mu -- a ta -- ba -- os.

  Ha -- sil pas -- ti be -- sar, pas -- ti be -- sar.
  Ha -- sil pas -- ti be -- sar, pas -- ti be -- sar.
    Bi -- la ki -- ta se -- mua ber -- juang, ha -- sil pas -- ti be -- sar.
    Sak -- si -- kan na -- ma -- Nya.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmtigaratussepuluh_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmtigaratussepuluh_lyricOne
    \new Lyrics \lyricsto melodi \gpmtigaratussepuluh_lyricTwo
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
      \new Voice = melodi \gpmtigaratussepuluh_d_music
    }
    \new Lyrics \lyricsto melodi \gpmtigaratussepuluh_lyricOne
    \new Lyrics \lyricsto melodi \gpmtigaratussepuluh_lyricTwo
  >>
  \midi {
    \tempo 4 = 100
  }
}

