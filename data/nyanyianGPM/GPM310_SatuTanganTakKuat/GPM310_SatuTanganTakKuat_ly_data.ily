% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 310. Satu Tangan Tak Kuat"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
      }
    }
  }

  composer = \markup {
    \pad-x #1
    \column {
        "Lirik: Wim. Davidsz, Juni 2005"
        "Lagu: Agust C. W. Gaspersz, Juni 2005"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmtigaratussepuluh_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 2 {
    % Trik untuk menampilkan bait dengan section
    % pada SVG (mode unfolded)
    #(if is-svg?
         #{
           \volta 1 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 1"
           }
           \volta 2 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 2"
           }
         #}
         ; else/defaulte
         (empty-music)
         )

    \partial 2 r8 a8 d8 fis8 | a4. fis8 b8 a8 fis8 d8 | e2 \break 
    r8 a,8 cis'8 e,8 | g4. b8 b8 b8 cis8 b8 | a2 \break 
    r8 fis8 fis8 g8 | a8 a8 a8 b8 a4. d8 | d8 b8 b8 a8 \break
    b4. b8 | a8 fis8 d8 fis8 g8 e8 d8 cis8 | d2 \break

    % reef
    r8 a'8 a8 a8 |  a8 e8 e2 r8 a8 | a8 fis8 fis4 \break
    r8 a8 a8 a8 | a8 e8 e4. e8 d8 e8 fis2 | \break
    r8 d8 d8 fis8 | a8 a8 a8 b8 a4 r8 d8 | d8 b8 b8 a8 \break
    b4 r8 b8 | a4 d4 cis4 cis4 | d2 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
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
}

gpmtigaratussepuluh_lyricTwo = \lyricmode {
  Sa -- tu mu -- lut, 'tak ku -- at ta -- ba -- os,
  du -- a mu -- lut 'tak ku -- at ta -- ba -- os.
  Bi -- la ki -- ta se -- mua ta -- baos o -- rang pas -- ti de -- ngar, 
  ma -- ri ki -- ta se -- mu -- a ta -- ba -- os.
}

gpmtigaratussepuluh_lyricReffOne = \lyricmode {
  Ha -- sil pas -- ti be -- sar, pas -- ti be -- sar.
  Ha -- sil pas -- ti be -- sar, pas -- ti be -- sar.
  Bi -- la ki -- ta se -- mua ber -- juang, ha -- sil pas -- ti be -- sar.
  B'ri -- ta -- kan na -- ma -- Nya. 
}

gpmtigaratussepuluh_lyricReffTwo = \lyricmode {
  Ha -- sil pas -- ti be -- sar, pas -- ti be -- sar.
  Ha -- sil pas -- ti be -- sar, pas -- ti be -- sar.
  Bi -- la ki -- ta se -- mua ber -- juang, ha -- sil pas -- ti be -- sar.
  Sak -- si -- kan Fir -- man -- Nya.
}
