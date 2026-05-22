\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM270_BersukacitalahDalamPengharapan/musecore/GPM270_BersukacitalahDalamPengharapan.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "Untitled score"
  composer =  "Nus Tomatala, 2008"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33291362"
  subtitle =  "Roma 12 : 12"
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
  \clef "treble" \numericTimeSignature\time 4/4 \key c \major | % 1
  \tempo 4=80 r2 r8 \stemUp e'8 [ \stemUp e'8 \stemUp f'8 ] | % 2
  \stemUp g'8 [ \stemUp g'8 \stemUp g'8 \stemUp g'8 ] \stemUp f'8 [
  \stemUp e'8 \stemUp d'8 \stemUp f'8 ] | % 3
  \stemUp e'2 r8 \stemUp c'8 [ \stemUp c''8 \stemUp b'8 ] \break | % 4
  \stemUp a'8 [ \stemUp a'8 \stemUp a'8 \stemUp a'8 ] \stemUp g'8 [
  \stemUp g'8 \stemUp a'8 \stemUp c''8 ] | % 5
  \stemUp g'2 r8 \stemUp c'8 [ \stemUp c'8 \stemUp c'8 ] | % 6
  \stemUp f'8 [ \stemUp a'8 \stemUp a'8 \stemUp a'8 ] \stemUp b'8 [
  \stemUp a'8 ~ \stemUp a'8 \stemUp g'8 ] | % 7
  \stemUp a'2 r8 \stemUp c'8 [ \stemUp c'8 \stemUp c'8 ] \break | % 8
  \stemUp f'8 [ \stemUp a'8 \stemUp a'8 \stemUp a'8 ] \stemUp b'8 [
  \stemUp a'8 ~ \stemUp a'8 \stemUp b'8 ] | % 9
  \stemDown c''2 r2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ber
  -- su -- ka -- ci -- ta -- lah da -- lam peng -- ha -- ra -- "pan."
  Te -- tap ber -- sa -- bar -- lah da -- lam ke -- se -- sak -- an
  dan ber -- te -- kun -- lah ju -- ga da -- lam\skip1 do -- a Nya --
  ta -- kan -- lah i -- man ke -- pa -- da\skip1 Tu -- "han."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Sa
  -- ling mem -- ban -- tu -- lah da -- lam ke -- ku -- rang -- "an."
  U -- sa -- ha -- kan "s'la" -- lu be -- ri -- kan tum -- pang -- an
  Ber -- ka -- ti o -- rang yang su -- sah -- kan\skip1 ki -- ta Ba --
  las yang ja -- hat de -- ngan ke -- ba\skip1 i -- "kan."
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

