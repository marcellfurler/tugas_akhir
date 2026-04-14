\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM012_IndahNamaMuBapa/musecore/GPM012_IndahNamaMuBapa.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 12. Indah NamaMu, Bapa"
  composer =  "Christian I. Tamaela, 2003"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33301235"
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
  \clef "treble" \time 3/4 \key c \major | % 1
  \tempo 4=80 \stemUp e'2 \stemUp e'4 | % 2
  \stemUp e'2 \stemUp f'4 | % 3
  \stemUp e'2 \stemUp d'4 | % 4
  \stemUp d'2. | % 5
  \stemUp f'2 \stemUp f'4 | % 6
  \stemUp f'2 \stemUp g'4 | % 7
  \stemUp f'2 \stemUp e'4 | % 8
  \stemUp e'2. | % 9
  \stemUp g'4 \stemUp g'4 \stemUp g'4 \break | \barNumberCheck #10
  \stemUp g'2 \stemUp g'4 | % 11
  \stemUp a'2 \stemUp g'4 | % 12
  \stemUp f'2. | % 13
  \stemUp g'4 \stemUp e'4 \stemUp f'4 | % 14
  \stemUp e'2 \stemUp d'4 | % 15
  \stemUp c'2. ~ | % 16
  \stemUp c'2 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t In
  -- dah na -- ma -- "Mu," Ba -- "pa." In -- dah ka -- sih -- "Mu," Ba
  -- "pa." In -- dah ber -- kat -- "Mu," ya Ba -- "pa." In -- dah se
  -- mu -- a -- "nya." \skip1
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t A --
  gung na -- ma -- "Mu," Ba -- "pa." A -- gung ka -- sih -- "Mu," Ba
  -- "pa." A -- gung ber -- kat -- "Mu," ya Ba -- "pa." A -- gung se
  -- mu -- a -- "nya." \skip1
}

PartPOneVoiceOneLyricsThree =  \lyricmode {
  \set ignoreMelismata = ##t Su
  -- ci na -- ma -- "Mu," Ba -- "pa." Su -- cu ka -- sih -- "Mu," Ba
  -- "pa." Su -- ci ber -- kat -- "Mu," ya Ba -- "pa." Su -- ci se --
  mu -- a -- "nya." \skip1
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
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "3." \PartPOneVoiceOneLyricsThree }
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
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "3." \PartPOneVoiceOneLyricsThree }
      >>
    >>

  }
  \midi {\tempo 4 = 80 }
}

