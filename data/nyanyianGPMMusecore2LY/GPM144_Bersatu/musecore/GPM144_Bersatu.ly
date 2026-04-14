\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM144_Bersatu/musecore/GPM144_Bersatu.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 144. Bersatu"
  subtitle = "1 Tesalonika 5 : 16 - 19"
  composer =  "Elly Toisutta, 1999"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33317003"
  subtitle =  "1 Tesalonika 5 : 16 - 19"
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
  \clef "treble" \time 3/4 \key g \major | % 1
  \tempo 4=80 r2 \stemUp d'4 | % 2
  \stemUp g'4 \stemUp g'4 \stemUp d'4 | % 3
  \stemUp g'4 \stemUp g'4 \stemUp fis'8 \stemUp g'8 | % 4
  \stemUp a'4 \stemUp a'8 ( \stemUp g'8 ) \stemUp a'8 ( \stemUp b'8 )
  | % 5
  \stemUp g'2 \stemUp d'4 | % 6
  \stemUp g'4 \stemUp g'4 \stemUp d'4 | % 7
  \stemUp g'4 \stemUp g'4 \stemUp fis'8 \stemUp g'8 \break | % 8
  \stemUp a'4 \stemUp a'8 ( \stemUp g'8 ) \stemUp a'8 ( \stemUp b'8 )
  | % 9
  \stemUp g'2 \stemDown d''4 | \barNumberCheck #10
  \stemDown d''4 \stemDown b'4 \stemDown d''4 | % 11
  \stemDown d''4 \stemDown b'4 \stemDown d''8 \stemDown d''8 | % 12
  \stemDown c''4 \stemDown b'4 \stemDown c''8 ( \stemDown d''8 ) | % 13
  \stemDown b'2 \stemDown d''4 | % 14
  \stemDown d''4 \stemDown b'4 \stemDown d''4 \break | % 15
  \stemDown d''4 \stemDown b'4 \stemDown d''8 \stemDown d''8 | % 16
  \stemDown c''4 \stemDown b'4 \stemDown c''8 ( \stemDown a'8 ) | % 17
  \stemUp g'2 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ber
  -- sa -- "tu," ber -- sa -- "tu," i -- tu -- lah yang\skip1 per --
  \skip1 "lu." Ber -- sa -- "tu," ber -- sa -- "tu," i -- tu -- lah
  yang\skip1 per -- \skip1 "lu." Ber -- sa -- "tu," ber -- sa -- "tu,"
  "s'ba" -- gai tu -- bu Kris -- \skip1 "tus." Ber -- sa -- "tu," ber
  -- sa -- "tu," "s'ba" -- gai tu -- buh Kris -- \skip1 "tus."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Se
  -- ha -- "t," se -- pi -- "kir," i -- tu -- lah yang\skip1 per --
  \skip1 "lu." Se -- ha -- "ti," se -- pi -- "kir," i -- tu -- lah
  yang\skip1 per -- \skip1 "lu." Se -- ha -- "ti," se -- pi -- "kir,"
  "s'ba" -- gai tu -- buh Kris -- \skip1 "tus." Se -- ha -- "ti," se
  -- pi -- "kir," "s'ba" -- gai tu -- buh Kris -- \skip1 "tus."
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

