\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM185_SiapkanBetaJuaYesusE/musecore/GPM185_SiapkanBetaJuaYesusE.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 185. Siapkan Beta Jua Yesus E"
  composer =  "Nus Tomatala"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33295811"
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
  \tempo 4=80 r2. r8 \stemUp c'8 | % 2
  \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp f'8 \stemUp g'8 \stemUp
  e'8 \stemUp a'8 \stemUp g'8 | % 3
  \stemUp e'2. r8 \stemUp c'8 | % 4
  \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp f'8 \stemUp g'8 \stemUp
  e'8 \stemUp a'8 \stemUp g'8 | % 5
  \stemUp d'2. r8 \stemUp g'8 \break | % 6
  \stemDown a'8 \stemDown c''8 \stemDown b'8 \stemDown a'8 \stemUp g'8
  \stemUp e'8 \stemUp d'8 \stemUp c'8 | % 7
  \stemUp d'8 \stemUp d'8 \stemUp g'8 \stemUp d'8 \stemUp e'4 r8
  \stemUp g'8 | % 8
  \stemDown a'8 \stemDown c''8 \stemDown b'8 \stemDown a'8 \stemUp g'8
  \stemUp e'8 \stemUp d'8 \stemUp c'8 | % 9
  \stemUp d'2 \stemUp g'2 | \barNumberCheck #10
  e'1 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Si
  -- ap -- kan be -- ta ju -- "a," Ye -- sus "e." Te -- guh -- kan be
  -- ta ju -- a Ye -- sus "e." Bi -- ar be -- ta ber -- gu -- "na," i
  -- ring Ye -- sus ma -- nis -- "e." Te -- tap pi -- kul sa -- lib se
  -- la -- ma -- la -- ma -- "nya."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Ben
  -- tuk -- lah be -- ta ju -- "a," Ye -- sus "e," de -- ngan kua --
  sa -- Mu sa -- "ja," Ye -- sus "e." Bi -- ar be -- ta ber -- ja --
  lan pa -- da ja -- lan yang be -- "nar," sam -- bil mem -- ba -- gi
  ka -- "sih," Ye -- sus ma -- nis "e."
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

