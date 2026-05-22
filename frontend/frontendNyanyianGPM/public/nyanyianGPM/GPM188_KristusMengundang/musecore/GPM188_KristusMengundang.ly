\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM188_KristusMengundang/musecore/GPM188_KristusMengundang.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 188. Kristus Mengundang"
  composer =  "Monike Hukubun, 2010"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-13"
  source =  "https://musescore.com/user/40408317/scores/33316049"
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
  \tempo 4=80 \stemUp gis'4 \stemUp fis'8 \stemUp gis'8 \stemUp a'8
  \stemUp gis'8 \stemUp fis'8 \stemUp gis'8 | % 2
  \stemUp fis'4 \stemUp eis'8 \stemUp fis'8 \stemUp a'4 \stemUp fis'4
  | % 3
  \stemUp fis'4 \stemUp eis'8 \stemUp fis'8 \stemUp a'8 \stemUp fis'8
  \stemUp eis'8 \stemUp fis'8 \break | % 4
  \stemUp a'8 \stemUp fis'8 \slurDashed \stemUp eis'8 ( \slurSolid
  \stemUp fis'8 ) \stemUp a'4 \stemUp gis'4 | % 5
  \stemUp e'4 \stemUp e'8 ( \stemUp gis'8 ) \stemUp b'8 \stemUp gis'8
  \stemUp fis'8 \stemUp gis'8 | % 6
  \stemUp a'4 \slurDashed \stemDown b'8 ( \slurSolid \stemDown cis''8
  ) \stemDown d''4 \stemDown cis''4 | % 7
  \stemDown cis''4 \stemUp fis'8 \stemUp gis'8 \stemUp a'8 \stemUp
  gis'8 \stemUp fis'8 \stemUp gis'8 \break | % 8
  \stemUp e'4 \slurDashed \stemUp dis'8 ( \slurSolid \stemUp fis'8 )
  \stemUp e'2 | % 9
  \stemDown b'4 \stemUp fis'4 \stemDown b'4 \stemUp fis'4 |
  \barNumberCheck #10
  \stemUp e'8 \stemUp fis'8 \stemUp gis'8 \stemUp a'8 \stemUp gis'2 | % 11
  \stemDown cis''8 \stemDown cis''8 \stemDown cis''8 \stemDown cis''8
  \stemUp b'8 \stemUp b'8 \stemUp e'8 \stemUp gis'8 \break | % 12
  \stemUp fis'4 \stemUp e'4 \stemUp fis'8 \stemUp fis'8 r4 | % 13
  \stemUp gis'8 \stemUp a'8 \stemUp gis'8 \stemUp fis'8 \stemUp gis'8
  \stemUp a'8 \stemUp gis'8 \stemUp fis'8 | % 14
  \stemUp e'8 ( \stemUp fis'8 ) \stemUp gis'8 \stemUp a'8 \stemUp dis'4
  \stemUp fis'4 | % 15
  \stemUp e'2. r4 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Kris
  -- tus me -- ngun -- dang ki -- ta di ja -- mu -- an -- "Nya," du --
  duk se -- me -- "ja," lam -- bang per -- se -- ku -- \skip1 tu -- an
  ma -- kan\skip1 ro -- ti lam -- bang tu -- buh\skip1 Kris -- tus dan
  mi -- num ang -- gur lam -- bang da -- rah -- \skip1 "Nya." A --
  "gung," a -- gung pe -- ngor -- ban -- an -- "Nya," wu -- jud -- kan
  -- lah i -- tu da -- lam hi -- dup ki -- ta da -- lam ka -- "ta," da
  -- lam ak -- ta sa -- \skip1 ling meng -- a -- si -- "hi."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Kris
  -- tus me -- ngun -- dang ki -- ta di ja -- mu -- an -- "Nya," pa --
  ha -- mi ar -- ti ser -- ta ha -- yat -- i mak -- na -- "nya," bu --
  ka\skip1 ha -- ti sam -- bil wu -- jud -- kan te -- "kad," ma -- ri
  ber -- ja -- lan di -- ja -- lan sa -- lin "Nya." \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
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

