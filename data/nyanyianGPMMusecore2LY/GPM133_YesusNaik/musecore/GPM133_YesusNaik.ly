\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM133_YesusNaik/musecore/GPM133_YesusNaik.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 133. Yesus Naik"
  composer =  "A. E. Rumthe"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33317327"
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
\layout {
  \context {
    \Score
    autoBeaming = ##f
  }
}
PartPOneVoiceOne =  {
  \clef "treble" \numericTimeSignature\time 4/4 \key e \major | % 1
  \tempo 4=80 r2 \stemUp e'8 ( [ \stemUp fis'8 ) \stemUp gis'8 (
  \stemUp a'8 ) ] | % 2
  \stemDown b'8 \stemDown b'4. \stemDown e''8 ( [ \stemDown dis''8 )
  \stemDown cis''8 ( \stemDown dis''8 ) ] | % 3
  \stemDown e''2 \stemDown e''4 r8 \stemUp gis'8 | % 4
  \stemUp fis'8 \stemUp fis'4 \stemUp gis'8 \stemUp a'8 ( [ \stemUp
  gis'8 \stemUp fis'8 \stemUp dis'8 ) ] \break | % 5
  \stemUp e'2 r4 \stemUp gis'8 [ \stemUp fis'8 ] | % 6
  \stemUp e'8 \stemUp e'4 \stemUp e'8 \stemUp e'8 [ \stemUp fis'8
  \stemUp e'8 \stemUp cis'8 ] | % 7
  \stemUp b2. \stemUp b4 | % 8
  \stemUp fis'2 ~ \stemUp fis'8 [ \stemUp b8 \stemUp gis'8 \stemUp
  fis'8 ] | % 9
  \stemUp e'2 r4 \stemUp gis'8 [ \stemUp a'8 ] \break |
  \barNumberCheck #10
  \stemDown b'4. \stemDown b'8 \stemDown b'8 [ \stemDown b'8 \stemDown
  b'8 \stemDown b'8 ] | % 11
  \stemUp cis''8 [ \stemUp b'8 \stemUp a'8 \stemUp gis'8 ] \stemUp a'4
  \once \omit TupletBracket
  \times 2/3  {
    \stemUp gis'8 [ \stemUp gis'8 \stemUp fis'8 ]
  }
  | % 12
  \stemUp e'4. \stemUp e'8 \stemUp fis'8 [ \stemUp gis'8 \stemUp fis'8
  \stemUp fis'8 ] | % 13
  \stemUp e'4 \stemUp e'4 r2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ye
  --\skip1 sus\skip1 na -- "ik," Ye --\skip1 sus\skip1 na -- ik ke --
  pa -- da Ba -- pa --\skip1 \skip1 \skip1 Nya Ye -- sus na -- ik ke
  -- pa -- da Ba -- pa -- Nya di sur --\skip1 ga mu -- li -- "a." I --
  a "t'lah" me -- nang -- gung kar -- ya ke -- "s'la" -- ma -- tan --
  "Nya," ba -- gi se -- lu -- ruh u -- mat ma -- nu si -- a
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

