\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM186_YesusPanggil/musecore/GPM186_YesusPanggil.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 186. Yesus Panggil"
  composer =  "Nus Tomatala, 2008"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33295280"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key g \major | % 1
  \tempo 4=90 r2. \stemUp d'8 \stemUp d'8 | % 2
  \stemUp g'4 \stemDown b'2 \stemUp a'8 \stemUp b'8 | % 3
  \stemUp a'4 \stemUp fis'2 \stemUp a'8 \stemUp g'8 | % 4
  \stemUp fis'4. \stemUp g'8 \stemUp a'8 \stemUp g'8 \stemUp e'8
  \stemUp g'8 | % 5
  \stemUp d'2. \stemUp d'8 \stemUp d'8 \break | % 6
  \stemUp b'8 \stemUp b'8 \stemUp b'8 \stemUp a'8 \stemUp g'4 \stemUp
  a'8 \stemUp b'8 | % 7
  \stemDown c''8 \stemDown c''8 \stemDown c''8 \stemDown b'8 \stemUp
  a'4 \stemUp g'8 \stemUp a'8 | % 8
  \stemDown b'4. \stemUp g'8 \stemUp a'8 \stemUp g'8 \stemUp b'8
  \stemUp a'8 | % 9
  \stemUp g'2. r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ye
  -- sus pang -- "gil," Ye -- sus pang -- gil ma -- ri -- lah hai a --
  nak -- a -- nak -- "Ku." "T'ri" -- ma -- lah a -- ir hi -- dup ku --
  per -- cik -- kan ba -- gi -- "mu," ma -- ri -- lah hai a -- nak --
  a -- nak -- Ku
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Ye
  -- sus pang -- "gil," Ye -- sus pang -- gil hai i -- bu re -- la --
  kan a -- nak -- "mu." De -- ngan bap -- tis -- an ku -- dus Ba --
  "pa," A -- "nak," Roh Ku -- dus "s'la" -- mat -- "lah," "s'la" --
  mat -- lah a -- nak -- "mu."
}

PartPOneVoiceOneLyricsThree =  \lyricmode {
  \set ignoreMelismata = ##t Ye
  -- sus paang -- "gil," Ye -- sus pang -- gil hai a -- yah re -- la
  -- kan a -- nak -- "mu." A -- jar -- lah i -- a hi -- dup di te --
  rang Fir -- man Kris -- tus tun -- tun -- "lah," tun -- tun -- lah a
  -- nak -- "mu."
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
  \midi {\tempo 4 = 90 }
}

