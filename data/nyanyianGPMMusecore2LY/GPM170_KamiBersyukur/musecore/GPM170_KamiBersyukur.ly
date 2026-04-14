\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM170_KamiBersyukur/musecore/GPM170_KamiBersyukur.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 170. Kami Bersyukur"
  composer =  "Bartje Istia, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33296126"
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
  \clef "treble" \time 3/4 \key d \major | % 1
  \tempo 4=80 \stemUp a'4 \stemUp fis'4 \stemUp b'8 \stemUp fis'8 | % 2
  \stemUp a'2 \stemUp a'8 \stemUp a'8 | % 3
  \stemUp a'4 \stemUp g'4 \stemUp e'4 | % 4
  \stemUp d'2. | % 5
  \stemUp fis'4 \stemUp fis'4 \stemUp fis'8 \stemUp a'8 | % 6
  \stemUp g'4 \stemUp g'4 \stemUp a'8 \stemUp b'8 | % 7
  \stemUp a'2 \stemUp g'4 \break | % 8
  \stemUp fis'2 r4 | % 9
  \stemUp a'4 \stemUp fis'4 \stemUp b'8 \stemUp fis'8 |
  \barNumberCheck #10
  \stemUp a'2 \stemUp a'8 \stemUp a'8 | % 11
  \stemUp g'4 \stemUp fis'4 \stemUp e'4 | % 12
  \stemUp d'2. | % 13
  \stemUp fis'4 \stemUp fis'4 \stemUp e'8 \stemUp fis'8 | % 14
  \stemUp g'4. \stemUp g'8 \stemUp fis'8 \stemUp e'8 \break | % 15
  \stemUp d'2. ~ | % 16
  \stemUp d'2 r4 | % 17
  \stemDown cis''4 \stemDown cis''4 \stemDown cis''4 | % 18
  \stemDown d''4 \stemUp a'4 \stemUp a'8 \stemUp b'8 | % 19
  \stemDown cis''4 \stemDown d''4 \stemDown b'4 | \barNumberCheck #20
  \stemUp a'2 r4 | % 21
  \stemDown cis''4 \stemDown cis''4 \stemDown cis''4 | % 22
  \stemDown d''4 \stemUp a'4 \stemUp a'8 \stemUp b'8 \break | % 23
  \stemDown b'4 \stemDown d''4 \stemDown b'4 | % 24
  \stemDown cis''2 r4 | % 25
  \stemUp a'4 \stemUp fis'4 \stemUp g'8 \stemUp b'8 | % 26
  \stemUp a'4. \stemUp a'8 \stemUp a'8 \stemUp a'8 | % 27
  \stemUp a'4 \stemUp a'4 \stemUp g'8 \stemUp e'8 | % 28
  \stemUp d'2. \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ka
  -- mi ber -- syu -- kur pa -- da -- "Mu," ya Ba -- "pa," a -- tas
  "s'ga" -- la rah -- mat dan ka -- ru -- nia -- "Mu." Pu -- ji dan
  sem -- bah pa -- da -- "Mu," ya Tu -- "han," Ha -- ri yang in -- dah
  "t'lah" Kau be -- "ri." \skip1 Ba -- wa -- kan ka -- mi ma -- suk ha
  -- di -- rat -- "Mu." Tun -- tun -- lah ka -- mi da -- lam "t'rang"
  Fir -- man -- "Mu." Ku -- at -- kan ka -- mi un -- tuk meng -- ab --
  di pa -- da "Mu."
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

