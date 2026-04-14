\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM143_HormatBagiAllah/musecore/GPM143_HormatBagiAllah.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 143. Hormat Bagi Allah"
  composer =  "P. J. Ferdinandus, 2005"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33317096"
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
  \tempo 4=80 \stemUp a'8 [ \stemUp a'8 \stemUp b'8 \stemUp b'8 ]
  \stemUp a'8 \stemUp fis'4. | % 2
  \stemUp a'8 [ \stemUp a'8 \stemUp fis'8 \stemUp d'8 ] \stemUp e'4 r4
  | % 3
  \stemUp e'8 [ \stemUp e'8 \stemUp fis'8 \stemUp fis'8 ] \stemUp g'8
  [ \stemUp g'8 \stemUp fis'8 \stemUp e'8 ] | % 4
  \stemUp fis'2. r4 \break | % 5
  \stemUp fis'8 [ \stemUp fis'8 \stemUp a'8 \stemUp a'8 ] \stemUp b'8
  [ \stemUp a'8 ] \stemUp a'4 | % 6
  \stemDown d''4 \stemDown cis''8 [ \stemDown cis''8 ] \stemDown b'2 | % 7
  \stemDown d''8 [ \stemDown d''8 \stemDown cis''8 \stemDown b'8 ]
  \stemUp a'8 \stemUp fis'4. | % 8
  \stemUp g'8 [ \stemUp a'8 \stemUp b'8 \stemUp cis''8 ] \stemDown d''2
  \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Hor
  -- mat ba -- gi Al -- lah Ba -- pa pen -- cip -- "ta." Hor -- mat ba
  -- gi Ye -- sus Pe -- ne -- "bus." Hor -- mat ba -- gi Roh Ku --
  "dus," Roh peng -- hi -- "bur." Pu -- ji ke -- ti -- ga -- "Nya," Al
  -- lah yang E -- "sa."
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

