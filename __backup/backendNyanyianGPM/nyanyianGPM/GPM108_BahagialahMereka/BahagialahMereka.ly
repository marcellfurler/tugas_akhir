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
  title = \markup { "GPM 108. Bahagialah Mereka" }

  composer = \markup {
    \column {
      "Lirik: Sonia C. Parera - Hummel, 2007"
      "Lagu: Sonia C. Parera - Hummel, 2007"
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

gpmseratusdelapan_c_notes = {
  \key c \major 
  \relative c' 
  \repeat volta 2 {
    r4 r8 g8' | g8 e8 g8 c8 | a4 a8 f8 | f8 d8 a8' g8 | g4 g2 | r8 e8 | e8 c8 f8 e8 | \break
    e4 c8 c8 | \slurDashed c8 (a8) \slurSolid b8 c8 | d4 d2 | r8 g8 | g8 e8 g8 c8 | \break
    a4 a8 f8 | f8 d8 a8' g8 | g4 g2 |  r8 e8 | e8 c8 f8 e8 | e8 (a8) a4 (| a4)\fermata | \break
    r8 a8 | a8 (c8) | c8 b8 | c4 c2 (|) | 
    
  }
}

gpmseratusdelapan_c_music = {
  \time 2/4
  \tempo 4 = 80
  \gpmseratusdelapan_c_notes
  \bar "|."
}

gpmseratusdelapan_lyricOne = \lyricmode {
  Ba -- ha -- gia -- lah me -- re -- ka yang hi -- dup se -- der -- ha -- na.
  Ba -- ha -- gia -- lah me -- re -- ka yang re -- la ber -- ba -- gi.
  Ba -- ha -- gia -- lah me -- re -- ka yang sung -- guh  tu -- lus ha -- ti.
  Ba -- ha -- gia -- lah me -- re -- ka yang mem -- ba -- wa da -- mai.
}

gpmseratusdelapan_lyricTwo = \lyricmode {
  Ba -- ha -- gia -- lah me -- re -- ka yang tak me -- man -- dang mu -- ka.
  Ba -- ha -- gia -- lah me -- re -- ka yang tabur ke a -- di -- lan.
  Ba -- ha -- gia -- lah me -- re -- ka yang rin -- du  ber -- se -- ku -- tu.
  Ba -- ha -- gia -- lah me -- re -- ka yang ta -- hu  ber -- syu -- kur.
}

\score {
  <<
    \new SolmisasiTimeAndKeySignature {
      \solmisasiMusic \gpmseratusdelapan_c_music
    }
    \new SolmisasiStaff {
      \new SolmisasiVoice {
        \solmisasiMusic \gpmseratusdelapan_c_music
      }
      \addlyrics \gpmseratusdelapan_lyricOne
      \addlyrics \gpmseratusdelapan_lyricTwo
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
