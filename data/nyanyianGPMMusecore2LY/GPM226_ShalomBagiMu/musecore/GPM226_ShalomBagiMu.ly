\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM226_ShalomBagiMu/musecore/GPM226_ShalomBagiMu.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 226. Shalom Bagi Mu"
  composer =  "Bartje Istia, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33294875"
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
  \tempo 4=80 r2. r8 \stemUp fis'8 | % 2
  \stemUp gis'8 \stemUp e'8 \stemUp e'8 \stemUp fis'8 \stemUp gis'8
  \stemUp e'4 \stemUp fis'8 | % 3
  \stemUp gis'8 \stemUp e'8 \stemUp e'8 \stemUp cis'8 \stemUp e'4 r4 | % 4
  \stemUp gis'8 \stemUp gis'8 \stemUp gis'8 \stemUp fis'8 \stemUp gis'4.
  \stemUp fis'8 \break | % 5
  \stemUp gis'8 \stemUp b'8 \stemUp b'8 \stemUp b'8 \stemDown b'4 r8
  \stemUp fis'8 | % 6
  \stemUp gis'8 \stemUp e'8 \stemUp e'8 \stemUp fis'8 \stemUp gis'8
  \stemUp e'4 \stemUp fis'8 | % 7
  \stemUp gis'8 \stemUp e'8 \stemUp e'8 \stemUp cis'8 \stemUp e'4 r4 | % 8
  \stemDown b'8 \stemDown b'8 \stemDown b'8 \stemDown cis''8 \stemDown
  b'8 \stemUp gis'4 \stemUp gis'8 \break | % 9
  \stemUp fis'8 \stemUp fis'8 \stemUp gis'8 \stemUp fis'8 \stemUp e'4
  r4 | \barNumberCheck #10
  \stemDown cis''8 \stemDown cis''4 \stemDown cis''8 \stemUp cis''8
  \stemUp b'8 \stemUp b'8 \stemUp gis'8 | % 11
  \stemUp cis''8 \stemUp b'8 \stemUp b'8 \stemUp gis'8 \stemDown b'4 r4
  | % 12
  \stemDown cis''8 \stemDown cis''8 \stemDown cis''8 \stemDown cis''8
  \stemDown cis''8 \stemDown b'4 \stemUp gis'8 \break | % 13
  \stemUp b'8 \stemUp b'8 \stemUp a'8 \stemUp gis'8 \stemUp fis'4 r8
  \stemUp fis'8 | % 14
  \stemUp gis'8 \stemUp gis'8 \stemUp gis'8 \stemUp a'8 \stemDown b'8
  \stemUp gis'4 \stemDown cis''8 | % 15
  \stemDown b'8 \stemDown b'8 \stemDown cis''8 \stemDown b'8 \stemUp
  gis'8 \stemUp gis'8 r4 | % 16
  \stemDown b'8 \stemDown b'8 \stemDown b'8 \stemDown cis''8 \stemDown
  b'8 \stemUp gis'4 \stemUp gis'8 \break | % 17
  \stemUp fis'8 \stemUp fis'8 \stemUp gis'8 \stemUp fis'8 \stemUp e'4
  r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Sha
  -- lom ba -- gi -- mu ka -- "wan," sha -- lom ki -- ta se -- mua di
  ha -- ri i -- ni a -- da su -- ka ci -- "ta." Sha -- lom I -- bu dan
  Ba -- "pak," sau -- da -- ra se -- i -- "man," ber -- kat dan ka --
  ru -- nia a -- da pa -- da ki -- "ta." Jan -- ji Tu -- han hen --
  dak -- lah ki -- ta ka -- bar -- kan pa -- da ke -- lu -- ar --
  "ga," sau -- da -- ra dan te -- "man." Sha -- lom ba -- gi -- mu ka
  -- "wan," sha -- lom ki -- ta se -- mu -- "a." Da -- lam ka -- sih
  Tu -- "han," da -- mai se -- la -- ma -- "nya."
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

