\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM016_MaeOIteSombaUpuYesus/musecore/GPM016_MaeOIteSombaUpuYesus.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "Mae O, Ite Somba Upu Yesus"
  composer =  "Elly Toisutta, 2004"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-20"
  source =  "https://musescore.com/user/40408317/scores/33496895"
  subtitle =  Subtitle
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
PartPOneVoiceOne =  {
  \clef "treble" \numericTimeSignature\time 4/4 \key d \major | % 1
  \tempo 4=80 r2. \stemUp a'8 \stemUp fis'8 | % 2
  \stemUp a'2. r4 | % 3
  \stemDown b'8 \stemDown b'8 \stemDown b'16 \stemDown b'16 \stemDown
  b'16 \stemDown b'16 \stemDown b'8 \stemDown b'8 \stemDown b'8
  \stemDown b'8 | % 4
  \stemUp b'8 ( \stemUp a'8 ) \stemUp a'2 \stemUp a'8 \stemUp fis'8 | % 5
  \stemUp a'2. r4 \break | % 6
  \stemDown b'8 \stemDown b'8 \stemDown b'16 \stemDown b'16 \stemDown
  b'16 \stemDown b'16 \stemDown b'8 \stemDown b'8 \stemDown b'8
  \stemDown b'8 | % 7
  \stemUp b'8 ( \stemUp a'8 ) \stemUp a'2 r8 \stemUp a'8 | % 8
  \stemDown d''8 \stemDown d''8 \stemDown d''8 \stemDown d''8
  \stemDown d''8 \stemDown d''8 \stemUp b'16 \stemUp a'16 \stemUp b'16
  \stemUp a'16 | % 9
  \stemUp a'2. r8 \stemUp a'8 \break | \barNumberCheck #10
  \stemDown d''8 \stemDown d''8 \stemDown d''8 \stemDown d''8
  \stemDown d''8 \stemDown d''8 \stemDown b'16 \stemDown a'16
  \stemDown b'16 \stemDown d''16 | % 11
  \stemDown d''2. r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ma
  -- e "o," i -- te som -- ba U -- pu Ye -- sus ra -- me -- ra --
  \skip1 "me." Ma -- e "o," i -- te som -- ba U -- pu Ye -- sus ra --
  me -- ra -- \skip1 "me." Ber -- sa -- tu ra -- me -- ra -- me som --
  ba Ye -- sus "e," me -- mu -- ji U -- pu Ye -- sus sa -- ma -- sa --
  ma "e."
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

