\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM243_IkutYesus/musecore/GPM243_IkutYesus.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 243. Ikut Yesus"
  composer =  "Bartje Istia, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33274139"
}

#(set-global-staff-size 19.997485714285716)
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
  \clef "treble" \numericTimeSignature\time 4/4 \key a \major | % 1
  \tempo 4=80 \stemDown e''4 \stemDown fis''4 \stemDown e''8 [
  \stemDown cis''8 ] r4 | % 2
  \stemDown a''8 [ \stemDown a''8 ~ \stemDown a''8 \stemDown a''8 ]
  \stemDown gis''4 \stemDown fis''4 | % 3
  \stemDown gis''2. r4 | % 4
  \stemDown d''4 \stemDown e''4 \stemDown d''8 [ \stemDown b'8 ] r4
  \break | % 5
  \stemDown gis''8 [ \stemDown gis''8 ~ \stemDown gis''8 \stemDown a''8
  ] \stemDown gis''4 \stemDown fis''4 | % 6
  \stemDown e''2. r4 | % 7
  \stemDown e''4 \stemDown fis''4 \stemDown e''8 [ \stemDown cis''8 ]
  r4 | % 8
  \stemDown a''8 [ \stemDown a''8 ~ \stemDown a''8 \stemDown a''8 ]
  \stemDown b''4 \stemDown a''4 | % 9
  \stemDown fis''2 r4 \stemDown fis''8 [ \stemDown fis''8 ] \break |
  \barNumberCheck #10
  \stemDown e''4 \stemDown a''4 \stemDown b''8 [ \stemDown a''8
  \stemDown cis'''8 \stemDown b''8 ] | % 11
  \stemDown a''2. r4 | % 12
  \stemDown cis'''4 \stemDown a''4 \stemDown e''4 \stemDown b''8 [
  \stemDown a''8 ] | % 13
  \stemDown gis''8 [ \stemDown fis''8 \stemDown gis''8 \stemDown a''8
  ] \stemDown b''4 r4 | % 14
  \stemDown b''4 \stemDown gis''4 \stemDown e''4 \stemDown b''8 [
  \stemDown d'''8 ] \break | % 15
  \stemDown cis'''4 \stemDown b''4 \stemDown cis'''4 r4 | % 16
  \stemDown cis'''4 \stemDown a''4 \stemDown e''4 \stemDown a''8 [
  \stemDown a''8 ] | % 17
  \stemDown a''4 \stemDown fis''4 \stemDown fis''4. \stemDown fis''8 | % 18
  \stemDown e''8 [ \stemDown cis''8 \stemDown e''8 \stemDown a''8 ]
  \stemDown gis''4 \stemDown b''4 | % 19
  \stemDown a''2. r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t I --
  kut Ye -- sus a -- da\skip1 ke -- da -- mai -- an I -- kut Ye -- sus
  a -- da\skip1 su -- ka -- ci -- ta I -- kut Ye -- sus a -- da\skip1
  peng -- hi -- bur -- an I -- kut Ye -- sus i -- kut "s'la" -- ma --
  nya Di -- a -- lah po -- kok ang -- gur yang be -- nar ki -- ta --
  lah ran -- ting -- ran -- ting -- nya Su -- bur -- lah dan ber -- bu
  -- ah -- lah di ta -- man in -- dah ba -- ha -- gia
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t De
  -- ngan Ye -- sus ja -- ngan\skip1 lah kau bim -- bang De -- ngan Ye
  -- sus ja -- ngan\skip1 lah kau gen -- tar De -- ngan Ye -- sus kau
  hi\skip1 dup ba -- ha -- "gia." De -- ngan Ye -- sus "s'la" -- ma --
  la -- ma -- "nya." \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
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
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "2." \PartPOneVoiceOneLyricsTwo }
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
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "2." \PartPOneVoiceOneLyricsTwo }
      >>
    >>

  }
  \midi {\tempo 4 = 80 }
}

