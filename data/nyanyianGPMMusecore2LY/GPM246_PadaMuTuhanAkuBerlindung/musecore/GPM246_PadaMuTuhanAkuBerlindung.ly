\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM246_PadaMuTuhanAkuBerlindung/musecore/GPM246_PadaMuTuhanAkuBerlindung.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 246. PadaMu Tuhan Aku Berlindung"
  composer =  "Lies Pattiruhu, 2008"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33294251"
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
  \clef "treble" \time 3/4 \key c \major | % 1
  \tempo 4=80 \stemUp e'4 \stemUp d'4 \stemUp c'4 | % 2
  \stemUp c'2. | % 3
  \stemUp g2. | % 4
  \stemUp g4 \stemUp c'4 \stemUp e'4 | % 5
  \stemUp a'2. | % 6
  \stemUp g'2 r4 | % 7
  \stemUp g'4 \stemUp f'4 \stemUp e'4 | % 8
  \stemUp e'2. | % 9
  \stemUp d'2. \break | \barNumberCheck #10
  \stemUp d'4 \stemUp c'4 \stemUp d'4 | % 11
  \stemUp e'2. | % 12
  \stemUp e'2 r4 | % 13
  \stemUp e'4 \stemUp d'4 \stemUp c'4 | % 14
  \stemUp c'2. | % 15
  \stemUp g2. | % 16
  \stemUp g4 \stemUp c'4 \stemUp e'4 | % 17
  \stemUp a'2. | % 18
  \stemUp g'2 \stemUp e'4 \break | % 19
  \stemUp e'4 \stemUp d'4 \stemUp e'4 | \barNumberCheck #20
  \stemUp g'2. | % 21
  \stemUp f'2. | % 22
  \stemUp f'4 \stemUp e'4 \stemUp d'4 | % 23
  \stemUp c'2. ~ | % 24
  \stemUp c'2 r4 | % 25
  \stemDown c''4 \stemDown c''4 \stemDown c''4 | % 26
  \stemDown c''2. | % 27
  \stemUp a'2. \break | % 28
  \stemDown d''4 \stemDown c''4 \stemUp a'4 | % 29
  \stemUp a'2. | \barNumberCheck #30
  \stemUp g'2. | % 31
  \stemUp g'4 \stemUp f'4 \stemUp e'4 | % 32
  \stemUp g'2. | % 33
  \stemUp f'2. | % 34
  \stemUp d'4 \stemUp c'4 \stemUp d'4 | % 35
  \stemUp e'2. | % 36
  \stemUp e'2 r4 \break | % 37
  \stemDown c''4 \stemDown c''4 \stemDown c''4 | % 38
  \stemDown c''2. | % 39
  \stemUp a'2. | \barNumberCheck #40
  \stemDown c''4 \stemDown c''4 \stemDown c''4 | % 41
  \stemDown c''2. | % 42
  \stemUp g'2. | % 43
  \stemUp e'4 \stemUp d'4 \stemUp e'4 | % 44
  \stemUp g'2. | % 45
  \stemUp f'2. | % 46
  \stemUp f'4 \stemUp e'4 \stemUp d'4 \break | % 47
  \stemUp c'2. ~ | % 48
  \stemUp c'2 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Pa
  -- da -- Mu Tu -- "han," a -- ku ber -- lin -- "dung." Da -- lam ta
  -- ngan -- "Mu," a -- ku se -- la -- "mat." Ti -- dak ku ta -- kut
  di per -- ja -- la -- nan se -- bab Tu -- han a -- da di sam -- ping
  -- "ku." \skip1 A -- ku me -- mu -- ji Ka -- sih sa -- yang -- Mu Da
  -- lam ta -- ngan -- "Mu," a -- ku se -- la -- "mat." A -- ku me --
  mu -- ji ka -- sih sa -- yang -- "Mu." Ha -- nya pa -- da -- "Mu,"
  ha -- ra -- pan -- "ku." \skip1
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

