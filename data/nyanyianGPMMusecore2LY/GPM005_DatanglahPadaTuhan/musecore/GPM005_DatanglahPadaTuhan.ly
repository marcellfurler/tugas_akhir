\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM005_DatanglahPadaTuhan/musecore/GPM005_DatanglahPadaTuhan.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 5. Datanglah Pada Tuhan"
  subtitle = "Tanah Tanimbar"
  composer =  "Ots. Kilanmasse, 2009"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33302366"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key c \major | % 1
  \tempo 4=80 r4 r4 r4 \stemUp e'8 [ \stemUp f'8 ] | % 2
  \stemUp g'2 \stemUp g'4 \stemUp a'8 [ \stemUp a'8 ] | % 3
  \stemUp g'2. \stemUp e'8 [ \stemUp g'8 ] | % 4
  \stemDown c''2 \stemDown c''4 \stemUp b'8 [ \stemUp a'8 ] | % 5
  \stemUp g'2. \stemUp e'8 [ \stemUp f'8 ] \break | % 6
  \stemUp g'2 \stemUp g'4 \stemUp a'8 [ \stemUp a'8 ] | % 7
  \stemUp g'2. \stemUp g'8 [ \stemUp e'8 ] | % 8
  \stemUp f'8 [ \stemUp f'8 \stemUp f'8 \stemUp f'8 ] \stemUp f'8 [
  \stemUp d'8 \stemUp e'8 \stemUp f'8 ] | % 9
  \stemUp g'4 \stemUp g'2 \stemUp a'4 \break | \barNumberCheck #10
  \stemUp g'4 \stemUp e'8 [ \stemUp f'8 ] \stemUp g'8 [ \stemUp g'8 ]
  \stemUp f'4 | % 11
  \stemUp e'2 r2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Da
  -- tang -- lah pa -- da Tu -- "han," da -- tang -- lah pa -- da Tu
  -- "han." Da -- tang -- lah pa -- da Tuh -- "han," ma -- suk -- lah
  ke da -- lam ru -- mah -- Nya dan sem -- bah Di -- a di pe -- la --
  ta -- ran -- "Nya."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Te
  -- nang -- kan -- lah ha -- ti -- "mu," su -- ci -- kan -- lah ha --
  ti -- "mu." Te -- nang -- kan -- lah ha -- ti -- "mu," se -- rah --
  kan -- lah "s'lu" -- ruh ke -- hi -- dup -- an -- mu pa -- da -- Nya
  dan sem -- bah -- lah Di -- "a."
}

PartPOneVoiceOneLyricsThree =  \lyricmode {
  \set ignoreMelismata = ##t Su
  -- ci -- kan -- lah ha -- ti -- "mu," su -- ci -- kan -- lah ha --
  ti -- "mu." Su -- ci -- kan -- lah ha -- ti -- "mu," na -- ik -- kan
  -- lah tem -- bang pu -- ji -- an -- mu pa -- da Tu -- han mu -- lia
  -- kan na -- ma -- "Nya."
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

