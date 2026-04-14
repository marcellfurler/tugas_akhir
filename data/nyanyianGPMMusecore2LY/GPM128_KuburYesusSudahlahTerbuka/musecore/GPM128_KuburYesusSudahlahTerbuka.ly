\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM128_KuburYesusSudahlahTerbuka/musecore/GPM128_KuburYesusSudahlahTerbuka.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 128. Kubur Yesus Sudahlah Terbuka"
  composer =  "Josia G. Jamlean, 2009"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33317687"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key d \major | % 1
  \tempo 4=80 \stemUp fis'8 [ \stemUp fis'8 \stemUp e'8 \stemUp d'8 ]
  \stemUp fis'8 [ \stemUp fis'8 \stemUp e'8 \stemUp d'8 ] | % 2
  \stemUp a'2 \stemUp fis'2 | % 3
  \stemUp fis'8 [ \stemUp fis'8 \stemUp e'8 \stemUp d'8 ] \stemUp fis'8
  [ \stemUp fis'8 \stemUp e'8 \stemUp d'8 ] | % 4
  \stemUp e'4 \stemUp fis'4 \stemUp e'2 \break | % 5
  \stemUp fis'8 [ \stemUp fis'8 \stemUp e'8 \stemUp d'8 ] \stemUp fis'8
  [ \stemUp fis'8 \stemUp e'8 \stemUp d'8 ] | % 6
  \stemUp a'2 \stemUp fis'4 \stemUp e'4 | % 7
  \stemUp d'8 [ \stemUp d'8 \stemUp d'8 \stemUp e'8 ] \stemUp fis'8 [
  \stemUp d'8 \stemUp fis'8 \stemUp e'8 ] | % 8
  \stemUp d'2. r4 \break | % 9
  \stemDown b'8 [ \stemDown b'8 \stemDown b'8 \stemDown b'8 ]
  \stemDown d''8 [ \stemDown d''8 \stemDown b'8 \stemDown b'8 ] |
  \barNumberCheck #10
  \stemUp a'2 \stemUp fis'2 | % 11
  \stemDown b'8 [ \stemDown b'8 \stemDown b'8 \stemDown b'8 ] \stemUp
  a'8 [ \stemUp a'8 \stemUp fis'8 \stemUp a'8 ] | % 12
  \stemUp a'2. r4 \break | % 13
  \stemDown d''8 [ \stemDown d''8 \stemDown d''8 \stemDown d''8 ]
  \stemDown b'8 [ \stemDown b'8 \stemDown d''8 \stemDown b'8 ] | % 14
  \stemUp a'2 \stemDown b'2 | % 15
  \stemUp a'8 [ \stemUp a'8 \stemUp a'8 \stemUp a'8 ] \stemDown a'8 [
  \stemDown a'8 \stemDown b'8 \stemDown cis''8 ] | % 16
  \stemDown d''2. r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ku
  -- bur Ye -- sus su -- dah -- lah ter -- bu -- "ka," kua -- sa ma --
  ut su -- dah di -- ka -- lah -- kan -- "Nya." Jan -- ji Tu -- han su
  -- dah -- lah ter -- buk -- ti ber -- so -- rak so -- rak -- lah ha
  -- le -- lu -- "ya." Ki -- bar -- kan -- lah pan -- ji ke -- me --
  na -- "ngan," bang -- kit dan "b'ri" -- ta -- kan -- lah se --
  "g'ra." Ja -- ngan ka -- mu mu -- rung dan ge -- li -- "sa," Tu --
  han Ye -- sus su -- dah bang -- kit -- "lah."
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

