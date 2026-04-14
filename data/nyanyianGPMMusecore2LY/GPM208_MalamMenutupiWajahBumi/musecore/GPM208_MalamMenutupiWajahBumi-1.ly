\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM208_MalamMenutupiWajahBumi/musecore/GPM208_MalamMenutupiWajahBumi.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 208. Malam Menutupi Wajah Bumi"
  composer =  "Glen V. Hendriks, 2008"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key f \major | % 1
  \tempo 4=80 \stemUp a'8 \stemUp a'8 \stemUp g'8 \stemUp a'8 \stemUp
  c''8 \stemUp a'8 \stemUp g'8 \stemUp f'8 | % 2
  \stemUp g'4 \stemUp f'2 \stemUp c'4 | % 3
  \stemUp a'8 \stemUp a'8 \stemUp g'8 \stemUp a'8 \stemUp c''8 \stemUp
  a'8 \stemUp g'8 \stemUp f'8 | % 4
  \stemUp a'4 \stemUp g'2 r4 \break | % 5
  \stemUp g'8 \stemUp g'8 \stemUp f'8 \stemUp g'8 \stemUp a'8 \stemUp
  g'8 \stemUp f'8 \stemUp g'8 | % 6
  \stemUp f'4 \stemUp f'4 \stemUp d'4 r8 \stemUp c'8 | % 7
  \stemUp f'8 \stemUp f'8 \stemUp f'8 \stemUp a'8 \stemUp c''8 \stemUp
  a'8 \stemUp g'8 \stemUp f'8 | % 8
  \stemUp g'4 \stemUp f'2. \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ma
  -- lam me -- nu -- tu -- pi wa -- jah bu -- "mi," lang -- kah yang
  ku -- ra -- jut -- pun "t'lah" ber -- a -- khir Syu -- kur ku -- na
  -- ik -- kan da -- ri ha -- ti -- ku ke -- pa -- da sang Pen -- cip
  -- ta cak -- ra -- wa -- "la."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Ma
  -- lam me -- nu -- tu -- pi wa -- jah bu -- "mi," u -- sai -- lah su
  -- dah kar -- ya ha -- ri i -- ni Ta -- ngan Tu -- han "s'la" -- lu
  me -- nyer -- ta -- i -- ku le -- wa -- ti ha -- ri -- ha -- ri hi
  -- dup i -- "ni."
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

