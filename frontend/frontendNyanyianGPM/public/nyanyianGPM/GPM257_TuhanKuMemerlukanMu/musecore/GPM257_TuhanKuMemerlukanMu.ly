\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM257_TuhanKuMemerlukanMu/musecore/GPM257_TuhanKuMemerlukanMu.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "Untitled score"
  composer =  "Hendry Tuhusula, 2008"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33292019"
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
  \tempo 4=80 r2. \stemUp a'4 | % 2
  \stemUp a'4. \stemUp a'8 \stemUp bes'8 [ \stemUp a'8 \stemUp g'8
  \stemUp f'8 ] | % 3
  \slurDashed \stemUp g'4. ( \slurSolid \stemUp d'8 ) \stemUp d'4
  \stemUp g'4 | % 4
  \stemUp g'4. \stemUp g'8 \stemUp a'8 [ \stemUp g'8 \stemUp f'8
  \stemUp e'8 ] \break | % 5
  \slurDashed \stemUp f'4. ( \slurSolid \stemUp d'8 ) \stemUp c'4
  \stemUp d'4 | % 6
  \stemUp d'4. \stemUp d'8 \stemUp f'8 [ \stemUp f'8 \stemUp g'8
  \stemUp bes'8 ] | % 7
  \stemUp a'4. ( \stemUp g'8 ) \stemUp f'4 \stemUp bes'8 ( [ \stemUp
  a'8 ) ] | % 8
  \stemUp g'4. \stemUp f'8 \stemUp e'8 [ \stemUp e'8 \stemUp a'8
  \stemUp g'8 ] | % 9
  \stemUp f'2 r2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Tu
  -- "han," ku "s'la" -- lu me -- mer -- lu -- kan -- "Mu." Tu --
  "han," ku "s'la" -- lu meng -- ha -- rap -- kan "Mu." Tu -- han dam
  -- pi -- ngi -- lah se -- la --\skip1 "lu." Tu --\skip1 "han," ja --
  lan ber -- sa -- ma -- ku
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Tu
  -- "han," pe -- nu -- hi -- lah ha -- ti --\skip1 "ku." Tu -- "han,"
  a -- ja -- ri -- lah mak -- sud --\skip1 "Mu." Tu -- "han," ku ber
  -- syu -- kur se -- la --\skip1 "lu." Tu --\skip1 "han," ja -- lan
  ber -- sa -- ma -- "ku."
}

PartPOneVoiceOneLyricsThree =  \lyricmode {
  \set ignoreMelismata = ##t Tu
  -- "han," ja -- ga se -- ti -- ap lang -- kah -- "ku." Tu -- "han,"
  dam -- ping -- i -- lah di -- ri --\skip1 "ku." Tu -- "han," ku per
  -- lu Kau se -- la --\skip1 "lu." Tu --\skip1 "han," ja -- lan ber
  -- sa -- ma -- "ku."
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
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "3." \PartPOneVoiceOneLyricsThree }
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
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "3." \PartPOneVoiceOneLyricsThree }
      >>
    >>

  }
  \midi {\tempo 4 = 80 }
}

