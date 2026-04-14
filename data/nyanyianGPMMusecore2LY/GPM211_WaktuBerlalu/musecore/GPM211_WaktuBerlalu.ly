\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM211_WaktuBerlalu/musecore/GPM211_WaktuBerlalu.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "Untitled score"
  composer =  "Nus Tomatala, 2008"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33289631"
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
  \tempo 4=80 r2 r8 \stemUp a8 [ \stemUp d'8 \stemUp e'8 ] | % 2
  \stemUp fis'8 ( [ \stemUp a'8 ) ] \stemUp a'4. \stemUp fis'8 [
  \stemUp e'8 \stemUp d'8 ] | % 3
  \stemUp e'8 ( [ \stemUp a'8 ) ] \stemUp a'4 r8 \stemUp e'8 [ \stemUp
  e'8 \stemUp fis'8 ] | % 4
  \stemUp g'4. \stemUp fis'8 \stemUp e'8 [ \stemUp e'8 \stemUp fis'8
  \stemUp g'8 ] \break | % 5
  \stemUp a'4 \stemUp a'4 r8 \stemUp a8 [ \stemUp d'8 \stemUp e'8 ] | % 6
  \stemUp fis'8 ( [ \stemUp a'8 ) ] \stemUp a'4. \stemDown d''8 [
  \stemDown d''8 \stemDown cis''8 ] | % 7
  \slurDashed \stemDown b'4 ( \slurSolid \stemDown d''2 ) \stemUp g'8
  [ \stemUp b'8 ] | % 8
  \stemUp a'8 [ \stemUp a'8 \stemUp a'8 \stemUp a'8 ] \stemUp g'8 [
  \stemUp fis'8 \stemUp e'8 \stemUp a'8 ] \break | % 9
  \time 2/4  \stemUp d'2 \bar "||"
  r8 \stemUp fis'8 \stemUp fis'8 [ \stemUp g'8 ] | % 11
  \numericTimeSignature\time 4/4  \stemUp a'8 \stemUp a'2 \stemUp b'8
  [ \stemUp g'8 \stemUp fis'8 ] | % 12
  \stemUp g'8 \stemUp e'4. r8 \stemUp e'8 [ \stemUp e'8 \stemUp fis'8
  ] | % 13
  \stemUp g'8 \stemDown b'4. \stemUp a'8 [ \stemUp e'8 ] \stemUp a'8.
  [ \stemUp g'16 ] \break | % 14
  \stemUp fis'2 r8 \stemUp fis'8 [ \stemUp fis'8 \stemUp g'8 ] | % 15
  \stemUp a'8 \stemUp fis'2 \stemDown d''8 [ \stemDown d''8 \stemDown
  d''8 ] | % 16
  \stemDown d''4 \stemDown b'4 \stemDown b'4 r8 \stemDown b'8 | % 17
  \stemUp a'8 [ \stemUp a'8 \stemUp a'8 \stemUp a'8 ] \stemDown b'4
  \stemDown cis''4 | % 18
  \time 2/4  \stemDown d''2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Wak
  -- tu ber -- la --\skip1 lu mu -- sim ber -- gan --\skip1 ti "'tak"
  te -- ra -- sa da -- tang ta -- hun yang ba -- "ru." Ma -- ri ber --
  nya --\skip1 nyi u -- cap syu -- kur\skip1 ka -- ta -- kan Ye -- sus
  me -- mang sung -- guh ba -- ik Se -- la -- mat ma -- suk ta -- hun
  yang ba -- ru se -- la -- mat ma -- suk hi -- dup yang ba -- ru ya
  -- kin -- lah Ye -- sus na -- u -- ngi se -- la -- lu "s'ka" -- rang
  sam -- pai se -- la -- ma -- nya
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Ja
  -- ngan ke -- nang --\skip1 kang ke -- ga -- ga -- lan --\skip1
  "mu," ang -- gap sa -- ja se -- ba -- gai a -- ngin la -- lu pan --
  dang di mu --\skip1 ka e -- sok me -- nung -- gu Ga -- pai -- lah ba
  -- ha -- gia ber -- sa -- ma Ye -- sus\skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
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

