\version "2.24.3"

#(define _USE_VERSION2 #t)
\include "../../library/solmisasi.ily"

\paper {
  #(define fonts
    (set-global-fonts
      #:roman "Times New Roman"
      #:sans "Times New Roman"
      #:typewriter "Times New Roman"
    ))
}

\header {
  title = \markup { "GPM 114. Nyanyikan Bagi Tuhan" }

  composer = \markup {
    \column {
      "Lirik: Bartje Istia, 2007"
      "Lagu: Bartje Istia, 2007"
    }
  }

  tagline = \markup {
    \typewriter \fontsize #-1 {
      \concat {
        "Engraved using GNU Lilypond "
        #(lilypond-version) "."
        " - with solmisasi-lily v"
        #(solmisasi-lily-version)
      }
    }
  }
}

gpmseratusempatbelas_e_notes = {
  \key e \major
  \relative e' {
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
  \tempo 4 = 100
  \gpmseratusempatbelas_e_notes
  \bar "|."
}

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
    \new SolmisasiTimeAndKeySignature {
      \solmisasiMusic \gpmseratusempatbelas_e_music
    }
    \new SolmisasiStaff {
      \new SolmisasiVoice {
        \solmisasiMusic \gpmseratusempatbelas_e_music
      }
      \addlyrics \gpmseratusempatbelas_lyricOne
      \addlyrics \gpmseratusempatbelas_lyricTwo
    }
  >>
  \layout { }
  \midi { }
}

\layout {
  \context {
    \Score
    \override TextScript.font-name = #"Times New Roman"
    \override MetronomeMark.font-name = #"Times New Roman"
  }

  \context {
    \Lyrics
    \override LyricText.font-name = #"Times New Roman"
    \override LyricHyphen.font-name = #"Times New Roman"
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.basic-distance = #0
  }

  \context {
    \SolmisasiStaff
    \override TextScript.font-name = #"Times New Roman"
  }

  \context {
    \SolmisasiVoice
    \override TextScript.font-name = #"Times New Roman"
  }
}
