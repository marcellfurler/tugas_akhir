\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM244_JikaTuhanTelahMemanggilMu/GPM244_JikaTuhanTelahMemanggilMu.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "Untitled score"
  composer =  "Alex Titawanno - Piru, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33289103"
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
  \tempo 4=80 r4 \stemUp c'8 [ \stemUp c'8 ] \stemUp f'8 [ \stemUp e'8
  \stemUp f'8 \stemUp g'8 ] | % 2
  \stemUp a'4. \stemUp g'8 \stemUp f'2 | % 3
  r4 \stemUp c'8 [ \stemUp c'8 ] \stemUp f'8 [ \stemUp e'8 \stemUp f'8
  \stemUp a'8 ] | % 4
  \stemUp g'4. \stemUp f'8 \stemUp e'2 \break | % 5
  r4 \stemUp c'8 [ \stemUp c'8 ] \stemUp e'8 [ \stemUp d'8 \stemUp e'8
  \stemUp f'8 ] | % 6
  \stemUp g'4. \stemUp a'8 \stemDown bes'2 | % 7
  r4 \stemUp g'8 [ \stemUp g'8 ] \stemUp g'8 [ \stemUp g'8 \stemUp f'8
  \stemUp e'8 ] | % 8
  f'1 | % 9
  r4 \stemDown c''8 [ \stemDown c''8 ] \stemDown c''8 [ \stemDown c''8
  \stemDown bes'8 \stemDown a'8 ] \break | \barNumberCheck #10
  \stemDown bes'4. \stemUp a'8 \stemUp g'2 | % 11
  r4 \stemUp g'8 [ \stemUp g'8 ] \stemUp f'4 \stemUp g'4 | % 12
  a'1 | % 13
  r4 \stemDown c''8 [ \stemDown c''8 ] \stemDown c''8 [ \stemDown c''8
  \stemDown bes'8 \stemDown a'8 ] | % 14
  \stemUp g'4. \stemUp a'8 \stemDown bes'2 \break | % 15
  r4 \stemUp e'8 [ \stemUp f'8 ] \stemUp g'8 [ \stemUp g'8 \stemUp f'8
  \stemUp e'8 ] | % 16
  f'1 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ji
  -- ka Tu -- han "t'lah" me -- mang -- gil -- mu per -- si -- ap --
  jan di -- ri -- mu se -- "g'ra" ja -- ngan ta -- kut a -- kan se --
  te -- ru Tu -- han -- lah pe -- no -- long -- mu Ber -- sak -- si --
  lah ba -- gi Tu -- han -- mu I -- kut Fir -- man -- Nya se -- mua
  bang -- sa ja -- di mu -- rid -- Nya Fir -- man Tu -- han ja -- ya
  -- lah
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Ko
  -- bar -- kan -- lah a -- pi in -- jil -- Nya ki -- bar -- kan --
  lah pan -- ji -- pan -- ji -- Nya ma -- suk da -- lam du -- nia yang
  ge -- lap a -- gar "s'mu" -- a "s'la" -- mat -- lah\skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1
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
  \midi {\tempo 4 = 80 }
}

