\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM146_Kudus/musecore/GPM146_Kudus.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 146. Kudus"
  composer =  "Nus Tomatala, 2008"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33316592"
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
  \clef "treble" \time 2/4 \key c \major | % 1
  \tempo 4=80 r4 r8 \stemUp g'8 | % 2
  \stemUp g'4. \stemUp g'8 | % 3
  \stemUp g'4. \stemDown c''8 | % 4
  \stemUp a'8 \stemUp f'8 \stemUp g'8 \stemUp a'8 | % 5
  \stemUp a'8 \stemUp g'8 r8 \stemUp e'8 | % 6
  \stemUp g'8 \stemUp g'8 r4 | % 7
  \stemUp g'8 \stemUp g'4 \stemUp g'8 \break | % 8
  \stemUp f'8 \stemUp f'8 \stemUp f'8 \stemUp f'8 | % 9
  \stemUp g'2 | \barNumberCheck #10
  \stemUp f'8 \stemUp f'8 \stemUp f'8 \stemUp f'8 | % 11
  \stemUp a'8 \stemUp a'8 \stemUp a'4 | % 12
  \stemUp e'8 \stemUp e'8 \stemUp e'8 \stemUp e'8 | % 13
  \stemUp g'8 \stemUp g'8 \stemUp g'4 | % 14
  \stemUp g'4 \stemUp a'8 \stemUp a'8 | % 15
  \stemUp e'4 ( \stemUp d'4 ) \break | % 16
  \stemUp c'4 r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ku
  -- "dus," ku -- "dus," ku -- dus -- lah "g're" -- ja Tu -- han yang
  hi -- "dup," hi -- dup per -- se -- ku -- tu -- an -- "Nya." Ye --
  sus di -- be -- ri -- ta -- kan di -- te -- ngah te -- ngan du --
  "nia," oh Ha -- le -- lu -- \skip1 "ya."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t A --
  "yo," ba -- ngun ber -- bak -- ti ba -- gi Tu -- han dan li -- hat
  sung -- guh ba -- nyak tu -- ai -- an -- "nya." Ba -- wa pa -- da
  rah -- mat -- Nya pas -- ti di -- se -- la -- mat -- "kan," oh Ha --
  le -- lu\skip1 "ya."
}

PartPOneVoiceOneLyricsThree =  \lyricmode {
  \set ignoreMelismata = ##t Bi
  -- ar ku -- "dus," ku -- dus -- lah u -- mat Al -- lah di bu -- mi
  Ye -- sus pe -- nun -- tun u -- mat -- "Nya." I -- ngat a -- da jan
  -- ji -- Nya un -- tuk hi -- dup yang ke -- "kal," oh Ha -- le -- lu
  -- \skip1 "ya."
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
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "3." \PartPOneVoiceOneLyricsThree }
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
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "3." \PartPOneVoiceOneLyricsThree }
      >>
    >>

  }
  \midi {\tempo 4 = 80 }
}

