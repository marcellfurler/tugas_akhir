\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 263. Jangan Putus Bilang Syukur"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = E, 4/4, ♩ = 100"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Nus Tomatala"
      ", 2008"
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

% do = e -> 1e 2fis 3gis 4a (4 1/2)ais 5b 6cis 7dis 1e

gpmduaenamtiga_e_notes ={
    \key e \major
    \relative e' 
    \repeat volta 2 {
        \partial 2 b8. e1* 3/16 fis8 | gis2 gis8. fis1* 3/16 gis8 | a2 a8. gis1* 3/16 fis8 | e2  \once \override Tie.stencil = ##f (gis2~ | gis4) r4 | \break

        e8. gis1* 3/16 a8 | b2 b8. ais1* 3/16 b8 | cis2 cis8. b1* 3/16 gis8 | \once \override Tie.stencil = ##f (fis1* 4/4 ~ | fis4) r4 | \break

        b8 b4 a8 | gis2 gis8. gis1* 3/16 fis8 | e2 e8. e1* 3/16 dis8 | cis2 cis8. e1* 3/16 b'8 | \break

        a2 e8. e1* 3/16 fis8 | gis2 b8. gis1* 3/16 e8 | dis2 dis8. e1* 3/16 fis8 | \once \override Tie.stencil = ##f (e1* 4/4~ | e4) r4 |
    }
}

gpmduaenamtiga_e_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmduaenamtiga_e_notes
  \bar "|."
}

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

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduaenamtiga_e_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduaenamtiga_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaenamtiga_lyricTwo
  >>
  \layout { }
}

\score {
  % Gunakan original music
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduaenamtiga_e_music
    }
    \new Lyrics \lyricsto melodi \gpmduaenamtiga_lyricOne
    \new Lyrics \lyricsto melodi \gpmduaenamtiga_lyricTwo
  >>
  \midi {
    \tempo 4 = 100
  }
}