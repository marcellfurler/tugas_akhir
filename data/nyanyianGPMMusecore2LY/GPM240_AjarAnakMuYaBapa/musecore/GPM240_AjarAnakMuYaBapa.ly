\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM240_AjarAnakMuYaBapa/musecore/GPM240_AjarAnakMuYaBapa.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 240. Ajar Anakmu Ya Bapa"
  composer =  "Monica Pariela-Parera, 2007"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33294497"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key c \major | % 1
  \tempo 4=80 r2. \stemUp g8 \stemUp g8 | % 2
  \stemUp e'4 \stemUp e'4 \stemUp f'4. \stemUp a'8 | % 3
  \stemUp g'4 \stemUp g'2 \stemUp c'8 \stemUp c'8 | % 4
  \stemUp d'4. \stemUp e'8 \stemUp f'8 \stemUp g'8 \stemUp d'8 \stemUp
  f'8 | % 5
  \stemUp f'4 \stemUp e'4 r4 \stemUp g8 \stemUp g8 \break | % 6
  \slurDashed \stemUp e'8 ( \slurSolid \stemUp e'8 ) \stemUp e'4
  \stemUp f'8 \stemUp e'8 \stemUp f'8 \stemUp a'8 | % 7
  \stemUp g'4 \stemUp g'2 \stemUp e'8 \stemUp g'8 | % 8
  \stemUp g'8 \stemUp f'4. \stemUp d'8 \stemUp e'8 \stemUp f'8 \stemUp
  b8 | % 9
  \stemUp d'8 \stemUp c'4. r8 \stemUp g'8 \stemUp e'8 \stemUp g'8 |
  \barNumberCheck #10
  \stemDown c''4. \stemDown c''8 \stemDown b'4. \stemDown c''8 \break
  | % 11
  \stemDown b'4 \stemUp a'4. \stemDown a'8 \stemDown a'8 \stemDown c''8
  | % 12
  \stemDown b'4. \stemDown b'8 \stemDown b'8 \stemDown c''8 \stemDown
  b'8 \stemDown a'8 | % 13
  \stemUp a'4 \stemUp g'4 r8 \stemUp g'8 \stemUp a'8 \stemUp e'8 | % 14
  \stemUp g'4 \stemUp g'4 \stemUp g'8 \stemUp a'8 \stemUp a'8 \stemUp
  g'8 \break | % 15
  \stemUp f'8 \stemUp f'8 \stemUp a'4 r8 \stemDown a'8 \stemDown c''8
  \stemDown a'8 | % 16
  \stemDown b'4 \stemDown b'4 \stemDown b'4 \stemUp a'8 \stemUp b'8 | % 17
  \stemDown c''2 r4 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t A --
  jar a -- nak -- "Mu," ya Ba -- "pa," me -- nger -- ti mak -- sud --
  Mu yang mu -- li -- a me -- la -- lu -- i tan -- tang -- an dan go
  -- da -- an yang di -- da -- pat di da -- lam hi -- dup -- ku A --
  jar -- an -- Mu me -- nun -- tun a -- ku kem -- ba -- li da -- lam
  de -- kap -- an ka -- sih -- "Mu," dan me -- mur -- ni -- kan ha --
  ti dan nu -- ra -- ni -- ku me -- nu -- rut fir -- man -- Mu yang be
  -- "nar."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t A --
  jar a -- nak -- "Mu," ya Ba -- "pa," me -- nu -- rut a -- pa -- pun
  ke -- hen -- dak -- "Mu," su -- pa -- ya\skip1 ke -- hen -- dak mu
  -- li -- a -- Mu ja -- di nya -- ta di da -- lam hi -- dup --
  ku\skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1
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

