\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM032_PujilahTuhanDenganTifaGong/musecore/GPM032_PujilahTuhanDenganTifaGong.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 32. Pujilah Tuhan Dengan Tifa Gong"
  composer =  "Hennils Tamaela, 2009"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33299801"
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
  \clef "treble" \time 3/4 \key c \major | % 1
  \tempo 4=100 \stemUp c'4 \stemUp c'4 \stemUp c'4 | % 2
  \stemUp g'4 \stemUp g'4 \stemUp g'8 [ \stemUp g'8 ] | % 3
  \stemUp a'4 \stemDown c''4 \stemUp a'4 | % 4
  \stemUp g'2 r4 | % 5
  \stemUp e'4 \stemUp e'4 \stemUp e'4 | % 6
  \stemUp a'4 \stemUp g'4 \stemUp e'4 | % 7
  \stemUp d'4 \stemUp d'4 \stemUp e'4 \break | % 8
  \stemUp d'2 r4 | % 9
  \stemUp c'4 \stemUp c'4 \stemUp c'4 | \barNumberCheck #10
  \stemUp g'4 \stemUp g'4 \stemUp g'8 [ \stemUp g'8 ] | % 11
  \stemUp a'4 \stemDown c''4 \stemUp a'4 | % 12
  \stemUp g'2 r4 | % 13
  \stemUp a'4 \stemDown c''4 \stemUp a'4 | % 14
  \stemUp g'4 \stemUp e'4 \stemUp g'8 [ \stemUp g'8 ] \break | % 15
  \stemUp a'4 \stemUp g'4 \stemUp a'4 | % 16
  \stemDown c''2. \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Pu
  -- ji -- lah Tu -- han de -- ngan ti -- fa dan "gong." Nya -- nyi --
  kan la -- gu mer -- du ba -- gi -- "Nya." Ang -- kat ha -- ti -- mu
  de -- ngan ra -- sa syu -- "kur." Den -- dang -- kan la -- gu ha --
  le -- lu -- "ya," A -- "min."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Sam
  -- bil me -- na -- ri ki -- ta pu -- ji Tu -- "han." A -- gung --
  kan na -- ma -- Nya yang mu -- li -- "a." Sak -- si -- kan kua -- sa
  -- Nya yang a -- mat a -- jaib Den -- dang -- kan la -- gu ha -- le
  -- lu -- "ya," A -- "min."
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
  \midi {\tempo 4 = 100 }
}

