\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM201_SaatPagiMenyambutku/musecore/GPM201_SaatPagiMenyambutku.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 201. Saat pagi Menyambutku"
  composer =  "Lili Picanussa"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33315518"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key d \major | % 1
  \tempo 4=90 r4 \stemUp a'8 \stemUp g'8 \stemUp fis'8 \stemUp fis'8
  \stemUp a'8 \stemUp b'8 | % 2
  \stemUp a'8 \stemUp a'8 ~ \stemUp a'2. | % 3
  r4 \stemUp fis'8 \stemUp g'8 \stemDown a'8 \stemDown a'8 \stemDown
  d''8 \stemDown d''8 | % 4
  \stemDown cis''4 \stemUp a'8 \stemUp g'8 ~ \stemUp g'2 \break | % 5
  r4 \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp e'8
  \stemUp fis'8 | % 6
  \stemUp g'8 \stemUp g'8 ~ \stemUp g'2. | % 7
  r4 \stemDown b'8 \stemDown b'8 \stemUp a'8 \stemUp a'8 \stemUp a'8
  \stemUp g'8 | % 8
  fis'1 | % 9
  r4 \stemUp a'8 \stemUp g'8 \stemUp fis'8 \stemUp fis'8 \stemUp a'8
  \stemUp b'8 \break | \barNumberCheck #10
  \stemUp a'8 \stemUp a'8 ~ \stemUp a'2. | % 11
  r4 \stemUp fis'8 \stemUp a'8 \stemDown d''8 \stemDown cis''8
  \stemDown e''8 \stemDown d''8 | % 12
  \stemDown b'4. \stemDown cis''8 \stemDown d''2 | % 13
  r4 \stemDown d''8 \stemDown d''8 \stemDown d''8 \stemDown d''8
  \stemDown cis''8 \stemDown b'8 | % 14
  \stemUp a'4. \stemUp g'8 \stemUp fis'2 \break | % 15
  r4 \stemUp a'8 \stemUp a'8 \stemDown b'8 \stemDown a'8 \stemDown b'8
  \stemDown cis''8 | % 16
  \stemDown d''2. r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Sa
  -- at pa -- gi me -- nyam -- but -- ku\skip1 tak ter -- u -- kur ka
  -- sih -- "Mu," Tu -- "han." \skip1 A -- ku su -- jud me -- nyem --
  bah -- "Mu," \skip1 a -- tas ber -- kat da -- ri -- "Mu." Ku ber --
  syu -- kur pa -- da Tu -- "han," \skip1 a -- tas ha -- ri ba -- ru
  yang di -- "b'ri." Kau pe -- mim -- pin a -- tas hi -- dup -- "ku,"
  da -- lam lang -- kah ju -- ang -- "ku."
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
  \midi {\tempo 4 = 90 }
}

