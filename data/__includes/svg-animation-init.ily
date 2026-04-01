% svg-animation-init.ily

%% Includes from bwv-zeug
\include "tie-attributes.ily"
\include "highlight-bars.ily"
\include "fermata.ily"

simpleHighlighting = \layout {
  \context {
    \Staff
    \consists #Simple_highlight_engraver
    \consists Staff_highlight_engraver
    \consists #Bar_timing_collector
  }
  \context {
    \SolmisasiStaff
    \consists #Simple_highlight_engraver
    \consists Staff_highlight_engraver
    \consists #Bar_timing_collector
  }
  \context {
    \Lyrics
    \remove #Simple_highlight_engraver
    \remove Staff_highlight_engraver
    \remove #Bar_timing_collector
  }
  \context {
    \Score
    \override StaffHighlight.after-line-breaking = #add-data-bar-to-highlight
  }
}

presentationPageLayoutForSVG = \layout {
  % Apply simple highlighting only for SVG output
  #(if is-svg? simpleHighlighting)
}

oneLineLayoutForSVG = \layout {
  \context {
    \Voice
    \consists \Tie_grob_engraver
    \consists #simple-fermata-data-engraver
  }
  \context {
    \SolmisasiVoice
    \consists \Tie_grob_engraver
    \consists #simple-fermata-data-engraver
  }
}