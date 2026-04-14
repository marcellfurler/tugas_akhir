\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM034_PujiTuhan/musecore/GPM034_PujiTuhan.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "Puji Tuhan"
  composer =  "John F. Beay, 2009"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33299582"
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
  \tempo 4=80 \stemDown c''8 ( [ \stemDown b'8 ) \stemDown c''8 (
  \stemDown b'8 ) ] \stemDown c''4 \stemDown c''8 ( [ \stemDown b'8 )
  ] | % 2
  \stemUp a'8 [ \stemUp a'8 ] \stemUp a'8 [ \stemUp g'16 ( \stemUp a'16
  ) ] \stemDown c''2 | % 3
  \stemUp a'8 [ \stemUp a'8 ] \stemUp a'8 [ \stemUp g'16 ( \stemUp a'16
  ) ] \stemDown c''4 \stemDown c''8 [ \stemDown c''8 ] | % 4
  \stemDown b'8 [ \stemDown b'8 \stemDown b'8 \stemDown b'8 ]
  \stemDown c''2 \break | % 5
  \stemDown c''8 ( [ \stemDown b'8 ) \stemDown c''8 ( \stemDown b'8 )
  ] \stemDown c''4 \stemDown c''8 ( [ \stemDown b'8 ) ] | % 6
  \stemUp a'8 [ \stemUp a'8 ] \stemUp a'8 [ \stemUp g'16 ( \stemUp a'16
  ) ] \stemDown c''2 | % 7
  \stemUp a'8 [ \stemUp a'8 ] \stemUp a'8 [ \stemUp g'16 ( \stemUp a'16
  ) ] \stemDown c''4 \stemDown c''8 [ \stemDown c''8 ] | % 8
  \stemDown b'8 [ \stemDown b'8 \stemDown b'8 \stemDown b'8 ]
  \stemDown c''2 \break | % 9
  \stemUp c'8 [ \stemUp d'8 \stemUp e'8 \stemUp c'8 ] \stemUp f'8 [
  \stemUp e'8 ] \stemUp d'4 | \barNumberCheck #10
  \stemUp e'2. r4 | % 11
  \stemUp c'8 [ \stemUp d'8 \stemUp e'8 \stemUp c'8 ] \stemUp f'8 [
  \stemUp e'8 ] \stemUp d'4 | % 12
  \stemUp c'4 \stemDown c''4 \stemDown c''4 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Pu
  --\skip1 ji\skip1 Tu -- "han," \skip1 pu -- ji pu -- ji --\skip1 lah
  pu -- ji -- lah Tu --\skip1 "han," a -- tas ber -- kat yang Dia
  "b'ri." Pu --\skip1 ji\skip1 Tu -- "han," \skip1 pu -- ji pu -- ji
  --\skip1 lah pu -- ji -- lah Tu --\skip1 "han," a -- tas hi -- dup
  yang Dia "b'ri." A -- "min," ha -- le -- lu -- ya a -- "min." A --
  "min," ha -- le -- lu -- ya a -- "min." A -- "min."
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

