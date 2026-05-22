\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM003_AngkaDonciPujiTuhan/musecore/GPM003_AngkaDonciPujiTuhan.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "Angka Donci Puji Tuhan"
  composer =  "Melvy S. A. Alfons, 2008"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-20"
  source =  "https://musescore.com/user/40408317/scores/33495842"
  subtitle =  Subtitle
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
PartPOneVoiceOne =  {
  \clef "treble" \numericTimeSignature\time 4/4 \key d \major | % 1
  \tempo 4=80 r2. \stemUp d'8 \stemUp d'8 | % 2
  \stemUp fis'8 \stemUp fis'8 ~ \stemUp fis'2 \stemUp e'8 \stemUp fis'8
  | % 3
  \stemUp e'8 \stemUp d'8 ~ \stemUp d'2 \stemUp fis'8 \stemUp g'8 | % 4
  \stemUp a'8 \stemUp a'8 ~ \stemUp a'2 \stemUp g'8 \stemUp a'8 | % 5
  \stemUp g'8 \stemUp fis'8 ~ \stemUp fis'2 \stemUp a'8 \stemUp a'8
  \break | % 6
  \stemDown d''8 \stemDown d''8 ~ \stemDown d''2 \stemDown b'8
  \stemDown b'8 | % 7
  \stemUp a'8 \stemUp a'8 ~ \stemUp a'2 \stemUp fis'8 \stemUp fis'8 | % 8
  \stemUp a'8 \stemUp fis'8 ~ \stemUp fis'4 \stemUp e'8 ( \stemUp fis'8
  \stemUp e'8 \stemUp d'8 ) | % 9
  \stemUp d'2 r4 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ang
  -- ka don -- ci\skip1 pu -- ji Tu -- "han." \skip1 Ra -- me -- ra --
  me\skip1 pu -- ji Tu -- "han." \skip1 Ang -- ka don -- ci\skip1 pu
  -- ji Tu -- "han," \skip1 Ha -- le -- lu -- "ya." \skip1 A -- \skip1
  \skip1 \skip1 "min."
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

