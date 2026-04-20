\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM292_TuhankuAjarlahAkuBersabar/musecore/GPM292_TuhankuAjarlahAkuBersabar.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 292. Tuhanku, Ajarlah Aku Bersabar"
  composer =  "John F. Beay, 2009"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-20"
  source =  "https://musescore.com/user/40408317/scores/33497147"
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
  \tempo 4=80 \stemUp a8 \stemUp d'8 \stemUp fis'4 \stemUp e'8 \stemUp
  d'8 \stemUp b8 \stemUp d'8 | % 2
  \stemUp e'8 \stemUp d'8 \stemUp fis'4 \stemUp fis'2 | % 3
  \stemUp a'8 \stemUp b'8 \stemUp a'4 \stemUp fis'8 \stemUp d'8
  \stemUp b8 \stemUp d'8 | % 4
  \stemUp fis'8 \stemUp d'8 \stemUp e'4 \stemUp e'2 \break | % 5
  \stemUp a8 \stemUp d'8 \stemUp fis'4 \stemUp e'8 \stemUp d'8 \stemUp
  b8 \stemUp d'8 | % 6
  \stemUp e'8 \stemUp d'8 \stemUp fis'4 \stemUp fis'2 | % 7
  \stemUp a'8 \stemUp b'8 \stemUp a'4 \stemUp fis'8 \stemUp d'8
  \stemUp b8 \stemUp d'8 | % 8
  \stemUp fis'8 \stemUp d'8 \stemUp d'2. \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Tu
  -- han -- "ku," a -- jar -- lah a -- ku ber -- sa -- bar ha -- da --
  pi hi -- dup yang se -- ma -- kin ga -- "nas," a -- gar ka -- sih Tu
  -- han tak a -- kan pu -- dar da -- lam kar -- ya dan pe -- ngab --
  di -- an -- "ku."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Tu
  -- han -- ku ba -- nyak o -- rang men -- de -- ri -- ta ha -- da --
  pi hi -- dup yang se -- ma -- kin ga -- "nas," bi -- ar a -- ku tak
  hen -- ti me -- la -- ya -- ni me -- nga -- mal -- kan ka -- "sih,"
  ya Tu -- han -- "ku."
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

