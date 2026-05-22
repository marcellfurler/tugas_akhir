% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 277. Dulu Ku Tak Mengerti"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Ots. Kilanmasse"
      ", 2009"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaratustujuhtujuh_d_notes_pdf = {
    r4 a4 d'4 e'8 ( g'8) | fis'4. fis'8 fis'8 fis'8 e'16 ( d'16) e'8 | d'2 r8 d'8 fis'8 a'8 | \break
    d''8 d''4. cis''4. b'8 | b'8 a'1* 7/8 | r4 \tuplet 3/2 {fis'8 e'8 fis'8} b'4. a'8 | \break
    a'8 g'8 g'4 g'8 fis'8 e'8 fis'8 | g'4 a'8 a'8 a'8 b'8 a'8 g'8 | fis'1* 4/4 | \break 
    r4 a4 d'4 e'8 ( g'8) | fis'8 fis'4 fis'8 fis'8 fis'8 e'16 ( d'16) e'8 | d'2 r4 \tuplet 3/2 { d'8 fis'8 a'8} | \break
    d''4. d''8 cis''8 cis''8 b'8 ( a'16 b'16) | a'1* 4/4 | r4 fis'8 fis'8 b'4. a'8 | \break
    a'8 g'8 g'4 g'8 fis'8 e'8 fis'8 | g'4 a'8 g'8 fis'4. e'16 ( d'16) | d'1* 4/4 | \break

    \repeat volta 2 {
      % reef
      \break r4 d''4 e''8 ( d''8) cis''8 ( d''8) | b'4 b'8 b'8 b'8 a'8 g'8 fis'8 | e'4 d''4 cis''4 b'4 | \break
      a'4 a'8 a'8 a'8 gis'8 a'8 b'8 | a'4 \breathe  fis'8 fis'8 b'4. a'8 | a'4 g'8 g'8 g'8 ( fis'8) e'8 fis'8 | \break
      g'4 a'8 a'8 b'4 a'8 g'8 | fis'1* 4/4 | r4 d''4 e''8 ( d''8) cis''8 ( d''8) |  \break
      b'4 b'8 b'8 b'8 a'8 g'8 fis'8 | e'4 \breathe  d''8 d''8 cis''4 b'4 | b'4 a'8 a'8 a'8 g'8 fis'8 g'8 | \break
      a'4 \breathe  fis'8 fis'8 b'4. a'8 | g'4 g'8 fis'8 e'4 fis'4 | \break
    } 
    \alternative{
    
      { g'4 \breathe a'8 g'8 fis'4 e'4 | 
      d'1* 4/4 } 
      { g'4 \breathe  a'8 a'8 d''4 e''4 | d''2. r4 } \break
    }
}

gpmduaratustujuhtujuh_d_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  r4 a4 d'4 e'8 ( g'8) | fis'4. fis'8 fis'8 fis'8 e'16 ( d'16) e'8 | d'2 r8 d'8 fis'8 a'8 | \break
  d''8 d''4. cis''4. b'8 | b'8 a'1* 7/8 | r4 \tuplet 3/2 {fis'8 e'8 fis'8} b'4. a'8 | \break
  a'8 g'8 g'4 g'8 fis'8 e'8 fis'8 | g'4 a'8 a'8 a'8 b'8 a'8 g'8 | fis'1* 4/4 | \break 
  r4 a4 d'4 e'8 ( g'8) | fis'8 fis'4 fis'8 fis'8 fis'8 e'16 ( d'16) e'8 | d'2 r4 \times 2/3 { d'8 fis'8 a'8} | \break
  d''4. d''8 cis''8 cis''8 b'8 ( a'16 b'16) | a'1* 4/4 | r4 fis'8 fis'8 b'4. a'8 | \break
  a'8 g'8 g'4 g'8 fis'8 e'8 fis'8 | g'4 a'8 g'8 fis'4. e'16 ( d'16) | d'1* 4/4 | \break

  % ref
  \break r4 d''4 e''8 ( d''8) cis''8 ( d''8) | b'4 b'8 b'8 b'8 a'8 g'8 fis'8 | e'4 d''4 cis''4 b'4 | \break
  a'4 a'8 a'8 a'8 gis'8 a'8 b'8 | a'4 \breathe  fis'8 fis'8 b'4. a'8 | a'4 g'8 g'8 g'8 ( fis'8) e'8 fis'8 | \break
  g'4 a'8 a'8 b'4 a'8 g'8 | fis'1* 4/4 | r4 d''4 e''8 ( d''8) cis''8 ( d''8) |  \break
  b'4 b'8 b'8 b'8 a'8 g'8 fis'8 | e'4 \breathe  d''8 d''8 cis''4 b'4 | b'4 a'8 a'8 a'8 g'8 fis'8 g'8 | \break
  a'4 \breathe  fis'8 fis'8 b'4. a'8 | g'4 g'8 fis'8 e'4 fis'4 | \break
    
  g'4 \breathe a'8 g'8 fis'4 e'4 | d'1* 4/4

    % ref
  \break r4 d''4 e''8 ( d''8) cis''8 ( d''8) | b'4 b'8 b'8 b'8 a'8 g'8 fis'8 | e'4 d''4 cis''4 b'4 | \break
  a'4 a'8 a'8 a'8 gis'8 a'8 b'8 | a'4 \breathe  fis'8 fis'8 b'4. a'8 | a'4 g'8 g'8 g'8 ( fis'8) e'8 fis'8 | \break
  g'4 a'8 a'8 b'4 a'8 g'8 | fis'1* 4/4 | r4 d''4 e''8 ( d''8) cis''8 ( d''8) |  \break
  b'4 b'8 b'8 b'8 a'8 g'8 fis'8 | e'4 \breathe  d''8 d''8 cis''4 b'4 | b'4 a'8 a'8 a'8 g'8 fis'8 g'8 | \break
  a'4 \breathe  fis'8 fis'8 b'4. a'8 | g'4 g'8 fis'8 e'4 fis'4 | \break

  g'4 \breathe  a'8 a'8 d''4 e''4 | d''2. r4 \break
}

gpmduaratustujuhtujuh_d_notes =
#(if is-svg?
     #{ \gpmduaratustujuhtujuh_d_notes_svg #}
     #{ \gpmduaratustujuhtujuh_d_notes_pdf #})

gpmduaratustujuhtujuh_d_music = {
  \time 4/4
  \key d \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaratustujuhtujuh_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaratustujuhtujuh_d_music_solmisasi = \solmisasiMusic \gpmduaratustujuhtujuh_d_music

gpmduaratustujuhtujuh_lyricOne = \lyricmode {
  Du -- lu ku tak me -- nger -- ti ya Tu -- han a -- kan ka -- sih -- Mu yang a -- ba -- di
  te -- ta -- pi Kau pe -- du -- li dan me -- nga -- si -- hi -- ku wa -- lau ja -- uh da -- ri -- Mu
  Ki -- ni ku da -- tang pa -- da -- Mu ya Tu -- han tun -- juk -- kan -- lah ke -- be -- sar -- an -- Mu
  Hi -- dup yang tak pas -- ti mem -- bu -- at di -- ri ku tia -- da ber -- ar -- ti.
}

gpmduaratustujuhtujuh_lyricReff = \lyricmode {
  A -- ja -- ri -- lah a -- ku de -- ngan ka -- sih -- Mu, a -- gar a -- ku s'la -- lu de -- kat pa -- da -- Mu.
  Ja -- ngan Kau bi -- ar -- kan a -- ku ter -- se -- sat di du -- ni -- a i -- ni.
  A -- jar -- i -- lah a -- ku de -- ngan ka -- sih -- Mu me -- nyu -- su -- ri lem -- bah ke -- hi -- dup -- an i -- ni
  me -- ne -- bar -- kan ka -- sih yang a -- ba 
}

gpmduaratustujuhtujuh_lyricReffKamar = \lyricmode {
  di da -- ri -- Mu, Tu -- han.
}

gpmduaratustujuhtujuh_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaratustujuhtujuh_lyricOne
           \gpmduaratustujuhtujuh_lyricReff
           \gpmduaratustujuhtujuh_lyricReffKamar
           \gpmduaratustujuhtujuh_lyricReff
           \gpmduaratustujuhtujuh_lyricReffKamar
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
            \gpmduaratustujuhtujuh_lyricOne
           \gpmduaratustujuhtujuh_lyricReff
           \gpmduaratustujuhtujuh_lyricReffKamar
           \gpmduaratustujuhtujuh_lyricReffKamar
         }
       >>
     #}
     )
