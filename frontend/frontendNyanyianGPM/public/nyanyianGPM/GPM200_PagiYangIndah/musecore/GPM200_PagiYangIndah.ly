\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM200_PagiYangIndah/musecore/GPM200_PagiYangIndah.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 200. Pagi Yang Indah"
  composer =  "Ots. Kilanmasse, 2009"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33315368"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key e \major | % 1
  \tempo 4=95 r2 r8 \stemUp b8 \stemUp cis'8 \stemUp b8 | % 2
  \stemUp e'4 \stemUp e'4 \stemUp gis'4. \stemUp fis'8 | % 3
  \stemUp fis'4 \stemUp e'4 r8 \stemUp b8 \stemUp cis'8 \stemUp b8 | % 4
  \stemUp e'4 \stemUp e'4 \stemUp gis'4 \stemUp fis'8 \stemUp e'8
  \break | % 5
  \stemUp fis'2 r8 \stemDown b'8 \stemDown cis''8 \stemDown b'8 | % 6
  \stemUp gis'4 \stemUp gis'4 \stemUp fis'4 \stemUp fis'8 ( \stemUp
  gis'8 ) | % 7
  \stemUp a'4 \stemDown cis''4 r8 \stemDown cis''8 \stemDown b'8
  \stemDown a'8 | % 8
  \stemUp gis'4 \stemUp e'4 \stemUp gis'8 ( \stemUp fis'8 ) \stemUp e'8
  ( \stemUp dis'8 ) | % 9
  \stemUp e'2 \stemUp e'2 \bar "||"
  \break | \barNumberCheck #10
  \stemDown b'2 \stemDown cis''4. \stemDown b'8 | % 11
  \stemDown b'4 \stemUp a'2. | % 12
  \stemUp fis'2 \stemDown b'4. \stemUp a'8 | % 13
  \stemUp a'4 \stemUp gis'2 r4 | % 14
  \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp e'4 \stemUp
  gis'4 | % 15
  \stemUp fis'4 \stemUp a'2 r4 \break | % 16
  \stemUp dis'8 \stemUp e'8 \stemUp fis'8 \stemUp gis'8 \stemUp a'4
  \stemUp dis'4 | % 17
  \stemUp e'2 r2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Pa
  -- gi yang in -- dah dan ce -- ri -- a di -- tim -- pa si -- nar sur
  -- ya ce -- "rah." Se -- mes -- ta a -- lam -- pun ber -- \skip1 gi
  -- rang me -- mu -- ji Tu -- ha Sang\skip1 Pen -- \skip1 cip --
  "ta." Pu -- ji -- lah Al -- "lah," pu -- ji na -- ma -- "Nya." Pu --
  ji Di -- a se -- la -- ma -- "nya," sung -- guh A -- gung kar -- ya
  -- "Nya."
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
  \midi {\tempo 4 = 95 }
}

