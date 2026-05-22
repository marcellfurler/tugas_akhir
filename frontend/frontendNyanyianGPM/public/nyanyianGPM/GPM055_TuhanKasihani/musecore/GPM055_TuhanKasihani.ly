\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM055_TuhanKasihani/musecore/GPM055_TuhanKasihani.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 55. Tuhan Kasihani"
  subtitle = "Kyrie Eleison"
  composer =  "Christian I. Tamaela, 1989"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33299243"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key c \major | % 1
  \tempo 4=80 r4 \stemUp g'8 [ \stemUp g'8 ] \stemUp g'4. \stemUp f'8
  | % 2
  \stemUp a'4 \stemUp g'2. | % 3
  r4 \slurDashed \stemUp g'8 ( [ \slurSolid \stemUp a'8 ) ] \stemDown
  bes'8 ( \stemUp a'4 ) \stemUp g'8 | % 4
  \stemUp a'4 ( \stemUp g'2 \stemUp f'4 ) | % 5
  \stemUp e'8 r8 \stemUp e'8 [ \stemUp e'8 ] \stemUp e'4. \stemUp g'8
  \break | % 6
  \slurDashed \stemUp g'4 ( \slurSolid \stemUp f'2 ) \stemUp g'8 ( [
  \stemUp f'8 ) ] | % 7
  e'1 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Tu
  -- "han," ka -- sih -- a -- "ni," Kris -- "tus," ka --\skip1 sih --
  a --\skip1 \skip1 "ni." Tu -- "han," ka -- sih -- an -- i ka
  --\skip1 "mi."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Ky
  -- ri -- "e," e -- lei -- "son," Chris --\skip1 te\skip1 e lei
  --\skip1 \skip1 "son." Ky -- ri -- "e," e -- le --\skip1 i --\skip1
  son
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

