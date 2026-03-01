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
  title = \markup { "GPM 14. Ku S'lalu Ingin Memuji Mu" }

  composer = \markup {
    \column {
      "Lirik: Bartje Istia"
      "Lagu: Bartje Istia"
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

% c=c d e f g a b c
% bes = 1bes 2c 3d 4es 5f 6g 7a 1bes

gpmempatbelas_bes_notes = {
  \key bes \major 
  \relative bes' {
    r4 f8' f8 f8 d8 f8 bes8 | d4. bes8 f4. bes8 | g4. bes8 a8 bes8 a8 g8 | f2. r4| 
    r4 f8 f8 f8 d8 f8 bes8 | a4. bes8 c4. bes8 | a4. g8 f8 a8 c8 bes8 | d2. r4 | \break

    r4 f,8 f8 f8 d8 f8 bes8 | d4. bes8 f4. bes8 | g4. bes8 bes8 bes8 a8 g8 | f2. r4| 
    r4 f8 f8 f8 d8 f8 bes8 | c4. bes8 a4. bes8 | c4. d8 es8 c8 a8 c8 | bes2. r4 | \break

    r8 bes8 c8 bes8 a8 bes8 c8 bes8 | es4. bes8 g4. bes8 | es4. d8 c8 f,8 bes8 c8 | d2. r4 | \break
    r8 bes8 c8 bes8 a8 bes8 c8 bes8 | es4. bes8 g4. bes8 | f8' es4 d8 c8 f,8 bes8 c8 | d2. r4 | \break

    r8 d8 d8 d8 d8 d8 es8 d8 | c4. d8 c2 | r8 c8 c8 bes8 a8 g8 a8 bes8 | c2. r4 | \break
    r4 f4 es4. c8 | d4 (d4.)  c8 bes8 a8 | g4. g8 g8 bes8 es8 g8 | f4. es8 d2 | \break

    r4 f,4 d8' c8 d8 es8 | c4 (c4.) c8 c8 bes8 | a4. f8 es8 f8 a8 c8 | bes2. r4 | \break
  }
}

gpmempatbelas_bes_music = {
  \time 4/4
  \tempo 4 = 80
  \gpmempatbelas_bes_notes
  \bar "|."
}

gpmempatbelas_lyricOne = \lyricmode {
  Ba -- ha -- gia -- lah me -- re -- ka yang hi -- dup se -- der -- ha -- na.
  Ba -- ha -- gia -- lah me -- re -- ka yang re -- la ber -- ba -- gi.
  Ba -- ha -- gia -- lah me -- re -- ka yang sung -- guh  tu -- lus ha -- ti.
  Ba -- ha -- gia -- lah me -- re -- ka yang mem -- ba -- wa da -- mai.
}



\score {
  <<
    \new SolmisasiTimeAndKeySignature {
      \solmisasiMusic \gpmseratusdelapan_c_music
    }
    \new SolmisasiStaff {
      \new SolmisasiVoice {
        \solmisasiMusic \gpmempatbelas_bes_music
      }
      \addlyrics \gpmempatbelas_lyricOne
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
