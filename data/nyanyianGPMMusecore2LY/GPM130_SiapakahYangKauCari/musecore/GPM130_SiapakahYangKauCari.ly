\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM130_SiapakahYangKauCari/musecore/GPM130_SiapakahYangKauCari.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 130. Siapakah Yang Kau Cari?"
  composer =  "Bartje Istia, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33317579"
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
  \tempo 4=80 \stemUp fis'8 [ \stemUp fis'8 \stemUp fis'8 \stemUp g'8
  ] \stemUp fis'4 \stemUp e'4 | % 2
  \stemUp d'2. r4 | % 3
  \stemUp a'8 [ \stemUp a'8 \stemUp a'8 \stemUp b'8 ] \stemUp a'4
  \stemUp g'4 | % 4
  \stemUp fis'2. r4 \break | % 5
  \stemDown b'8 \stemDown b'4 \stemUp a'8 \stemUp b'8 [ \stemUp a'8 ]
  \stemUp g'4 | % 6
  \stemUp a'8 \stemUp a'4 \stemUp g'8 \stemUp a'8 [ \stemUp g'8 ]
  \stemUp fis'4 | % 7
  \stemUp g'8 [ \stemUp g'8 \stemUp g'8 \stemUp g'8 ] \stemUp fis'8 [
  \stemUp fis'8 ] \stemUp e'4 | % 8
  \stemUp d'2. r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Sia
  -- pa -- kah yang kau ca -- "ri?" Sia -- pa -- kah yang kau ca --
  "ri?" I -- a su -- dah bang -- "kit," I -- a su -- dah per -- gi me
  -- nung -- gu di Ga -- li -- le -- "a."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Ku
  -- bur -- Nya su -- dah ko -- "song!" Ku -- bur -- Nya su -- dah ko
  -- "song!" "B'ri" -- ta -- kan -- lah "s'ka" -- "rang," "b'ri" -- ta
  -- kan -- lah "s'ka" -- "rang," so -- rak ha -- le ha -- le -- lu --
  "ya."
}

PartPOneVoiceOneLyricsThree =  \lyricmode {
  \set ignoreMelismata = ##t Tu
  -- han Ye -- sus "t'lah" me -- "nang!" Kua -- sa maut di -- ka --
  lah -- "kan." Per -- ca -- ya -- lah "s'ka" -- "rang," per -- ca --
  ya -- lah "s'ka" -- "rang," so -- "rak," ha -- le ha -- le -- lu --
  "ya."
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

