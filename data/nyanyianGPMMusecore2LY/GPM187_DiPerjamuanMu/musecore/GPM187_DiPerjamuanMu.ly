\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM187_DiPerjamuanMu/musecore/GPM187_DiPerjamuanMu.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 187. Di Perjamuan Mu"
  composer =  "Nus Tomatala, 2008"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33295622"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key c \major | % 1
  \tempo 4=75 \stemUp g'4 \stemUp g'8 \stemUp g'8 \stemUp g'8 \stemUp
  g'8 \stemUp a'8 \stemUp g'8 | % 2
  \stemUp g'4 \stemUp e'2 r4 | % 3
  \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp
  f'8 \stemUp g'8 \stemUp f'8 | % 4
  \stemUp e'2. r4 \break | % 5
  \slurDashed \stemUp c'8 ( \slurSolid \stemUp e'8 ) \stemUp g'8
  \stemUp c''8 \stemDown b'8 \stemDown c''8 \stemDown b'4 | % 6
  \stemUp c'8 \stemUp e'8 \stemUp g'8 \stemUp b'8 \stemUp a'8 \stemUp
  b'8 \stemUp a'4 | % 7
  \stemUp d'8 \stemUp d'8 \stemUp d'8 \stemUp d'8 \stemUp d'8 \stemUp
  d'8 \stemUp e'8 \stemUp fis'8 | % 8
  \stemUp g'2. r4 \break | % 9
  \stemUp g'4 \stemUp g'8 \stemUp g'8 \stemUp g'8 \stemUp g'8 \stemUp
  a'8 \stemUp g'8 | \barNumberCheck #10
  \stemUp g'4 \stemDown c''2 r4 | % 11
  \stemUp g'8 \stemUp g'8 \stemUp c''8 \stemUp g'8 \stemUp e'8 \stemUp
  d'8 \stemUp f'8 \stemUp d'8 | % 12
  c'1 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Di
  per -- ja -- mu -- an -- Mu yang ku -- "dus," ku -- te -- ri -- ma
  pe -- ngam -- pu -- nan -- "Mu." Sa -- at ku ma -- kan ro -- ti dan
  ku mi -- num ang -- gur -- "Mu," ku la -- yak men -- ja -- di a --
  nak -- "Mu." Oh Ye -- "sus," Kau Ju -- ru "S'la" -- mat -- "ku," ku
  a -- gung -- kan pe -- ngor -- ba -- nan -- "Mu."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Di
  de -- pan ma -- ta -- "Mu," ya Ye -- "sus," Kau tak ang -- gap hi --
  na di -- ri -- "ku." Kau\skip1 pun re -- la ma -- ti a -- gar a --
  ku ter -- te -- bus da -- rah -- Mu ter -- cu -- rah di sa -- "lib."
  dan ki -- ni ku da -- tang ber -- syu -- "kur," ku mu -- lia -- kan
  ka -- sih a -- gung "Mu."
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
  \midi {\tempo 4 = 75 }
}

