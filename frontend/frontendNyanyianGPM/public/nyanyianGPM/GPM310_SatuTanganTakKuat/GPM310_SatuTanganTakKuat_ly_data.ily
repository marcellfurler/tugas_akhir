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
      \line {
        "Lirik: "
        \caps "Wim Davidsz"
        ", Juni 2005"
      }
      \line {
        "Lagu: "
        \caps "Agust C. W. Gaspersz"
        ", Juni 2005"
      }
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmtigaratussepuluh_d_notes_pdf = {
  \repeat volta 2 {
    \partial 2 r8 a8 d'8 fis'8 | a'4. fis'8 b'8 a'8 fis'8 d'8 | e'2 \break 
    r8 a8 cis'8 e'8 | g'4. b'8 b'8 b'8 cis''8 b'8 | a'2 \break 
    r8 fis'8 fis'8 g'8 | a'8 a'8 a'8 b'8 a'4. d''8 | d''8 b'8 b'8 a'8 \break
    b'4. b'8 | a'8 fis'8 d'8 fis'8 g'8 e'8 d'8 cis'8 | d'2 \break

    % reef
    r8 a'8 a'8 a'8 |  a'8 e'8 e'2 r8 a'8 | a'8 fis'8 fis'4 \break
    r8 a'8 a'8 a'8 | a'8 e'8 e'4. e'8 d'8 e'8 fis'2 | \break
    r8 d'8 d'8 fis'8 | a'8 a'8 a'8 b'8 a'4 r8 d''8 | d''8 b'8 b'8 a'8 \break
    b'4 r8 b'8 | a'4 d''4 cis''4 cis''4 | d''2 \break

  }
}

gpmtigaratussepuluh_d_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 2 r8 a8 d'8 fis'8 | a'4. fis'8 b'8 a'8 fis'8 d'8 | e'2 \break 
  r8 a8 cis'8 e'8 | g'4. b'8 b'8 b'8 cis''8 b'8 | a'2 \break 
  r8 fis'8 fis'8 g'8 | a'8 a'8 a'8 b'8 a'4. d''8 | d''8 b'8 b'8 a'8 \break
  b'4. b'8 | a'8 fis'8 d'8 fis'8 g'8 e'8 d'8 cis'8 | d'2 \break

  % reef
  r8 a'8 a'8 a'8 |  a'8 e'8 e'2 r8 a'8 | a'8 fis'8 fis'4 \break
  r8 a'8 a'8 a'8 | a'8 e'8 e'4. e'8 d'8 e'8 fis'2 | \break
  r8 d'8 d'8 fis'8 | a'8 a'8 a'8 b'8 a'4 r8 d''8 | d''8 b'8 b'8 a'8 \break
  b'4 r8 b'8 | a'4 d''4 cis''4 cis''4 | d''2 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 2 r8 a8 d'8 fis'8 | a'4. fis'8 b'8 a'8 fis'8 d'8 | e'2 \break 
  r8 a8 cis'8 e'8 | g'4. b'8 b'8 b'8 cis''8 b'8 | a'2 \break 
  r8 fis'8 fis'8 g'8 | a'8 a'8 a'8 b'8 a'4. d''8 | d''8 b'8 b'8 a'8 \break
  b'4. b'8 | a'8 fis'8 d'8 fis'8 g'8 e'8 d'8 cis'8 | d'2 \break

  % reef
  r8 a'8 a'8 a'8 |  a'8 e'8 e'2 r8 a'8 | a'8 fis'8 fis'4 \break
  r8 a'8 a'8 a'8 | a'8 e'8 e'4. e'8 d'8 e'8 fis'2 | \break
  r8 d'8 d'8 fis'8 | a'8 a'8 a'8 b'8 a'4 r8 d''8 | d''8 b'8 b'8 a'8 \break
  b'4 r8 b'8 | a'4 d''4 cis''4 cis''4 | d''2 \break
}

gpmtigaratussepuluh_d_notes =
#(if is-svg?
     #{ \gpmtigaratussepuluh_d_notes_svg #}
     #{ \gpmtigaratussepuluh_d_notes_pdf #})

gpmtigaratussepuluh_d_music = {
  \time 4/4
  \key d \major
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

gpmtigaratussepuluh_lyricsAll = 
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmtigaratussepuluh_lyricOne
           \gpmtigaratussepuluh_lyricReffOne
           \gpmtigaratussepuluh_lyricTwo
           \gpmtigaratussepuluh_lyricReffTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmtigaratussepuluh_lyricOne
           \gpmtigaratussepuluh_lyricReffOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmtigaratussepuluh_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
          %  \lyricsOff
           \gpmtigaratussepuluh_lyricReffTwo
         }
       >>
     #}
     )
