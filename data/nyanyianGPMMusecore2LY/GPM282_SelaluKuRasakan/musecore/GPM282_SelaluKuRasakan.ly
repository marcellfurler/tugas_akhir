\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM282_SelaluKuRasakan/musecore/GPM282_SelaluKuRasakan.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 282. Selalu Ku Rasakan"
  composer =  "Alex Titawanno, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33290423"
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
  \clef "treble" \time 3/4 \key f \major | % 1
  \tempo 4=80 r2 \stemUp c'4 | % 2
  \stemUp a'4 \stemUp a'4 \stemUp bes'8 [ \stemUp g'8 ] | % 3
  \stemUp f'4 \stemUp f'4 \stemUp a'4 | % 4
  \stemDown c''2 \stemDown bes'4 | % 5
  \stemUp a'4 r4 \stemUp c'4 | % 6
  \stemUp a'4 \stemUp a'4 \stemUp bes'8 [ \stemUp g'8 ] | % 7
  \stemUp f'4 \stemUp f'4 \stemUp f'4 \break | % 8
  \stemUp g'2 \stemUp a'4 | % 9
  \stemUp g'4 r4 \stemUp a'4 | \barNumberCheck #10
  \stemDown bes'4 \stemDown bes'4 \stemUp bes'8 [ \stemUp a'8 ] | % 11
  \stemUp g'4 \stemUp g'4 \stemUp g'4 | % 12
  \stemUp a'4 \stemUp a'4 \stemUp g'4 | % 13
  \stemUp f'4 r4 \stemUp f'4 | % 14
  \stemUp g'4 \stemUp g'4 \stemUp g'8 [ \stemUp f'8 ] \break | % 15
  \stemUp e'4 \stemUp e'4 \stemUp e'4 | % 16
  \stemUp e'4 \stemUp d'4 \stemUp e'4 | % 17
  \stemUp f'4 r4 \stemUp a'4 | % 18
  \stemDown c''4 \stemDown c''4 \stemDown c''8 [ \stemDown bes'8 ] | % 19
  \stemUp a'4 \stemUp a'4 \stemUp a'4 | \barNumberCheck #20
  \stemUp a'4 \stemUp g'4 \stemUp f'4 | % 21
  \stemUp g'4 r4 \stemUp a'4 \break | % 22
  \stemDown bes'4 \stemDown bes'4 \stemUp bes'8 [ \stemUp a'8 ] | % 23
  \stemUp g'4 \stemUp g'4 \stemUp g'4 | % 24
  \stemUp g'4 \stemUp f'4 \stemUp g'4 | % 25
  \stemUp a'4 r4 \stemUp a'4 | % 26
  \stemDown c''4 \stemDown c''4 \stemDown c''8 [ \stemDown bes'8 ] | % 27
  \stemUp a'4 \stemUp a'4 \stemUp a'4 | % 28
  \stemUp a'4 \stemDown bes'4 \stemDown c''4 \break | % 29
  \stemDown bes'4 r4 \stemDown bes'4 | \barNumberCheck #30
  \stemUp a'4 \stemUp f'4 \stemUp a'4 | % 31
  \stemUp g'4 \stemUp f'4 \stemUp e'4 | % 32
  \stemUp f'2. ~ | % 33
  \stemUp f'4 r4 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Se
  -- la -- lu ku -- ra -- sa -- kan ja -- mah -- an -- "Mu." Se -- la
  -- lu ku -- ra -- sa -- kan ka -- ru -- nia -- "Mu." Kau ka -- wan
  yang se -- ja -- ti peng -- hi -- bur ha -- "ti." Da -- ri ha -- ri
  ke -- ha -- ri Eng -- kau ber -- ka -- ti Baik si -- ang mau -- pun
  ma -- "lam," Kau me -- ne -- ma -- ni Baik su -- ka mau -- pun du --
  ka "'kan" ku -- ja -- la -- "ni." Ter -- pu -- ji -- lah na -- ma --
  Mu da -- lam hi -- dup -- ku "T'ri" -- ma -- lah per -- sem -- ba --
  han -- ku\skip1
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

