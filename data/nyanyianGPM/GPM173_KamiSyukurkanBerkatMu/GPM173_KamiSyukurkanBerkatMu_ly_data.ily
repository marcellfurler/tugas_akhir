% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 173. Kami Syukurkan Berkat Mu"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = A, 3/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Nus Tomatala"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratustujuhtiga_a_notes_pdf = {
  \repeat volta 3 {
    % Baris pertama
    cis''4 cis''4 cis''4 | e''4 e''4 e''4 | a''2. | a''2 r4 | 
    cis'''4 b''4 a''4 | a''4 gis''4 fis''4 | d''2. d''2 r4 | \break
    b'4 b'4 cis''4 | d''4 e''4 fis''4 | gis''2. | gis''2. | 
    e''4 e''4 fis''4 | gis''4 a''4 b''4 | \once \override Tie.stencil = ##f e''2.~ ( | e''2) r4 | \break
    cis''4 cis''4 cis''4 | e''4 e''4 e''4 | a''2. | a''2 r4 | 
    e''4 e''4 e''4 | e''4 \phrasingSlurDashed fis''4\( gis''4\) \phrasingSlurSolid | \phrasingSlurDashed fis''2.\( | fis''2\)\phrasingSlurSolid r4 \break
    fis''4 d''4 fis''4 | a''4 gis''4 fis''4 | e''2. | cis'''2 r4 | 
    b''4 fis''4 a''4 | a''2 gis''4 | a''2 r4 | \break
  }
}

gpmseratustujuhtiga_a_notes_svg = {
  \section 
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  cis''4 cis''4 cis''4 | e''4 e''4 e''4 | a''2. | a''2 r4 | 
  cis'''4 b''4 a''4 | a''4 gis''4 fis''4 | d''2. d''2 r4 | \break
  b'4 b'4 cis''4 | d''4 e''4 fis''4 | gis''2. | gis''2. | 
  e''4 e''4 fis''4 | gis''4 a''4 b''4 | \once \override Tie.stencil = ##f e''2.~ ( | e''2) r4 | \break
  cis''4 cis''4 cis''4 | e''4 e''4 e''4 | a''2. | a''2 r4 | 
  e''4 e''4 e''4 | e''4 \phrasingSlurDashed fis''4\( gis''4\) \phrasingSlurSolid | \phrasingSlurDashed fis''2.\( | fis''2\)\phrasingSlurSolid r4 \break
  fis''4 d''4 fis''4 | a''4 gis''4 fis''4 | e''2. | cis'''2 r4 | 
  b''4 fis''4 a''4 | a''2 gis''4 | a''2 r4 | \break

  \section 
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  cis''4 cis''4 cis''4 | e''4 e''4 e''4 | a''2. | a''2 r4 | 
  cis'''4 b''4 a''4 | a''4 gis''4 fis''4 | d''2. d''2 r4 | \break
  b'4 b'4 cis''4 | d''4 e''4 fis''4 | gis''2. | gis''2. | 
  e''4 e''4 fis''4 | gis''4 a''4 b''4 | \once \override Tie.stencil = ##f e''2.~ ( | e''2) r4 | \break
  cis''4 cis''4 cis''4 | e''4 e''4 e''4 | a''2. | a''2 r4 | 
  e''4 e''4 e''4 | e''4 \phrasingSlurDashed fis''4\( gis''4\) \phrasingSlurSolid | \phrasingSlurDashed fis''2.\( | fis''2\)\phrasingSlurSolid r4 \break
  fis''4 d''4 fis''4 | a''4 gis''4 fis''4 | e''2. | cis'''2 r4 | 
  b''4 fis''4 a''4 | a''2 gis''4 | a''2 r4 | \break

  \section 
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  cis''4 cis''4 cis''4 | e''4 e''4 e''4 | a''2. | a''2 r4 | 
  cis'''4 b''4 a''4 | a''4 gis''4 fis''4 | d''2. d''2 r4 | \break
  b'4 b'4 cis''4 | d''4 e''4 fis''4 | gis''2. | gis''2. | 
  e''4 e''4 fis''4 | gis''4 a''4 b''4 | \once \override Tie.stencil = ##f e''2.~ ( | e''2) r4 | \break
  cis''4 cis''4 cis''4 | e''4 e''4 e''4 | a''2. | a''2 r4 | 
  e''4 e''4 e''4 | e''4 \phrasingSlurDashed fis''4\( gis''4\) \phrasingSlurSolid | \phrasingSlurDashed fis''2.\( | fis''2\)\phrasingSlurSolid r4 \break
  fis''4 d''4 fis''4 | a''4 gis''4 fis''4 | e''2. | cis'''2 r4 | 
  b''4 fis''4 a''4 | a''2 gis''4 | a''2 r4 | \break
  
}

gpmseratustujuhtiga_a_notes =
#(if is-svg?
     #{ \gpmseratustujuhtiga_a_notes_svg #}
     #{ \gpmseratustujuhtiga_a_notes_pdf #})

gpmseratustujuhtiga_a_music = {
  \time 3/4
  \key a \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratustujuhtiga_a_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratustujuhtiga_a_music_solmisasi = \solmisasiMusic \gpmseratustujuhtiga_a_music

gpmseratustujuhtiga_lyricOne = \lyricmode {
    Ka -- mi syu -- kur -- kan ber -- kat -- Mu yang me -- nga -- lir tia -- da ak -- khir.
    Ba -- gai -- kan de -- ras -- nya su -- ngai bang -- kit -- kan gi -- rang ha -- ti.
    Ka -- mi tak mam -- pu b'ri gan -- ti mem -- ba -- las ka -- sih -- _ Mu.
    _ Ha -- nya -- lah ung -- ka -- pan ha -- ti mu -- lia -- kan ka -- sih -- Mu. 
}

gpmseratustujuhtiga_lyricTwo = \lyricmode {
    Ka -- sih -- Mu ba -- gai men -- ta -- ri ber -- si -- nar ma -- suk di ha -- ti.
    Tak ha -- rap -- kan a -- da gan -- ti ma -- lah Kau b'ri -- kan le -- bih.
    Ye -- sus, Kau pu -- ja -- an ha -- ti, Kau Ma -- ha mu -- rah dan  ba -- ik.
    Pe -- ngor -- ba -- nan -- Mu se -- ja -- ti, ke -- me -- na -- ngan ka -- mi.
}

gpmseratustujuhtiga_lyricThree = \lyricmode {
    Bi -- ar -- pun maut di -- ha -- da -- pi ti -- a -- da ku -- rang ka -- sih -- Mu.
    A -- sal me -- ya -- kin -- kan jan -- ji yang Kau tak -- kan ing -- ka -- ri.
    Bah -- wa Ye -- sus da -- tang nan -- ti un -- tuk ke -- du -- a  ka -- li,
    _ me -- ngang -- kat o -- rang per -- ca -- ya se -- su -- ai fir -- man -- Mu.
}

gpmseratustujuhtiga_lyricsAll =
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratustujuhtiga_lyricOne
           \gpmseratustujuhtiga_lyricTwo
           \gpmseratustujuhtiga_lyricThree
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratustujuhtiga_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratustujuhtiga_lyricTwo
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratustujuhtiga_lyricThree
         }
       >>
     #}
     )
