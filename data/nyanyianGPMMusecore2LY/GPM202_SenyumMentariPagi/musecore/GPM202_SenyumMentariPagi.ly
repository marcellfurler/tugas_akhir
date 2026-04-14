\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM202_SenyumMentariPagi/musecore/GPM202_SenyumMentariPagi.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 202. Senyum Mentari Pagi"
  composer =  "Nus Tomatala, 2008"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33315152"
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
  \tempo 4=80 r2. \stemUp a4 | % 2
  \stemUp fis'4 \stemUp fis'8 \stemUp fis'8 \stemUp e'4 \stemUp fis'4
  | % 3
  \stemUp a'2. \stemDown d''4 | % 4
  \stemDown b'4 \stemDown cis''8 \stemDown d''8 \stemUp a'4 \stemUp
  fis'4 | % 5
  \stemUp e'2. \stemUp fis'4 \break | % 6
  \stemUp d'4 \stemUp d'8 \stemUp e'8 \stemUp fis'4 \stemDown b'4 | % 7
  \stemUp g'2 r4 \stemDown b'8 \stemDown b'8 | % 8
  \stemUp a'8 \stemUp fis'2 ~ \stemUp fis'8 \stemUp e'8 \stemUp fis'8
  | % 9
  \stemUp e'8 \stemUp d'4. r4 \stemDown d''8 \stemDown d''8 |
  \barNumberCheck #10
  \stemDown cis''2 \stemUp g'4. \stemDown b'8 \break | % 11
  \stemUp b'8 ( \stemUp a'8 ) \stemUp a'2 \stemUp a'8 \stemUp a'8 | % 12
  \stemUp g'4 \stemDown b'4 \stemDown d''4 \stemDown b'4 | % 13
  \stemUp a'4 ( \stemDown b'4 \stemDown cis''4 ) \stemUp fis'8 \stemUp
  e'8 | % 14
  \stemUp d'2 \stemUp a'4. \stemUp fis'8 | % 15
  \stemUp g'8 ( \stemUp a'8 ) \stemDown b'2 \stemDown b'8 \stemDown b'8
  \break | % 16
  \stemUp a'2 \stemUp fis'4 \stemUp e'4 | % 17
  \stemUp d'2. r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Se
  -- nyum men -- ta -- ri pa -- "gi." Da -- mai -- kan re -- lung ha
  -- "ti." I -- tu ka -- sih se -- ja -- ti da -- ri Ye -- sus\skip1
  yang ter -- ma -- "nis." Ki -- cau bu -- rung ber -- nya -- \skip1
  "nyi," sam -- bil me -- na -- ri na -- "ri. " __\skip1 \skip1 I --
  tu tan -- da -- nya ha -- \skip1 ri di -- ber -- ka -- ti Ye --
  "sus."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Ge
  -- lap su -- dah di -- gan -- "ti." Te -- rang in -- dah se -- ka --
  "li." Tan -- da ha -- ra -- pan hi -- dup da -- ri Ye -- sus\skip1
  sang pe -- nga -- "sih." Ka -- mi i -- kut ber -- nya -- \skip1
  "nyi," pu -- ji Al -- lah rah -- ma -- "ni. " __\skip1 \skip1 Ka --
  sih -- Nya "s'la" -- lu ba -- \skip1 ru a -- ba -- di "s'la" -- ma
  -- "nya."
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

