\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM309_DiSaatSusah/musecore/GPM309_DiSaatSusah.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 309. Di Saat Susah"
  composer =  "Adriana Lohy & Lili Picanussa, 2008"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33302636"
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
  \clef "treble" \time 3/4 \key c \major | % 1
  \tempo 4=80 \stemUp e'4 \stemUp f'4 \stemUp fis'4 | % 2
  \stemUp g'2. | % 3
  \stemUp e'2 \stemUp e'4 | % 4
  \stemUp e'4 ( \stemUp d'4 ) \stemUp c'4 | % 5
  \stemUp e'2 r4 | % 6
  \stemUp f'4 \stemUp g'4 \stemUp a'4 | % 7
  \stemUp g'4 \stemUp g'4 \stemUp g'8 \stemUp g'8 \break | % 8
  \stemDown c''4 \stemDown c''4 \stemDown c''4 | % 9
  \stemDown c''4 ( \stemUp a'4 ) \stemDown c''4 | \barNumberCheck #10
  \stemDown b'2 r4 | % 11
  \stemUp a'4 \stemUp a'4 \stemUp a'4 | % 12
  \stemUp f'4 \stemUp g'4 \stemUp a'4 | % 13
  \stemUp g'2. | % 14
  \stemUp e'2. | % 15
  \stemUp a'4 \stemDown c''4 \stemUp a'4 | % 16
  \stemDown b'4 \stemUp a'4 \stemDown b'4 \break | % 17
  \stemDown c''2. | % 18
  \stemDown c''2 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Di
  sa -- at su -- sah me -- lan -- \skip1 da -- mu ja -- ngan -- lah ta
  -- kut "kar'" -- na Tu -- han ber -- sa -- \skip1 ma -- mu ba -- dai
  -- pun pas -- ti ber -- la -- lu Ye -- sus be -- ri su -- ka -- ci
  -- "ta."
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

