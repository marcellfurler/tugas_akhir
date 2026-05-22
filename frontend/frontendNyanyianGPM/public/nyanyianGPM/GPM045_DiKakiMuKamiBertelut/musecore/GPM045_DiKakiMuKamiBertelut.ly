\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM045_DiKakiMuKamiBertelut/musecore/GPM045_DiKakiMuKamiBertelut.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 45. Di KakiMu Kami Berlutut"
  composer =  "Monica Pariela-Parera, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33317906"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key as \major | % 1
  \tempo 4=80 \stemUp f'4 \stemUp g'4 \stemUp as'4 \stemDown bes'4 | % 2
  \stemDown c''4 \stemDown bes'4 \stemUp as'4 \stemUp g'4 | % 3
  \stemUp f'2. \stemUp es'4 | % 4
  \stemUp f'2. r4 | % 5
  \stemUp as'4 \stemDown bes'4 \stemDown c''4 \stemDown des''4 | % 6
  \stemDown c''4 \stemDown bes'4 \stemUp as'4 \stemDown bes'4 \break | % 7
  \stemDown c''2. r4 | % 8
  \stemUp f'4 \stemUp g'4 \stemUp as'4 \stemDown bes'4 | % 9
  \stemDown c''4 \stemDown bes'4 \stemUp as'4 \stemUp g'4 |
  \barNumberCheck #10
  \stemUp f'2. \stemUp es'4 | % 11
  \stemUp f'2. r4 | % 12
  \stemDown c''4 \stemDown c''4 \stemDown c''4 \stemDown des''4 \break
  | % 13
  \stemDown c''4 \stemDown bes'4 \stemUp as'4 ( \stemUp g'4 ) | % 14
  f'1 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Di
  ka -- ki -- Mu ka -- mi ber -- te -- "lut," sem -- "bah." Ma -- lu
  kar -- "'na" sa -- lah dan do -- "sa." Mo -- hon pe -- ngam -- pum
  -- an da -- ri -- "Mu," Tu -- han Kris -- "tus," ka -- sih -- an --
  i ka --\skip1 mi
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

