\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM145_KitaSemuaSatu/musecore/GPM145_KitaSemuaSatu.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 145. Kita Semua Satu"
  composer =  "Bartje Istia, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33316715"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key f \major | % 1
  \tempo 4=100 r2 r8 \stemUp c'8 \stemUp f'8 \stemUp g'8 | % 2
  \stemUp a'4 \stemUp a'4 \stemUp bes'8 \stemUp bes'8 \stemUp a'8
  \stemUp g'8 | % 3
  \stemUp a'4 \stemUp f'4 r8 \stemUp c'8 \stemUp f'8 \stemUp a'8 | % 4
  \stemDown c''4 \stemDown b'8 \stemDown c''8 \stemDown d''4 \stemDown
  c''8 \stemDown b'8 \break | % 5
  \stemDown c''2 r8 \stemUp a'8 \stemUp g'8 \stemUp f'8 | % 6
  \stemDown d''4 \stemDown bes'4 \stemDown bes'4 \stemDown c''8
  \stemDown d''8 | % 7
  \stemDown c''4 \stemUp a'4 \stemUp f'8 \stemUp c'8 \stemUp f'8
  \stemUp g'8 | % 8
  \stemUp a'4 \stemUp a'8 \stemUp a'8 \stemDown bes'4 \stemUp a'8
  \stemUp g'8 | % 9
  \stemUp f'2 r2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ki
  -- ta se -- mu -- a sa -- tu da -- lam Tu -- "han." Ber -- di -- ri
  -- lah "G're" -- ja -- Nya yang E -- "sa." Tu -- han -- lah Gem --
  ba -- lah ki -- ta dom -- ba -- "Nya," hi -- dup da -- mai di -- tun
  -- tun Fir -- man -- Nya
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Ki
  -- ta se -- mu -- a sa -- tu da -- lam Tu -- "han." Be -- "sar," ke
  -- cil ti -- a -- da be -- da -- "nya." Ber -- to -- long to -- long
  -- "lah," sa -- ling mem -- be -- "ri," da -- lam Tu -- han ki -- ta
  ber -- sau -- da -- "ra."
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

