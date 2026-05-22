\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM305_MemberlakukanPerdamaianAllah/musecore/GPM305_MemberlakukanPerdamaianAllah.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 305. Memberlakukan Perdamaian Allah"
  composer =  "Christian I. Tamaela"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33303128"
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
  \tempo 4=100 r2 r8 \stemUp g'8 \stemUp g'8 \stemUp g'8 | % 2
  \stemUp g'8 \stemUp e'8 \stemUp e'8 \stemUp d'8 \stemUp c'4 \stemUp
  d'4 | % 3
  \stemUp e'4 \stemUp e'4 r8 \stemUp c'8 \stemUp c'8 \stemUp c'8 | % 4
  \stemDown c''4 \stemDown c''4 \stemUp a'8 ( \stemUp g'8 ) \stemUp a'8
  ( \stemUp g'8 ) \break | % 5
  \stemUp g'4 \stemUp g'4 r8 \stemUp g'8 \stemUp g'8 \stemUp g'8 | % 6
  \stemUp g'8 \stemUp e'8 \stemUp e'8 \stemUp d'8 \stemUp c'4 \stemUp
  d'4 | % 7
  \stemUp e'4 \stemUp e'4 r8 \stemUp a'8 \stemUp a'8 \stemUp a'8 | % 8
  \stemUp g'8 \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp d'8 \stemUp
  d'8 \stemUp e'8 \stemUp e'8 \break | % 9
  \stemUp g'4 \stemUp g'4 r8 \stemUp a'8 \stemUp a'8 \stemUp a'8 |
  \barNumberCheck #10
  \stemUp g'8 \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp d'8 \stemUp
  d'8 \stemUp e'8 \stemUp d'8 | % 11
  \stemUp c'4 \stemUp c'4 r4 \stemUp c'4 | % 12
  \stemDown c''4 \stemDown c''2 \stemUp a'4 | % 13
  \stemUp g'4. ( \stemUp a'8 ) \stemUp g'4 \stemUp e'8 \stemUp e'8
  \break | % 14
  \stemUp d'4 \stemUp e'4 \stemUp g'4 ( \stemUp a'4 ) | % 15
  \stemUp g'2 r4 \stemUp c'4 | % 16
  \stemDown c''4 \stemDown c''2 \stemUp a'4 | % 17
  \stemUp g'4. ( \stemUp a'8 ) \stemUp g'4 \stemUp g'8 \stemUp g'8 | % 18
  \stemUp a'4 \stemDown c''4 \stemDown d''4 ( \stemDown c''4 ) | % 19
  \stemDown c''2 r2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Mem
  -- ber -- la -- ku -- kan per -- da -- mai -- an Al -- lah ba -- gi
  se -- mu -- a ma -- \skip1 nu -- \skip1 si -- a i -- tu -- lah yang
  di -- ke -- hen -- dak -- i Al -- "lah." O ma -- ri ki -- ta me --
  nya -- ta -- kan -- nya di bu -- "mi." O ma -- ri ki -- ta me -- nya
  -- ta -- kan -- nya di bu -- "mi." Se -- mu -- a nya -- nyi --
  \skip1 kan per -- da -- mai -- an Al -- \skip1 "lah." Se -- mu -- a
  nya -- nyi -- \skip1 kan per -- da -- mai -- an Al -- \skip1 "lah."
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
  \midi {\tempo 4 = 100 }
}

