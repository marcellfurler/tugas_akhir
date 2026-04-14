\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM131_SinarPaskahSudahTerbit/musecore/GPM131_SinarPaskahSudahTerbit.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 131. Sinar Paskaah Sudah Terbit"
  composer =  "Christian I. Tamaela, 1995"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33317450"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key g \major | % 1
  r2. \stemUp b8 [ \stemUp c'8 ] | % 2
  \stemUp d'4 \stemUp d'4 \stemUp g'8 [ \stemUp d'8 \stemUp g'8 (
  \stemUp a'8 ) ] | % 3
  \stemDown b'2. \stemDown c''8 [ \stemDown b'8 ] | % 4
  \stemUp a'4 \stemDown c''4 \stemDown b'4 \stemUp a'4 | % 5
  \stemUp g'2 r4 \stemUp b8 [ \stemUp c'8 ] \break | % 6
  \stemUp d'4 \stemUp d'4 \stemUp g'8 ( [ \stemUp d'8 ) \stemUp g'8 (
  \stemUp a'8 ) ] | % 7
  \stemDown b'2. \stemDown c''8 [ \stemDown b'8 ] | % 8
  \stemUp a'4 \stemDown c''4 \stemDown b'4 \stemUp a'4 | % 9
  \stemUp g'2 r4 \stemUp e'8 [ \stemUp fis'8 ] | \barNumberCheck #10
  \stemUp g'4 \stemUp g'4 \stemUp g'4. \stemUp a'8 | % 11
  \stemUp fis'2 r4 \stemUp e'8 [ \stemUp fis'8 ] \break | % 12
  \stemUp g'4 \stemUp g'4 \stemUp fis'4. \stemUp e'8 | % 13
  \stemUp d'2. r4 | % 14
  \stemUp e'4 \stemUp e'4 \stemUp g'4. \stemUp e'8 | % 15
  \stemUp d'4 \stemUp g'2 r4 | % 16
  \stemUp fis'4 \stemUp d'4 \stemDown b'4 ( \stemUp a'4 ) | % 17
  \stemUp g'2 r2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Si
  -- nar pas -- kah su -- dah ter --\skip1 "bit," ha -- ti -- ku a --
  mat se -- "nang." Su -- dah bang -- kit pe --\skip1 ne --\skip1
  "bus," i -- tu ka -- bar yang be -- "nar." Ki -- ta si -- ar -- kan
  se -- "g'ra" ke se -- lu -- ruh du -- ni -- "a." Ye -- sus su -- dah
  bang -- "kit," ha -- le -- lu --\skip1 "ya."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Ke
  -- ge -- la -- pan su -- dah le --\skip1 "nyap," ki -- ta hi -- dup
  da -- lam "t'rang." Ber -- i -- man te -- tap\skip1 te --\skip1
  "guh," wa -- lau mu -- suh me -- nye -- "rang." \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
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
  \midi {\tempo 4 = 100 }
}

