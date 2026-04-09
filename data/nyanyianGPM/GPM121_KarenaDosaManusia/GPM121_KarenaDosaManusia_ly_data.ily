% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 121. Karena Dosa Manusia"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = B, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 95"
      }

    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Meliand R. G. Parera"
      ", 2009"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusdusatu_b_notes = {
  \key b \major
  {
    % Trik untuk menampilkan bait dengan section
    % pada SVG (mode unfolded)
    #(if is-svg?
         #{
           
            s1*0
            \tweak X-offset #1
            \sectionLabel \markup\smaller\bold "Bait 1"
          
        
         #}
         ; else/defaulte
         (empty-music)
         )

    \partial 4 dis''4 | gis''2 b''4 | ais''2 fisis''4 | gis''2 e''4 | dis''2 \breathe dis''4 | e''2 dis''4 | cis''2 cisis''4 | \once \override Tie.stencil = ##f dis''2.~ (| dis''4) r4  \break
    dis''4 | cis''2 dis''4 | e''2 cis''4 | dis''2 cis''4 | b'2 \breathe ais'4 | gis'2 ais'4 | b'2 gis'4 | \once \override Tie.stencil = ##f ais'2.~ (| ais'4) r4 \break
    dis''4 | gis''2 b''4 | ais''2 fisis''4 | gis''2 e''4 | dis''2 \breathe dis''4 | e''2 dis''4 | cis''2 cisis''4 | \once \override Tie.stencil = ##f dis''2.~ (| dis''4) r4  \break
    dis''8 dis''8 | cis''2 dis''4 | e''2 cis''4 | dis''2 cis''4 | b'2 \breathe b'4 | ais'2 cis''4 | b'2 ais'4 | \once \override Tie.stencil = ##f gis'2.~ (| gis'4) r4 \break

    gis'4 | fis'2 gis'4 | ais'2 cis''4 | b'2 cis''4 | dis''2 \breathe dis''4 | e''2 gis''4 | b''2 gis''4 | \once \override Tie.stencil = ##f fisis''2.~ (| fisis''4) r4 \break
    dis''4 | gis''2 b''4 | ais''2 fisis''4 | gis''2 e''4 | dis''2 \breathe dis''4 | e''2 dis''4 | cis''2 e''4 | \once \override Tie.stencil = ##f dis''2.~ (| dis''4) r4 \break 
    dis''4 | cis''2 dis''4 | e''2 fis''4 | dis''2 cis''4 | b'2 \breathe b''4 | ais''2 gis''4 | fisis''2 ais''4 | \once \override Tie.stencil = ##f gis''2.~ (| gis''4) r4 

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratusdusatu_b_music = {
  \time 3/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusdusatu_b_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusdusatu_b_music_solmisasi = \solmisasiMusic \gpmseratusdusatu_b_music

gpmseratusdusatu_lyricOne = \lyricmode {
    Kar -- 'na do -- sa ma -- nu -- si -- a, Ye -- sus men -- de -- ri -- ta.
    Tu -- buh su -- ci 'tak ber -- do -- sa di cam -- buk di -- sik -- sa.
    Di -- a -- tas bu -- kit Kal -- va -- ri ter -- gan -- tung di sa -- lib,
    un -- tuk me -- ne -- bus do -- sa ki -- ta u -- mat yang ber -- ce -- la.

    Ye -- sus t'lah ma -- ti ba -- gi -- ku, me -- ne -- bus do -- sa -- ku.
    Ku s'rah -- kan se -- g'nap hi -- dup -- ku ke -- da -- lam ta -- ngan -- Mu.
    Oh Ye -- sus, Kau pe -- ne -- bus -- ku, Kau Ju -- ru S'la -- mat -- ku.
}
