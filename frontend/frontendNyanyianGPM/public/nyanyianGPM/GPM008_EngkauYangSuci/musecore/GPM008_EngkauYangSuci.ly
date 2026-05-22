\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM008_EngkauYangSuci/musecore/GPM008_EngkauYangSuci.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 8. Engkau Yang Suci"
  composer =  "Veby Pelmelay & Nus Tomatala"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33301499"
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
  \tempo 4=80 r4 \stemUp d'4 \stemDown b'4 \stemUp a'4 | % 2
  \stemDown c''2 \stemUp a'2 | % 3
  r4 \stemUp a'8 [ \stemUp b'8 ] \stemUp a'4. \stemUp g'8 | % 4
  b'1 | % 5
  r4 \stemUp d'4 \stemDown b'4 \stemUp a'4 | % 6
  \stemDown c''2 \stemUp a'2 \break | % 7
  r4 \stemUp a'8 [ \stemUp b'8 ] \stemUp a'4. \stemDown b'8 | % 8
  d''1 | % 9
  r4 \stemDown d''4 \stemDown d''4 \stemDown d''4 | \barNumberCheck
  #10
  \stemDown b'2 \stemDown b'2 | % 11
  r4 \stemDown b'8 [ \stemDown b'8 ] \stemUp a'4. \stemUp g'8 | % 12
  \stemDown d''2 \stemDown c''2 \break | % 13
  r4 \stemDown c''4 \stemDown d''4 \stemDown c''4 | % 14
  \stemDown b'4 \stemDown b'4 \stemUp a'4 \stemUp g'4 | % 15
  \stemUp a'2. \stemUp g'4 | % 16
  g'1 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Eng
  -- kau yang su -- "ci," su -- ci -- lah Tu -- "han." Eng -- kau yang
  ku -- "dus," ku -- dus -- lah Tu -- "han." Ka -- mi yang hi -- na da
  -- tang dan me -- nyem -- "bah," dan mu -- li -- a -- kan ka -- sih
  -- Mu Tu -- "han."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Yang
  a -- ku rin -- "du," ka -- sih -- Mu Tu -- "han," a -- gar ku hi --
  dup tia -- da me -- nge -- "luh." Ang -- kat -- lah su -- sah gan --
  ti de -- ngan su -- "ka," dan a -- ku -- pun ber -- syu -- kur pa --
  da -- "Mu."
}

PartPOneVoiceOneLyricsThree =  \lyricmode {
  \set ignoreMelismata = ##t
  Mes -- ki hi -- dup -- ku sa -- ngat ber -- ce -- "la," ku da --
  tang sa -- ja pa -- da "Mu," Tu -- "han." Kar -- "'na" ku ya --
  "kin," Kau ma -- ha pe -- mu -- "rah," Kau bu -- at hi -- dup -- ku
  ja -- di ba -- "ru."
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

