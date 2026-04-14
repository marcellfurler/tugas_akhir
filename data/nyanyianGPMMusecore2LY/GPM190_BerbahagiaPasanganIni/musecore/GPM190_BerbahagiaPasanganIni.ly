\version "2.24.4"
% automatically converted by musicxml2ly from D:/Materi/Semester 8/Skripsi2/tugas_akhir/data/nyanyianGPMMusecore2LY/GPM190_BerbahagiaPasanganIni/musecore/GPM190_BerbahagiaPasanganIni.mxl
\pointAndClickOff

\include "articulate.ly"

\header {
  title =  "GPM 190. Berbahagia Pasangan Ini"
  composer =  "P. J. Ferdinandus"
  encodingsoftware =  "MuseScore Studio 4.6.5"
  encodingdate =  "2026-04-12"
  source =  "https://musescore.com/user/40408317/scores/33295070"
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
  \tempo 4=80 r2 r8 \stemUp a8 \stemUp d'8 \stemUp e'8 | % 2
  \stemUp fis'4 \stemUp fis'4. \stemUp fis'8 \stemUp g'8 \stemUp b'8 | % 3
  \stemUp a'4 \stemUp a'2 \stemUp a'8 \stemUp a'8 | % 4
  \stemUp g'4 \stemDown b'4 \stemUp a'4 \stemUp g'4 \break | % 5
  \stemUp fis'2 r8 \stemUp a8 \stemUp d'8 \stemUp e'8 | % 6
  \stemUp fis'4 \stemUp fis'4. \stemUp fis'8 \stemUp g'8 \stemUp b'8 | % 7
  \stemUp a'4 \stemUp a'2 \stemUp a'8 \stemUp a'8 | % 8
  \stemUp g'4 \stemDown b'4 \stemUp a'4 \stemUp g'4 | % 9
  \stemUp fis'2. r4 | \barNumberCheck #10
  \stemUp g'4 \stemUp g'4 \stemDown b'4 \stemDown cis''4 \break | % 11
  \stemDown d''4 \stemUp a'4 \stemUp a'2 | % 12
  \stemUp a'4 \stemUp a'8 \stemUp a'8 \stemUp g'4. \stemUp g'8 | % 13
  \stemUp fis'2. r4 | % 14
  \stemUp g'4 \stemUp g'4 \stemDown b'4 \stemDown cis''4 | % 15
  \stemDown d''4 \stemUp a'4 \stemUp a'2 | % 16
  \stemUp a'4 \stemUp a'8 \stemUp a'8 \stemUp g'4 \stemUp e'4 \break | % 17
  \stemUp d'2 r2 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t Ber
  -- ba -- ha -- gi -- a pa -- sa -- ngan i -- "ni," Tu -- han Ye --
  sus ber -- ka -- "ti." Di -- da -- lam Ye -- sus ka -- mu se -- ti
  -- a "s'la" -- ma hi -- dup di du -- "nia." Bi -- na ru -- mah tang
  -- ga -- "mu," ta -- kut a -- kan Tu -- "han." Ta -- a -- ti pe --
  rin -- tah -- "Nya," ra -- jin -- lah ber -- do -- "a."
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t Da
  -- mai se -- jah -- "t'ra" Al -- lah lim -- pah -- kan da -- lam ru
  -- mah tang -- ga -- "mu." Ja -- di -- lah ber -- kat ba -- gi se --
  sa -- "ma," ja -- di ga -- ram dan te -- "rang." \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
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

