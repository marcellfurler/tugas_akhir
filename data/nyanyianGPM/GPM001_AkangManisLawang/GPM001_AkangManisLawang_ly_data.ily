% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 1. Akang Manis Lawang"
  subtitle = "Berdasarkan Mazmur 133 : 1, 150 : 1 - 6"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
      "Irama Tifa Maluku"
      \vspace #1
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela"
      ", 2010"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmnolnolsatu_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 3 {
    % Trik untuk menampilkan bait dengan section
    % pada SVG (mode unfolded)
    #(if is-svg?
         #{
           \volta 1 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 1"
           }
           \volta 2 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 2"
           }
           \volta 3 {
             s1*0
             \tweak X-offset #1
             \sectionLabel \markup\smaller\bold "Bait 3"
           }
         #}
         ; else/defaulte
         (empty-music)
         )

    r4 fis8 e8 fis4 g4 | b4 a4. e8 fis8 g8 | a8 a8 a8 fis8 b4. fis8 | a4 g2. | \break
    r4 e4 e4 fis4 | a4 g2 \breathe a8 a8 | a8 a8 a8 a8 a8 b8 a8 g8 | fis1* 4/4 | \break
    r4 fis8 e8 fis4 g4 | b4 a4. e8 fis8 g8 | a8 a4. fis8 g4 a8 | \phrasingSlurDashed b2\( d2\) \phrasingSlurSolid | \break

    % reef
    r4 b4 cis4. e8 | d4.( b8) a2 | r4 e8 fis8 g8 (fis8) e4 | fis4.( a8) a2 | \break
    r4 b4 cis4. e8 | d4.( b8) a2 | r4 e8 fis8 a8 (fis8 ) fis4 | e4.( d8) d2 |

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmnolnolsatu_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmnolnolsatu_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmnolnolsatu_d_music_solmisasi = \solmisasiMusic \gpmnolnolsatu_d_music

gpmnolnolsatu_lyricOne = \lyricmode {
  A -- kang ma -- nis ka -- wang, ka -- lo ka -- tong sa -- mu -- a su ba -- kum -- pul.
  Ka -- tong ma -- nya -- nyi sa -- ma- sa -- ma pu -- ji Te -- te Ma -- nis e.
  To -- ki ti -- fa den -- dang, la ra -- me- ra -- me ang -- ka su -- a -- \tweak self-alignment-X #LEFT ra.
}

gpmnolnolsatu_lyricTwo = \lyricmode {
  A -- yo ba -- su -- da -- ra ka -- tong sa -- mu -- a ba -- ku gan -- deng ta -- ngan.
  Ka -- tong ba -- den -- dang mu -- li -- a -- kan ka -- sih A -- ma yang ke -- kal.
  To -- ki to -- leng -- to -- leng, ti -- op ta -- hu -- ri ang -- ka pu -- ji -- \tweak self-alignment-X #LEFT an.
}

gpmnolnolsatu_lyricThree = \lyricmode {
  A -- yo lo -- ko leng -- so ka -- tong ma -- na -- ri de -- ngan su -- ka -- ri -- a.
  Ka -- tong som -- ba -- yang, ja -- ga hi -- dop o -- rang ba -- su -- da -- ra e.
  To -- ki to -- to -- bu -- ang, deng ti -- op su -- ling ang -- ka syu -- kur. __ _
}

gpmnolnolsatu_lyricReff = \lyricmode {
  Ka -- tong bar -- su -- ka som -- ba Te __ te Ma -- nis.
  Ka -- tong bar -- su -- ka som -- ba Te __ te Ma -- nis.
}
