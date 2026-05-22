\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM023_MariKitaMenyembahTuhan/musecore/GPM023_MariKitaMenyembahTuhan.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 23. Mari Kita Menyembah Tuhan"
  composer =  "Feris Luhukay"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33300350"
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
  \tempo 4=80 r2. \stemDown d''4 | % 2
  \stemDown b'4. \stemDown b'8 \stemUp a'8. [ \stemUp g'16 ] \stemUp
  a'8 [ \stemUp b'8 ] | % 3
  \stemDown d''4 \stemDown d''2 \stemDown b'4 | % 4
  \stemDown d''4. \stemDown b'8 \stemUp a'8. [ \stemUp g'16 ] \stemUp
  a'8 ( [ \stemUp b'8 ) ] | % 5
  \stemUp a'2. \stemDown d''4 \break | % 6
  \stemDown b'4. \stemDown b'8 \stemUp a'8. [ \stemUp g'16 ] \stemUp
  a'8 [ \stemUp b'8 ] | % 7
  \stemDown d''4 \stemDown d''2 \stemDown d''8 [ \stemDown b'8 ] | % 8
  \stemDown d''8 \stemDown b'4 \stemDown b'8 \stemUp a'8. [ \stemUp g'16
  ] \stemUp a'8 ( [ \stemUp b'8 ) ] | % 9
  \stemUp g'2. r4 | \barNumberCheck #10
  \stemUp g'4. \stemDown b'8 \stemDown d''4 \stemDown b'8 [ \stemDown
  d''8 ] \break | % 11
  \stemDown e''4 \stemDown e''4 \stemDown d''2 | % 12
  \stemUp g'4. \stemDown b'8 \stemDown d''4 \stemDown d''8 [ \stemDown
  b'8 ] | % 13
  \stemDown e''8 [ \stemDown d''8 ] \stemDown b'4 \stemUp a'2 | % 14
  \stemUp g'4. \stemDown b'8 \stemDown d''4 \stemDown b'8 [ \stemDown
  d''8 ] | % 15
  \stemDown e''4 \stemDown e''4 \stemDown d''2 \break | % 16
  \stemUp g'4. \stemDown b'8 \stemDown d''4 \stemDown d''8 [ \stemDown
  b'8 ] | % 17
  \stemDown e''8 [ \stemDown d''8 \stemDown b'8 \stemDown a'8 ]
  \stemUp g'2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ma
  -- ri ki -- ta me -- nyem -- bah Tu -- "han." Be -- sar -- kan --
  lah na -- ma --\skip1 "Nya," Se -- bab a -- tas a -- nu -- grah Al
  -- "lah." hi -- dup ki -- ta di "s'la" -- mat -- kan --\skip1 Nya Pu
  -- ji -- "lah," pu -- ji -- lah Tu -- han sem -- bah -- "lah," ma --
  ri sem -- bah Tu -- han Ki -- dung -- kan la -- gu pu -- ji -- an
  nya -- ta -- kan ra -- sa syu -- kur pa -- da -- "Nya."
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

