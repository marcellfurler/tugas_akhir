\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM192_TuhanBerkatiNikahKami/musecore/GPM192_TuhanBerkatiNikahKami.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 192. Tuhan Berkati Nikah Kami"
  composer =  "Christian I. Tamaela, 2010"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33315761"
  subtitle =  "Matius 19 : 6"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key e \major | % 1
  \tempo 4=80 \stemUp gis'4 \stemUp gis'8 \stemUp gis'8 \stemUp fis'8
  \stemUp e'8 \stemUp gis'8 \stemUp a'8 | % 2
  \stemDown b'4 \stemDown b'4 \stemUp a'8 \stemUp gis'8 ~ \stemUp gis'4
  | % 3
  \stemUp a'8 \stemUp a'8 \stemUp a'8 \stemUp gis'8 \stemUp fis'8
  \stemUp fis'8 \stemUp gis'8 \stemUp a'8 | % 4
  \stemUp gis'2. r4 \break | % 5
  \stemUp gis'4 \stemUp gis'8 \stemUp gis'8 \stemUp gis'8 \stemUp gis'8
  \stemUp a'8 \stemUp b'8 | % 6
  \stemDown cis''4 \stemDown cis''8 ( \stemDown b'8 ) \stemUp a'4 r8
  \stemUp a'8 | % 7
  \stemUp gis'8 \stemUp gis'8 ~ \stemUp gis'4 \stemUp fis'8 ( \stemUp
  e'8 ) \stemUp fis'8 ( \stemUp gis'8 ) | % 8
  \stemUp e'4 \stemUp e'2 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Tu
  -- han ber -- ka -- ti ni -- kah ka -- mi i -- "ni," \skip1 a -- gar
  ja -- ngan ka -- mi ter -- se -- "sat." I -- kat -- kan ka -- mi de
  -- ngan ka -- sih -- \skip1 "Mu," se -- la -- ma\skip1 hi -- \skip1
  dup\skip1 ka -- "mi."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Tu
  -- han lin -- dun -- i ni -- kah ka -- mi i -- "ni," \skip1 da --
  lam ke -- da -- mai -- an a -- ba -- "di." Sa -- tu -- kan ha -- ti
  ka -- mi u -- mat -- \skip1 "Mu," dan "s'la" -- li\skip1 ba --
  \skip1 ha -- \skip1 gi -- "a."
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

