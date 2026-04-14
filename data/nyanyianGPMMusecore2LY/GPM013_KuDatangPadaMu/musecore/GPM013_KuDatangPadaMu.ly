\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM013_KuDatangPadaMu/musecore/GPM013_KuDatangPadaMu.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 13. Ku Datang PadaMu"
  composer =  "Josia G. Jamlean, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33301061"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key f \major | % 1
  \tempo 4=80 \stemUp f'2 \stemUp f'4 \stemUp g'4 | % 2
  \stemUp a'4. \stemUp g'8 \stemUp f'2 | % 3
  \stemUp g'2 \stemUp f'4 \stemUp e'4 | % 4
  \stemUp f'2. r4 | % 5
  \stemUp a'2 \stemUp a'4 \stemDown bes'4 | % 6
  \stemDown c''4. \stemDown bes'8 \stemUp a'2 \break | % 7
  \stemUp g'2 \stemUp a'4 \stemDown bes'4 | % 8
  \stemUp g'2. r4 | % 9
  \stemUp a'2 \stemDown bes'4 \stemDown bes'4 | \barNumberCheck #10
  \stemUp a'2 \stemDown c''2 | % 11
  \stemUp g'2 \stemUp a'4 \stemDown bes'4 | % 12
  \stemUp a'2. r4 | % 13
  \stemDown d''2 \stemDown e''4 \stemDown d''4 \break | % 14
  \stemDown c''4. \stemDown bes'8 \stemUp a'2 | % 15
  \stemUp f'4 \stemUp a'4 \stemUp g'4 \stemUp g'4 | % 16
  \stemUp f'2. r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ku
  da -- tang pa -- da -- Mu ya Tu -- han -- ku De -- ngan sung -- guh
  ha -- ti ku me -- nyem "bah," dan ku ber -- se -- rah ke -- pa -- da
  -- "Mu." Tu -- han te -- ri -- ma -- lah do -- a ham -- ba -- "Mu."
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

