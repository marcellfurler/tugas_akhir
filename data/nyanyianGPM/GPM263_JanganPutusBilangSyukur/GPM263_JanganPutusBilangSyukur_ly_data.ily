% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 263. Jangan Putus Bilang Syukur"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = E, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 100"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Nus Tomatala"
      ", 2008"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmduaenamtiga_e_notes_pdf = {

  \repeat volta 2 {
    \partial 2 b8. e'1* 3/16 fis'8 | gis'2 gis'8. fis'1* 3/16 gis'8 | a'2 a'8. gis'1* 3/16 fis'8 | e'2  \once \override Tie.stencil = ##f gis'2~ ( | gis'4) r4 | \break

    e'8. gis'1* 3/16 a'8 | b'2 b'8. ais'1* 3/16 b'8 | cis''2 cis''8. b'1* 3/16 gis'8 | \once \override Tie.stencil = ##f fis'1* 4/4 ~ ( | fis'4) r4 | \break

    b'8 b'4 a'8 | gis'2 gis'8. gis'1* 3/16 fis'8 | e'2 e'8. e'1* 3/16 dis'8 | cis'2 cis'8. e'1* 3/16 b'8 | \break

    a'2 e'8. e'1* 3/16 fis'8 | gis'2 b'8. gis'1* 3/16 e'8 | dis'2 dis'8. e'1* 3/16 fis'8 | \once \override Tie.stencil = ##f e'1* 4/4~ ( | e'4) r4 | \break
  }
}

gpmduaenamtiga_e_notes_svg = {
  \section
  \tweak X-offset #1  
  \sectionLabel \markup\smaller\bold "Bait 1"
  \partial 2 b8. e'1* 3/16 fis'8 | gis'2 gis'8. fis'1* 3/16 gis'8 | a'2 a'8. gis'1* 3/16 fis'8 | e'2  \once \override Tie.stencil = ##f gis'2~ ( | gis'4) r4 | \break

  e'8. gis'1* 3/16 a'8 | b'2 b'8. ais'1* 3/16 b'8 | cis''2 cis''8. b'1* 3/16 gis'8 | \once \override Tie.stencil = ##f fis'1* 4/4 ~ ( | fis'4) r4 | \break

  b'8 b'4 a'8 | gis'2 gis'8. gis'1* 3/16 fis'8 | e'2 e'8. e'1* 3/16 dis'8 | cis'2 cis'8. e'1* 3/16 b'8 | \break

  a'2 e'8. e'1* 3/16 fis'8 | gis'2 b'8. gis'1* 3/16 e'8 | dis'2 dis'8. e'1* 3/16 fis'8 | \once \override Tie.stencil = ##f e'1* 4/4~ ( | e'4) r4 | \break
  
  \section
  \tweak X-offset #1  
  \sectionLabel \markup\smaller\bold "Bait 2"
  \partial 2 b8. e'1* 3/16 fis'8 | gis'2 gis'8. fis'1* 3/16 gis'8 | a'2 a'8. gis'1* 3/16 fis'8 | e'2  \once \override Tie.stencil = ##f gis'2~ ( | gis'4) r4 | \break

  e'8. gis'1* 3/16 a'8 | b'2 b'8. ais'1* 3/16 b'8 | cis''2 cis''8. b'1* 3/16 gis'8 | \once \override Tie.stencil = ##f fis'1* 4/4 ~ ( | fis'4) r4 | \break

  b'8 b'4 a'8 | gis'2 gis'8. gis'1* 3/16 fis'8 | e'2 e'8. e'1* 3/16 dis'8 | cis'2 cis'8. e'1* 3/16 b'8 | \break

  a'2 e'8. e'1* 3/16 fis'8 | gis'2 b'8. gis'1* 3/16 e'8 | dis'2 dis'8. e'1* 3/16 fis'8 | \once \override Tie.stencil = ##f e'1* 4/4~ ( | e'4) r4 | \break
  
}

gpmduaenamtiga_e_notes =
#(if is-svg?
     #{ \gpmduaenamtiga_e_notes_svg #}
     #{ \gpmduaenamtiga_e_notes_pdf #})

gpmduaenamtiga_e_music = {
  \time 4/4
  \key e \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaenamtiga_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmduaenamtiga_e_music_solmisasi = \solmisasiMusic \gpmduaenamtiga_e_music

gpmduaenamtiga_lyricOne = \lyricmode {
  Ja -- ngan pu -- tus bi -- lang syu -- kur ke -- pa -- da Tu -- han.
  Se -- ka -- li -- pun ba -- nyak su -- sah dan de -- ri -- ta.
  Ye -- sus a -- da da -- lam su -- sah ju -- ga a -- da da -- lam su -- ka.
  I -- a te -- tap sa -- yang ki -- ta se -- la -- ma -- nya.
}

gpmduaenamtiga_lyricTwo = \lyricmode {
  U -- mur pan -- jang ha -- nya a -- da di -- ta -- ngan Tu -- han.
  Na -- pas hi -- dup a -- da da -- lam ku -- a -- sa -- Nya.
  Ja -- ngan bim -- bang, ja -- ngan gen -- tar a -- pa la -- gi pu -- tus a -- sa.
  Ye -- sus te -- tap pe -- li -- ha -- ra ki -- ta se -- mua.
}

gpmduaenamtiga_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaenamtiga_lyricOne
           \gpmduaenamtiga_lyricTwo
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmduaenamtiga_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmduaenamtiga_lyricTwo
         }
       >>
     #}
     )
