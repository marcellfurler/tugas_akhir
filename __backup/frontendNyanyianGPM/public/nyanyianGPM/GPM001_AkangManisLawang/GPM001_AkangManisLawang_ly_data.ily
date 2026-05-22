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

gpmnolnolsatu_d_notes_pdf = {
  \repeat volta 3 {
    r4 fis'8 e'8 fis'4 g'4 | b'4 a'4. e'8 fis'8 g'8 | a'8 a'8 a'8 fis'8 b'4. fis'8 | a'4 g'2. | \break
    r4 e'4 e'4 fis'4 | a'4 g'2 \breathe a'8 a'8 | a'8 a'8 a'8 a'8 a'8 b'8 a'8 g'8 | fis'1* 4/4 | \break
    r4 fis'8 e'8 fis'4 g'4 | b'4 a'4. e'8 fis'8 g'8 | a'8 a'4. fis'8 g'4 a'8 | \phrasingSlurDashed b'2\( d'2\) \phrasingSlurSolid | \break

    % reef
    r4 b'4 cis'4. e'8 | d'4.( b'8) a'2 | r4 e'8 fis'8 g'8( fis'8) e'4 | fis'4.( a'8) a'2 | \break
    r4 b'4 cis'4. e'8 | d'4.( b'8) a'2 | r4 e'8 fis'8 a'8( fis'8) fis'4 | e'4.( d'8) d'2 |
  }
}

gpmnolnolsatu_d_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  r4 fis'8 e'8 fis'4 g'4 | b'4 a'4. e'8 fis'8 g'8 | a'8 a'8 a'8 fis'8 b'4. fis'8 | a'4 g'2. | \break
  r4 e'4 e'4 fis'4 | a'4 g'2 \breathe a'8 a'8 | a'8 a'8 a'8 a'8 a'8 b'8 a'8 g'8 | fis'1* 4/4 | \break
  r4 fis'8 e'8 fis'4 g'4 | b'4 a'4. e'8 fis'8 g'8 | a'8 a'4. fis'8 g'4 a'8 | \phrasingSlurDashed b'2\( d'2\) \phrasingSlurSolid | \break

  % reef
  r4 b'4 cis'4. e'8 | d'4.( b'8) a'2 | r4 e'8 fis'8 g'8( fis'8) e'4 | fis'4.( a'8) a'2 | \break
  r4 b'4 cis'4. e'8 | d'4.( b'8) a'2 | r4 e'8 fis'8 a'8( fis'8) fis'4 | e'4.( d'8) d'2 |

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  r4 fis'8 e'8 fis'4 g'4 | b'4 a'4. e'8 fis'8 g'8 | a'8 a'8 a'8 fis'8 b'4. fis'8 | a'4 g'2. | \break
  r4 e'4 e'4 fis'4 | a'4 g'2 \breathe a'8 a'8 | a'8 a'8 a'8 a'8 a'8 b'8 a'8 g'8 | fis'1* 4/4 | \break
  r4 fis'8 e'8 fis'4 g'4 | b'4 a'4. e'8 fis'8 g'8 | a'8 a'4. fis'8 g'4 a'8 | \phrasingSlurDashed b'2\( d'2\) \phrasingSlurSolid | \break

  % reef
  r4 b'4 cis'4. e'8 | d'4.( b'8) a'2 | r4 e'8 fis'8 g'8( fis'8) e'4 | fis'4.( a'8) a'2 | \break
  r4 b'4 cis'4. e'8 | d'4.( b'8) a'2 | r4 e'8 fis'8 a'8( fis'8) fis'4 | e'4.( d'8) d'2 |

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  r4 fis'8 e'8 fis'4 g'4 | b'4 a'4. e'8 fis'8 g'8 | a'8 a'8 a'8 fis'8 b'4. fis'8 | a'4 g'2. | \break
  r4 e'4 e'4 fis'4 | a'4 g'2 \breathe a'8 a'8 | a'8 a'8 a'8 a'8 a'8 b'8 a'8 g'8 | fis'1* 4/4 | \break
  r4 fis'8 e'8 fis'4 g'4 | b'4 a'4. e'8 fis'8 g'8 | a'8 a'4. fis'8 g'4 a'8 | \phrasingSlurDashed b'2\( d'2\) \phrasingSlurSolid | \break

  % reef
  r4 b'4 cis'4. e'8 | d'4.( b'8) a'2 | r4 e'8 fis'8 g'8( fis'8) e'4 | fis'4.( a'8) a'2 | \break
  r4 b'4 cis'4. e'8 | d'4.( b'8) a'2 | r4 e'8 fis'8 a'8( fis'8) fis'4 | e'4.( d'8) d'2 |
}

gpmnolnolsatu_d_notes =
#(if is-svg?
     #{ \gpmnolnolsatu_d_notes_svg #}
     #{ \gpmnolnolsatu_d_notes_pdf #})

gpmnolnolsatu_d_music = {
  \time 4/4
  \key d \major
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

gpmnolnolsatu_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmnolnolsatu_lyricOne
           \gpmnolnolsatu_lyricReff
           \gpmnolnolsatu_lyricTwo
           \gpmnolnolsatu_lyricReff
           \gpmnolnolsatu_lyricThree
           \gpmnolnolsatu_lyricReff
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmnolnolsatu_lyricOne
           \gpmnolnolsatu_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmnolnolsatu_lyricTwo
           % Trik agar lirik reff tidak tampil
           % tetapi alignment tetap rapi
           % Fungsi ada di GPM_Globals.ily
           \lyricsOff
           \gpmnolnolsatu_lyricReff
         }
         \new Lyrics \lyricsto melodi {
           \gpmnolnolsatu_lyricThree
           \lyricsOff
           \gpmnolnolsatu_lyricReff
         }
       >>
     #}
     )
