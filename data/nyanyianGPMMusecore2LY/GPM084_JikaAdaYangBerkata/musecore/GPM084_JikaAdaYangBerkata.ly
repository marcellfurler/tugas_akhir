\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM084_JikaAdaYangBerkata/musecore/GPM084_JikaAdaYangBerkata.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 84. Jika Ada Yang Berkata"
  composer =  "Agust C. W. Gaspersz, 1998"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33298838"
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
  \tempo 4=80 \stemUp e'8 \stemUp e'4. \stemUp e'8 [ \stemUp d'8
  \stemUp e'8 \stemUp f'8 ] | % 2
  \stemUp g'8 \stemUp g'4. r8 \stemUp g'8 [ \stemUp f'8 \stemUp e'8 ]
  | % 3
  \stemUp d'4 \stemUp d'8 [ \stemUp e'8 ] \stemUp f'4 \stemUp g'4 | % 4
  \stemUp f'8 \stemUp e'2 ~ \stemUp e'8 r8 \stemUp c'8 \break | % 5
  \stemUp f'8 [ \stemUp f'8 \stemUp f'8 \stemUp g'8 ] \stemUp a'4
  \stemDown d''8 [ \stemDown c''8 ] | % 6
  \stemDown b'8 [ \stemDown c''8 \stemDown b'8 \stemDown a'8 ] \stemUp
  a'2 | % 7
  \stemUp g'2 r8 \stemUp g'8 [ \stemUp c''8 \stemUp e'8 ] | % 8
  \stemUp g'4 \stemUp f'4. \stemDown c''8 [ \stemDown b'8 \stemDown a'8
  ] | % 9
  \stemUp a'4 \stemUp g'2 \stemDown c''8 [ \stemDown c''8 ] \break |
  \barNumberCheck #10
  \stemDown c''8 [ \stemDown a'8 \stemDown a'8 \stemDown c''8 ]
  \stemDown c''8 [ \stemDown b'8 \stemDown a'8 ( \stemDown b'8 ) ] | % 11
  \stemDown c''4 \stemDown c''4 r8 \stemUp g'8 [ \stemUp g'8 \stemUp
  f'8 ] | % 12
  \stemUp e'4 \stemUp e'4 \stemUp g'8 [ \stemUp g'8 \stemUp f'8
  \stemUp e'8 ] | % 13
  \stemUp g'4 \stemUp f'4 r8 \stemUp f'8 [ \stemUp f'8 \stemUp e'8 ]
  \break | % 14
  \stemUp d'4 \stemUp d'4 \stemUp d'8 [ \stemUp d'8 \stemUp c'8
  \stemUp d'8 ] | % 15
  \stemUp f'4 \stemUp e'4 r8 \stemUp g'8 [ \stemUp g'8 \stemUp f'8 ] | % 16
  \stemUp e'8 [ \stemUp e'8 \stemUp e'8 \stemUp c''8 ] \stemDown c''8
  [ \stemDown c''8 \stemDown b'8 \stemDown c''8 ] | % 17
  \stemDown d''2 \stemDown d''8 [ \stemDown c''8 \stemDown b'8
  \stemDown a'8 ] \break | % 18
  \stemUp a'2 r8 \stemDown c''8 [ \stemDown b'8 \stemDown a'8 ] | % 19
  \stemUp g'8 \stemDown c''4 \stemDown c''8 \stemDown e''8 [ \stemDown
  d''8 \stemDown a'8 \stemDown b'8 ] | \barNumberCheck #20
  c''1 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ji
  -- ka a -- da yang ber -- ka -- "ta:" "\" a" -- ku da -- ri go -- lo
  -- ngan Pa -- u -- "lus,\" "\skip1  yang lain -- pun ber -- ka -- "
    ta:" "\" da" -- ri go -- lo -- ngan A -- po -- "los\" ." Bu -- kan
  -- kah i -- tu "t'lah" me -- nun -- juk -- kan bah -- wa ka -- mu ma
  -- nu -- si -- a du --\skip1 nia -- "wi?" A -- ku me -- na -- "nam,"
  A -- po -- los me -- nyi -- "ram," te -- ta -- pi Al -- lah mem --
  "b'ri" per -- tum -- bu -- han bu -- kan yang ter -- pen -- ting sia
  -- pa yang me -- na -- "nam," a -- tau me -- nyi -- ram me -- lain
  -- kan Al -- lah mem -- "b'ri" per -- tum -- bu -- "han."
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

