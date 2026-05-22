% GPM001_AkangManisLawang_ly_data.ily
\version "2.24.4"

\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 158. Tuhan adalah Gembalaku"

  poet = \markup {
    \pad-x #1
    % override baseline-skip untuk column
    % agar lebih rapat setiap barisnya
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = E, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Bartje Istia"
      ", 2007"
    }
  }
}

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratuslimadelapan_e_notes_pdf = {
  \repeat volta 3 {
    e'8 e'8 e'8 gis'8 fis'8 e'8 fis'8 gis'8 | e'2 r8 e'8 dis'8 e'8 | \break
    fis'4 fis'4. fis'8 e'8 fis'8 | gis'2 r8 e'8 fis'8 e'8 | \break
    cis'8 b8 cis'8 e'8 a'4. cis'8 | b8 gis'8 gis'8 fis'8 e'4 \breathe gis'8 gis'8 | \break
    gis'4 fis'4 gis'8 fis'8 e'8 fis'8 | gis'2 r8 e'8 fis'8 e'8 | \break
    cis'8 cis'4 e'8 dis'8 e'8 fis'8 dis'8 | e'2. r4 | \break
  }
}

gpmseratuslimadelapan_e_notes_svg = {
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
  e'8 e'8 e'8 gis'8 fis'8 e'8 fis'8 gis'8 | e'2 r8 e'8 dis'8 e'8 | \break
  fis'4 fis'4. fis'8 e'8 fis'8 | gis'2 r8 e'8 fis'8 e'8 | \break
  cis'8 b8 cis'8 e'8 a'4. cis'8 | b8 gis'8 gis'8 fis'8 e'4 \breathe gis'8 gis'8 | \break
  gis'4 fis'4 gis'8 fis'8 e'8 fis'8 | gis'2 r8 e'8 fis'8 e'8 | \break
  cis'8 cis'4 e'8 dis'8 e'8 fis'8 dis'8 | e'2. r4 | \break
  
  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
  e'8 e'8 e'8 gis'8 fis'8 e'8 fis'8 gis'8 | e'2 r8 e'8 dis'8 e'8 | \break
  fis'4 fis'4. fis'8 e'8 fis'8 | gis'2 r8 e'8 fis'8 e'8 | \break
  cis'8 b8 cis'8 e'8 a'4. cis'8 | b8 gis'8 gis'8 fis'8 e'4 \breathe gis'8 gis'8 | \break
  gis'4 fis'4 gis'8 fis'8 e'8 fis'8 | gis'2 r8 e'8 fis'8 e'8 | \break
  cis'8 cis'4 e'8 dis'8 e'8 fis'8 dis'8 | e'2. r4 | \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
  e'8 e'8 e'8 gis'8 fis'8 e'8 fis'8 gis'8 | e'2 r8 e'8 dis'8 e'8 | \break
  fis'4 fis'4. fis'8 e'8 fis'8 | gis'2 r8 e'8 fis'8 e'8 | \break
  cis'8 b8 cis'8 e'8 a'4. cis'8 | b8 gis'8 gis'8 fis'8 e'4 \breathe gis'8 gis'8 | \break
  gis'4 fis'4 gis'8 fis'8 e'8 fis'8 | gis'2 r8 e'8 fis'8 e'8 | \break
  cis'8 cis'4 e'8 dis'8 e'8 fis'8 dis'8 | e'2. r4 | \break
  
}

gpmseratuslimadelapan_e_notes =
#(if is-svg?
     #{ \gpmseratuslimadelapan_e_notes_svg #}
     #{ \gpmseratuslimadelapan_e_notes_pdf #})

gpmseratuslimadelapan_e_music = {
  \time 4/4
  \key e \major
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratuslimadelapan_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratuslimadelapan_e_music_solmisasi = \solmisasiMusic \gpmseratuslimadelapan_e_music

gpmseratuslimadelapan_lyricOne = \lyricmode {
    Tu -- han a -- da -- lah gem -- ba -- la -- ku, a -- ku dom -- ba -- Nya te -- nang te -- duh
    Ke pa -- dang hi -- jau dan se -- gar, ke a -- ir yang se -- juk, ku di tun -- tun o -- leh cin -- ta -- Nya.
    A -- ku per -- ca -- ya se -- la -- ma- la -- ma -- nya.
}

gpmseratuslimadelapan_lyricTwo = \lyricmode {
    Tu -- han a -- da -- lah pe -- ri -- sai -- ku, da -- lam go -- da -- an te -- tap te -- guh.
    Hi -- lang se -- mua ke -- luh ke -- sah, ti -- a -- da ge -- li -- sah, ku -- ber -- ja -- lan da -- lam ka -- sih -- Nya.
    A -- ku per -- ca -- ya se -- la -- ma- la -- ma -- nya.
}
gpmseratuslimadelapan_lyricThree = \lyricmode {
    Tu -- han a -- da -- lah ca -- ha -- ya -- ku, di -- sa -- at ka -- but hi -- tam ke -- lam.
    Fir -- man -- Nya -- lah pe -- li -- ta -- ku, a -- da su -- ka -- ci -- ta, ku di -- ja -- ga o -- leh sa -- yang -- nya.
    A -- ku per -- ca -- ya se -- la -- ma- la -- ma -- nya.
}


gpmseratuslimadelapan_lyricsAll = 
#(if is-svg?
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimadelapan_lyricOne
           \gpmseratuslimadelapan_lyricTwo
           \gpmseratuslimadelapan_lyricThree
         }
       >>
     #}
     ; else
     #{
       <<
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimadelapan_lyricOne
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimadelapan_lyricTwo
         }
         \new Lyrics \lyricsto melodi {
           \gpmseratuslimadelapan_lyricThree
         }
       >>
     #}
     )