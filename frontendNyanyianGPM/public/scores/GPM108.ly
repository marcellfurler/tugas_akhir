\version "2.24.4"
\include "solmisasi.ily"

\paper {
  % some paper settings goes here...
}

\header {
  title = \markup { \sans "108. Bahagialah Mereka" }
  subtitle = "Sonia C. Parera-Hummel, 2007"
  composer = "Sonia C. Parera-Hummel"
  tagline = \markup {
    \typewriter \fontsize #-1 {
      \concat {
        "Engraved using GNU Lilypond "
        #(string-join (map (lambda (v) (number->string v)) (ly:version)) ".")
        " — with solmisasi-lily v1.0.0"
      }
    }
  }
}

gpm108_Cmaj={
  \key c \major
  \relative c' {
    g g c g
  }
}

gpm108_music ={
  \time 2/4
  \gpm108_Cmaj
}

\score {
  <<
    \new SolmisasiTimeAndKeySignature {
      \solmisasiMusic \gpm108_music
    }
    \new SolmisasiStaff {
      \new SolmisasiVoice {
        \solmisasiMusic \gpm108_music
      }
    }
  >>
  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.basic-distance = #0
      \override LyricText.font-family = #'sans
      \override LyricText.font-size = #0
      \override LyricHyphen.Y-offset = #0.2
      \override LyricHyphen.minimum-distance = #2.0
    }
  }

  % ini untuk midi
  \midi {
    \tempo 4=120
  }
}