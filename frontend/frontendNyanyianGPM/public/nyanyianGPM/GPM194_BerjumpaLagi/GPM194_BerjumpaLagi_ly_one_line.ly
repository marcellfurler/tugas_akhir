% GPM001_AkangManisLawang_ly_one_line.ly
\version "2.24.4"

\include "GPM194_BerjumpaLagi.ly"

\layout {
  \oneLineLayoutForSVG
}

\paper {
  indent = 0
  bookTitleMarkup = ##f
  page-breaking = #ly:one-line-auto-height-breaking
}