% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 22. Mari Bernyanyilah"


  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = F, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
    }
  }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Bartje Istia"
      ", 2007"
    }
  }
}

gpmduapuluhdua_f_notes_pdf = {
  \repeat volta 2 {
    a'8 a'4 a'8 g'8 f'8 g'8 f'8 | a'8 a'4 a'8 g'8 f'8 g'8 f'8 | \break
    a'8 a'4 a'8 g'8 f'8 g'8 f'8 | f'2. r4 | \break

    a'8 a'4 a'8 g'8 f'8 g'8 f'8 | a'8 a'4 a'8 g'8 f'8 g'8 f'8 | \break
    a'8 a'4 a'8 g'8 f'8 g'8 f'8 | f'2. r4 | \break

    g'8 g'4 g'8 g'8 f'8 g'8 f'8 | a'8 a'4 g'8 a'8 g'8 f'8 r8 | \break
    g'8 g'4 g'8 g'8 f'8 g'8 f'8 | f'8 f'8 g'8 a'8 c''4 r4 | \break

    a'8 a'4 a'8 g'8 f'8 g'8 f'8 | a'8 a'4 a'8 g'8 f'8 g'8 f'8 \break
    ^\markup { \italic "rit." }

    f'8 f'8 f'8 f'8 g'8 a'8 g'8 ( f'8) | f'2. r4 | \break
  }
}

gpmduapuluhdua_f_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  a'8 a'4 a'8 g'8 f'8 g'8 f'8 | a'8 a'4 a'8 g'8 f'8 g'8 f'8 | \break
  a'8 a'4 a'8 g'8 f'8 g'8 f'8 | f'2. r4 | \break

  a'8 a'4 a'8 g'8 f'8 g'8 f'8 | a'8 a'4 a'8 g'8 f'8 g'8 f'8 | \break
  a'8 a'4 a'8 g'8 f'8 g'8 f'8 | f'2. r4 | \break

  g'8 g'4 g'8 g'8 f'8 g'8 f'8 | a'8 a'4 g'8 a'8 g'8 f'8 r8 | \break
  g'8 g'4 g'8 g'8 f'8 g'8 f'8 | f'8 f'8 g'8 a'8 c''4 r4 | \break

  a'8 a'4 a'8 g'8 f'8 g'8 f'8 | a'8 a'4 a'8 g'8 f'8 g'8 f'8 \break
  ^\markup { \italic "rit." }

  f'8 f'8 f'8 f'8 g'8 a'8 g'8 ( f'8) | f'2. r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  a'8 a'4 a'8 g'8 f'8 g'8 f'8 | a'8 a'4 a'8 g'8 f'8 g'8 f'8 | \break
  a'8 a'4 a'8 g'8 f'8 g'8 f'8 | f'2. r4 | \break

  a'8 a'4 a'8 g'8 f'8 g'8 f'8 | a'8 a'4 a'8 g'8 f'8 g'8 f'8 | \break
  a'8 a'4 a'8 g'8 f'8 g'8 f'8 | f'2. r4 | \break

  g'8 g'4 g'8 g'8 f'8 g'8 f'8 | a'8 a'4 g'8 a'8 g'8 f'8 r8 | \break
  g'8 g'4 g'8 g'8 f'8 g'8 f'8 | f'8 f'8 g'8 a'8 c''4 r4 | \break

  a'8 a'4 a'8 g'8 f'8 g'8 f'8 | a'8 a'4 a'8 g'8 f'8 g'8 f'8 \break
  ^\markup { \italic "rit." }

  f'8 f'8 f'8 f'8 g'8 a'8 g'8 ( f'8) | f'2. r4 | \break 
}

gpmduapuluhdua_f_notes =
#(if is-svg?
     #{ \gpmduapuluhdua_f_notes_svg #}
     #{ \gpmduapuluhdua_f_notes_pdf #})

gpmduapuluhdua_f_music = {
  \time 4/4
  \key f \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduapuluhdua_f_notes
  \bar "|."
}

gpmduapuluhdua_f_music_solmisasi = \solmisasiMusic \gpmduapuluhdua_f_music

gpmduapuluhdua_lyricOne = \lyricmode {
    Ma -- ri ber -- nya -- nyi -- lah. Hai ma -- ri ber -- so -- rak- so -- rak, pu -- ji, pu -- ji, ha -- le -- lu -- ya. __
    A -- gung -- kan na -- ma -- Nya, b'ri hor -- mat ba -- gi -- Nya, Dia -- lah Ra -- ja a -- tas s'ga -- la ra -- ja. __
    Ja -- ngan -- lah kau ra -- gu, hai ja -- ngan -- lah kau bim -- bang da -- tang -- lah pa -- da Ye -- sus Ju -- ru s'la -- mat -- mu.
    Ti -- ap sa -- at I -- a pe -- nu -- hi has -- rat ha -- ti -- mu ber -- syu -- kur -- lah ke -- pa -- da -- Nya. __
}

gpmduapuluhdua_lyricTwo = \lyricmode {
    Ma -- ri nya -- nyi -- kan ba -- gi Tu -- han nya -- nyi -- an ba -- ru mu -- lia -- kan ke -- be -- sa -- ran -- Nya. __
    Bi -- ar -- lah yang ber -- na -- fas ang -- kat -- lah pu -- ja pu -- ji mas -- yur -- kan ke -- A -- gu -- ngan -- Nya. __
    Ja -- ngan -- lah kau gen -- tar, hai ber -- di -- ri -- lah te -- gar Di -- a -- lah ko -- ta ben -- teng per -- ta -- ha -- nan -- mu. 
    Ti -- ap sa -- at I -- a be -- ri -- kan ber -- kat ka -- ru -- nia ber -- syu -- kur -- lah ke -- pa -- da -- Nya. __
}

gpmduapuluhdua_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduapuluhdua_lyricOne
           \gpmduapuluhdua_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduapuluhdua_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmduapuluhdua_lyricTwo
         }
       >>
     #}
     )