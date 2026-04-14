\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM207_DoaMalamKu/musecore/GPM207_DoaMalamKu.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "Untitled score"
  composer =  \markup \column {
    \line { "Nus Tomatala, 2008"}
    \line { ""}
  }

  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33290084"
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
  \tempo 4=80 r2. \stemUp fis'8 [ \stemUp e'8 ] | % 2
  \stemUp d'4 \stemUp e'4 \stemUp fis'4 \stemUp fis'8 [ \stemUp a'8 ]
  | % 3
  \stemUp a'4 \stemUp g'4 \stemUp g'4 \stemUp g'8 [ \stemUp fis'8 ] | % 4
  \stemUp e'4 \stemUp fis'4 \stemUp g'4 \stemUp g'8 [ \stemUp b'8 ]
  \break | % 5
  \stemUp b'8 ( [ \stemUp a'8 ) ] \stemUp g'4 \stemUp a'4 \stemUp fis'8
  [ \stemUp a'8 ] | % 6
  \stemDown d''4 \stemDown d''4 \stemDown d''4 \stemDown d''8 [
  \stemDown cis''8 ] | % 7
  \stemDown b'4 \stemDown b'4 \stemDown d''4 \stemDown cis''8 [
  \stemDown b'8 ] | % 8
  \stemUp a'8 [ \stemUp a'8 \stemUp a'8 \stemUp b'8 ] \stemUp fis'4
  \stemUp e'4 | % 9
  \stemUp d'2. r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Do
  -- a ma -- lam -- ku ku naik kan "s'la" -- lu ha -- nya pa -- da --
  "Mu," Ye -- sus Tu --\skip1 han -- ku sam -- bu -- lah a -- ku de --
  ngan ka -- sih -- Mu a -- gar ji -- wa -- ku ten -- tram te --
  "duh."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Do
  -- a ma -- lam -- ku ter -- u -- cap tu -- lus a -- gar ti -- dur --
  ku ti -- dak ter --\skip1 gang -- gu da -- tang -- lah Ye -- sus te
  -- ma -- ni a -- ku sam -- pai ti -- ba e -- sok yang ba -- "ru."
}

PartPOneVoiceOneLyricsThree =  \lyricmode {
  \set ignoreMelismata = ##t Do
  -- a ma -- lam -- ku sing -- kat dan u -- tuh ku -- rang -- kai i --
  tu de -- ngan i --\skip1 man -- ku ku ya -- kin pas -- ti di -- sam
  -- but Ye -- sus dan ja -- wa -- ban -- Nya te -- pat wak -- "tu."
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

