\version "2.24.4"
\include "solmisasi.ily"

\paper {
  % some paper settings goes here...
}

\header {
  title = \markup { \sans "Mary Had a Little Lamb" }
  subtitle = "Excerpt — in D Major and E Major"
  composer = "Traditional"
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

mary_in_d_maj_notes = {
  \key d \major
  \relative d' {
    fis4. e8 d4 e |
    fis4 4 2 |
    e4 4 2 |
    fis4 a4 2 | \break
    fis4. e8 d4 e |
    fis4 4 4 4 |
    e e fis e |
    d2. r4
  }
}

mary_music = {
  \time 2/4
  \mary_in_d_maj_notes
  \bar "||"
  \transpose d e \mary_in_d_maj_notes
  \bar "|."
}

mary_lyric = \lyricmode {
  % Verse 1
  Ma -- ry had a lit -- tle lamb,
  lit -- tle lamb, lit -- tle lamb.
  Ma -- ry had a lit -- tle lamb whose
  fleece was white as snow.
  % Verse 2
  Ev -- ery -- where that Ma -- ry went,
  Ma -- ry went, Ma -- ry went.
  Ev -- ery -- where that Ma -- ry went
  the lamb was sure to go.
}

\score {
  <<
    \new SolmisasiTimeAndKeySignature {
      \solmisasiMusic \mary_music
    }
    \new SolmisasiStaff {
      \new SolmisasiVoice {
        \solmisasiMusic \mary_music
      }
      \addlyrics {
        \solmisasiLyric \mary_lyric
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