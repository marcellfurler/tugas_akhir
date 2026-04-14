\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM268_YaTuhanKu/musecore/GPM268_YaTuhanKu.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "Untitled score"
  composer =  "Bartje Istia, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33291635"
}

#(set-global-staff-size 19.997457142857144)
\paper {

  paper-width = 21.01\cm
  paper-height = 29.69\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  indent = 1.6161538461538463\cm
  short-indent = 1.292923076923077\cm
}
\layout {
  \context {
    \Score
    autoBeaming = ##f
  }
}
PartPOneVoiceOne =  {
  \clef "treble" \time 3/4 \key d \major | % 1
  \tempo 4=80 \stemUp a'4 \stemUp a'4 \stemUp g'4 | % 2
  \stemUp fis'2 \stemUp fis'8 [ \stemUp fis'8 ] | % 3
  \stemUp g'4 \stemUp fis'4 \stemUp g'4 | % 4
  \stemUp a'2 r4 | % 5
  \stemUp a'4 \stemUp a'4 \stemUp g'4 | % 6
  \stemUp fis'2 \stemUp fis'8 [ \stemUp e'8 ] | % 7
  \stemUp d'4. \stemUp e'8 \stemUp fis'8 [ \stemUp g'8 ] \break | % 8
  \stemUp e'2 r4 | % 9
  \stemUp a'4 \stemUp a'4 \stemUp g'4 | \barNumberCheck #10
  \stemUp fis'2 \stemUp fis'8 [ \stemUp fis'8 ] | % 11
  \stemUp g'4 \stemUp a'4 \stemDown b'4 | % 12
  \stemUp a'2 r4 | % 13
  \stemUp fis'4 \stemUp fis'4 \stemUp fis'4 | % 14
  \stemUp fis'2 \stemUp fis'8 [ \stemUp fis'8 ] | % 15
  \stemUp e'4. \stemUp fis'8 \stemUp g'8 [ \stemUp e'8 ] \break | % 16
  \stemUp d'2 r4 | % 17
  \stemUp e'4 \stemUp e'4 \stemUp e'4 | % 18
  \stemUp e'4 \stemUp d'4 \stemUp e'4 | % 19
  \stemUp fis'4 \stemUp a'4 \stemDown b'4 | \barNumberCheck #20
  \stemUp a'2 r4 | % 21
  \stemUp e'4 \stemUp e'4 \stemUp e'4 | % 22
  \stemUp e'4 \stemUp g'4 \stemUp g'4 | % 23
  \stemUp g'4. \stemUp fis'8 \stemUp e'4 \break | % 24
  \stemUp fis'2 r4 | % 25
  \stemUp a'4 \stemUp a'4 \stemUp g'4 | % 26
  \stemUp fis'4 \stemUp fis'8 [ \stemUp fis'8 ] \stemUp fis'4 | % 27
  \stemUp fis'4. \stemUp fis'8 \stemUp g'8 [ \stemUp a'8 ] | % 28
  \stemDown b'2 r4 | % 29
  \stemDown b'4 \stemDown b'4 \stemDown b'4 | \barNumberCheck #30
  \stemUp a'4 \stemUp fis'4. \stemUp a'8 \break | % 31
  \stemUp a'4 \stemUp g'4 \stemUp e'4 | % 32
  \stemUp d'2 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ya
  Tu -- han -- "ku," Kau per -- lin -- dung -- an -- "ku." Ya Tu --
  han -- "ku," Eng -- kau -- lah pe -- ri -- sai -- "ku." Ber -- sa --
  ma -- "Mu," a -- da ke -- da -- mai -- "an." Ber -- sa -- ma -- Mu a
  -- da ka -- sih dan sa -- "yang." Ja -- uh -- kan a -- ku da -- ri
  ba -- ha -- "ya," tun -- tun a -- ku da -- lam "t'rang" Fir -- man
  -- Mu Di ta -- ngan -- "Mu," a -- da se -- lu -- ruh hi -- dup --
  "ku." Ha -- nya "Kau," Tu -- han per -- lin -- dung -- an -- ku
}


% The score definition
\score {
  <<

    \new Staff
    <<
      \set Staff.instrumentName = "Piano"
      \set Staff.shortInstrumentName = "Pno."
      \set Staff.midiInstrument = "acoustic grand"

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
      >>
    >>

  >>
  \layout {}
}
\score {
  \unfoldRepeats \articulate {

    \new Staff
    <<
      \set Staff.instrumentName = "Piano"
      \set Staff.shortInstrumentName = "Pno."
      \set Staff.midiInstrument = "acoustic grand"

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
      >>
    >>

  }
  \midi {\tempo 4 = 80 }
}

