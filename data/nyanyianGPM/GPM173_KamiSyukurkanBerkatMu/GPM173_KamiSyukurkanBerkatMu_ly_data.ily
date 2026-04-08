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

gpmseratustujuhtiga_a_notes = {
  \key a \major
  \relative a'
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

    % Baris pertama
    cis4 cis4 cis | e4 e4 e4 | a2. | a2 r4 | 
    cis4 b4 a4 | a4 gis4 fis4 | d2. d2 r4 | \break
    b4 b4 cis4 | d4 e4 fis4 | gis2. | gis2. | 
    e4 e4 fis4 | gis4 a4 b4 | \once \override Tie.stencil = ##f e,2.~ (| e2) r4 | \break
    cis4 cis4 cis | e4 e4 e4 | a2. | a2 r4 | 
    e4 e4 e4 | e4 \slurDashed (fis4 gis4) \slurSolid | \once \override Tie.stencil = ##f fis2.~ (| fis2) r4 \break
    fis4 d4 fis4 | a4 gis4 fis4 | e2. | cis'2 r4 | 
    b4 fis4 a4 | a2 gis4 | a2 r4 | \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         ; else/defaulte
         (empty-music)
         )
  }
}

gpmseratustujuhtiga_a_music = {
  \time 3/4
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
    Ka -- mi tak mam -- pu b'ri gan -- ti mem -- ba -- las ka -- sih -- Mu.
    Ha -- nya -- lah ung -- ka -- pan ha -- ti mu -- lia -- kan ka -- sih -- Mu.
}

gpmseratustujuhtiga_lyricTwo = \lyricmode {
    Ka -- sih -- Mu ba -- gai men -- ta -- ri ber -- si -- nar ma -- suk di ha -- ti.
    Tak ha -- rap -- kan a -- da gan -- ti ma -- lah Kau b'ri -- kan le -- bih.
    Ye -- sus, Kau pu -- ja -- an ha -- ti, Kau Ma -- ha \set ignoreMelismata = ##t mu -- rah \set ignoreMelismata = ##f dan  baik.
    Pe -- ngor -- ba -- nan -- Mu se -- ja -- ti, ke -- me -- na -- ngan ka -- mi.
}

gpmseratustujuhtiga_lyricThree = \lyricmode {
    Bi -- ar -- pun maut di -- ha -- da -- pi ti -- a -- da ku -- rang ka -- sih -- Mu.
    A -- sal me -- ya -- kin -- kan jan -- ji yang Kau tak -- kan ing -- ka -- ri.
    Bah -- wa Ye -- sus da -- tang nan -- ti un -- tuk \set ignoreMelismata = ##t ke -- du -- a \set ignoreMelismata = ##f  ka -- li,
    me -- ngang -- kat o -- rang per -- ca -- ya se -- su -- ai fir -- man -- Mu.
}
