\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM171_KamiBersyukurMemujiMu/musecore/GPM171_KamiBersyukurMemujiMu.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 171. Kami Bersyukur MemujiMu"
  composer =  "Nus Tomatala, 2009"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33316370"
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
  \tempo 4=80 \stemUp b8 \stemUp b8 \stemUp b8 \stemUp b8 \stemUp fis'4
  \stemUp e'8 \stemUp d'8 | % 2
  \stemUp cis'2 \stemUp b2 | % 3
  \stemUp d'8 \stemUp d'8 \stemUp d'8 \stemUp d'8 \stemUp a'4 \stemUp
  e'8 \stemUp g'8 | % 4
  \stemUp g'2 \stemUp fis'4 r4 \break | % 5
  \stemUp b8 \stemUp b8 \stemUp b8 \stemUp b8 \stemUp fis'4
  \slurDashed \stemUp e'8 ( \slurSolid \stemUp d'8 ) | % 6
  \stemUp cis'2 \stemUp b4 r8 \stemUp g'8 | % 7
  \stemUp fis'8 \stemUp fis'8 \stemUp a'8 \stemUp fis'8 \stemUp e'8
  \stemUp d'8 \stemUp cis'8 \stemUp a8 | % 8
  \stemUp b2 \stemUp b4 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ka
  -- mi ber -- syu -- kur me -- mu -- ji -- "Mu," ka -- mi ber -- syu
  -- kur me -- nyem -- bah -- "Mu." "Kar'" -- na ka -- sih -- Mu yang
  mu -- li -- "a," pa -- da -- Mu Ye -- sus ka -- mi mau ber -- syu --
  "kur."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Fir
  -- man -- Mu pe -- li -- ta di ha -- "ti," ba -- gai -- kan te --
  rang ma -- ta -- ha -- "ri." Ja -- di -- kan hi -- dup ber -- \skip1
  ar -- ti se -- ba -- gai sak -- si -- Mu di da -- lam du -- "nia."
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

