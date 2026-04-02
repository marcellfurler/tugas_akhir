\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 114. Nyanyikan Bagi Tuhan"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = E, 4/4, ♩ = 100"
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



gpmseratusempatbelas_e_notes = {
  \key e \major
  \relative e' 
  \repeat volta 2{
    gis4 gis gis a8 fis |
    e4 e4. e8 dis8 e8 |
    fis4 fis4. fis8 e8 fis8 | 
    gis4 b2 r4 | \break

    gis4 gis gis a8 fis |
    e4 e4. gis8 fis8 gis8 | 
    a4. fis8 e4 dis4 | 
    e2 r4 b' | \break

    % reef dari 5 diatas terakhir (b)
    cis8 b2 gis8 fis8 e8 | 
    a4 cis4 b r8 b8|
    cis8 b2 gis8 fis e |
    fis4 gis4 fis r8 b8| \break

    cis8 b2 gis8 fis8 e8 |
    a4 a4 a4 r8 b8 | 
    cis8 b4 gis8 fis8 b4 gis16 (fis16) | 
   
    e2. r4 |
  }
}

gpmseratusempatbelas_e_music = {
  \time 4/4
  % \tempo 4 = 100
  \gpmseratusempatbelas_e_notes
  \bar "|."
}

gpmseratusempatbelas_e_music_solmisasi = \solmisasiMusic \gpmseratusempatbelas_e_music


gpmseratusempatbelas_lyricOne = \lyricmode {
  Nya -- nyi -- kan ba -- gi Tu -- han
  ki -- dung pu -- ji -- an,
  ma -- dah yang in -- dah
  Mas -- hur -- kan na -- ma Tu -- han,
  ma -- ha mu -- li -- a kar -- ya -- Nya.

  Ho -- sa -- na, Al -- lah -- ku yang ak -- bar.
  Ho -- sa -- na, Al -- lah yang per -- ka -- sa.
  Ho -- sa -- na, Ra -- ja  s'ga -- la Ra -- ja.
  Ho -- sa -- na. O Ha -- le -- lu -- ya
}

gpmseratusempatbelas_lyricTwo = \lyricmode {
  In -- dah -- nya na -- ma Tu -- han
  pen -- cip -- ta  al -- am
  se -- mes -- ta ra -- ya
  B'ri -- ta -- kan kar -- ya Tu -- han
  sam -- pai ke -- u -- jung du -- ni -- a.

}

\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusempatbelas_e_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusempatbelas_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusempatbelas_lyricTwo
  >>
  \layout { }
}

\score {
  % Gunakan original music
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratusempatbelas_e_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusempatbelas_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusempatbelas_lyricTwo
  >>
  \midi {
    \tempo 4 = 100
  }
}
