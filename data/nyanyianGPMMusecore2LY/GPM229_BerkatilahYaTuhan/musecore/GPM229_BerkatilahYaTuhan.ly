\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM229_BerkatilahYaTuhan/musecore/GPM229_BerkatilahYaTuhan.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 229. Berkatilah Ya Tuhan"
  composer =  "Sonia C. Parera - Hummel, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33274814"
}

#(set-global-staff-size 19.997485714285716)
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
  \clef "treble" \numericTimeSignature\time 4/4 \key f \major | % 1
  \stemUp f'4 \stemUp f'8 [ \stemUp g'8 ] \stemUp e'4 \stemUp d'8 [
  \stemUp c'8 ] | % 2
  \stemUp f'2. \stemUp g'8 [ \stemUp a'8 ] | % 3
  \stemUp bes'8 [ \stemUp bes'8 \stemUp bes'8 \stemUp a'8 ] \stemUp
  bes'8 [ \stemUp a'8 \stemUp f'8 \stemUp a'8 ] | % 4
  \stemUp g'2. r4 \break | % 5
  \stemUp f'4 \stemUp f'8 [ \stemUp g'8 ] \stemUp e'4 \stemUp d'8 [
  \stemUp c'8 ] | % 6
  \stemUp f'2. \stemUp g'8 [ \stemUp a'8 ] | % 7
  \stemUp bes'8 [ \stemUp bes'8 \stemUp bes'8 \stemUp a'8 ] \stemDown
  bes'8 [ \stemDown a'8 \stemDown bes'8 \stemDown c''8 ] | % 8
  \stemDown c''2. r4 | % 9
  \stemDown bes'4 \stemUp bes'8 [ \stemUp a'8 ] \stemUp g'2 \break |
  \barNumberCheck #10
  \stemDown c''4 \stemDown c''8 [ \stemDown bes'8 ] \stemUp a'4
  \stemUp a'16 [ \stemUp g'16 \stemUp a'8 ] | % 11
  \stemUp bes'8 [ \stemUp bes'8 \stemUp bes'8 \stemUp a'8 ] \stemUp
  bes'8 [ \stemUp a'8 \stemUp g'8 \stemUp f'8 ] | % 12
  \stemUp f'2. r4 | % 13
  f'1 | % 14
  f'1 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ber
  -- ka -- ti -- lah ya Tu -- "han," ka -- ru -- nia -- kan rah -- mat
  -- Mu a -- tas ka -- mi Ka -- si -- ha -- ni u -- mat -- "Mu," tun
  -- tun ka -- mi pa -- da ja -- lan yang be -- nar Bim -- bi -- ngan
  -- Mu ku -- a -- sa -- "Mu," "s'mo" -- ga ser -- ta -- i ka -- mi
  "s'la" -- ma -- la -- ma -- nya A -- min
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

