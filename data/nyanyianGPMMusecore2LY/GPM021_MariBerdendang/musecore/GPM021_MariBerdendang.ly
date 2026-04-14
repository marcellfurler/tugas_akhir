\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM021_MariBerdendang/musecore/GPM021_MariBerdendang.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 21. Mari Berdendang"
  composer =  "Alex Titawanno, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33300761"
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
  \tempo 4=80 \stemUp d'8. [ \stemUp a16 ] \stemUp b8 [ \stemUp d'8 ]
  \stemUp d'2 | % 2
  \stemUp d'8. [ \stemUp a16 ] \stemUp b8 [ \stemUp d'8 ] \stemUp e'2
  | % 3
  \stemUp d'8. [ \stemUp a16 ] \stemUp b8 [ \stemUp d'8 ] \stemUp d'8
  [ \stemUp d'8 \stemUp d'8 \stemUp d'8 ] | % 4
  \stemUp e'8. [ \stemUp d'16 ] \stemUp fis'8 [ \stemUp e'8 ] \stemUp
  d'2 \break | % 5
  \stemUp a'8. [ \stemUp a'16 ] \stemDown b'8 ( [ \stemDown d''8 ) ]
  \stemDown d''2 | % 6
  \stemUp a'8. [ \stemUp a'16 ] \stemUp b'8 [ \stemUp a'8 ] \stemUp
  fis'2 | % 7
  \stemUp fis'8. [ \stemUp fis'16 ] \stemUp e'8 [ \stemUp fis'8 ]
  \stemUp a'8. [ \stemUp a'16 ] \stemUp b'8 [ \stemUp a'8 ] | % 8
  \stemUp fis'8. [ \stemUp fis'16 ] \stemUp a'8 [ \stemUp fis'8 ]
  \stemUp e'2 | % 9
  \stemUp a'8. [ \stemUp a'16 ] \stemDown b'8 ( [ \stemDown d''8 ) ]
  \stemDown d''2 \break | \barNumberCheck #10
  \stemUp a'8. [ \stemUp a'16 ] \stemUp b'8 [ \stemUp a'8 ] \stemUp
  fis'2 | % 11
  \stemUp fis'8 [ \stemUp fis'16 \stemUp fis'16 ] \stemUp e'8 [
  \stemUp fis'8 ] \stemUp a'8. [ \stemUp a'16 ] \stemUp b'8 [ \stemUp
  a'8 ] | % 12
  \stemUp fis'8 [ \stemUp e'16 \stemUp d'16 ] \stemUp fis'8 [ \stemUp
  e'8 ] \stemUp d'2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ma
  -- ri ber -- den -- "dang," ma -- ri me -- mu -- "ji." Nya -- nyi --
  kan syu -- kur dan ber -- ge -- ma ba -- gi Tu -- "han." Ha -- le --
  lu --\skip1 "ya," pu -- ji Tu -- han -- mu Bu -- nyi -- kan ti -- fa
  to -- to -- bu -- ang dan ta -- hu -- "ri." Ha -- le -- lu --\skip1
  "ya," pu -- ji na -- ma -- "Nya." Hai ma -- ri ber -- nya -- nyi dan
  ber -- den -- dang ba -- gi ra -- ja -- "mu."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t In
  -- dah -- lah ki -- ni ke -- ra -- ja -- an -- "Nya." Ja -- ya tah
  -- ta -- Nya di a -- tas pu -- ji pu -- ji -- "an." \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
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

