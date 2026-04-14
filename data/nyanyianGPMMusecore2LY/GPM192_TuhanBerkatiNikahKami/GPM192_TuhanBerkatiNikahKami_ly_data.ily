\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 192. Tuhan Berkati Nikah Kami"
  subtitle = "Berdasarkan Matius 19 : 6"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = E, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Christian I. Tamaela, 2010"
    }
  }
}



gpmseratussembilandua_e_notes_pdf = {
  \repeat volta 2 {
    gis'4 gis'8 gis'8 fis'8 e'8 gis'8 a'8 | b'4 b'4 a'8 gis'4. | \break
    a'8 a'8 a'8 gis'8 fis'8 fis'8 gis'8 a'8 | gis'2. r4 | \break
    gis'4 gis'8 gis'8 gis'8 gis'8 a'8 b'8 | cis''4 cis''8 ( b'8) a'4 r8 a'8 | \break
    gis'8 gis'4. fis'8 ( e'8) fis'8 ( gis'8) | e'4 e'2 r4 \break
  }
}


gpmseratussembilandua_e_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    gis'4 gis'8 gis'8 fis'8 e'8 gis'8 a'8 | b'4 b'4 a'8 gis'4. | \break
    a'8 a'8 a'8 gis'8 fis'8 fis'8 gis'8 a'8 | gis'2. r4 | \break
    gis'4 gis'8 gis'8 gis'8 gis'8 a'8 b'8 | cis''4 cis''8 ( b'8) a'4 r8 a'8 | \break
    gis'8 gis'4. fis'8 ( e'8) fis'8 ( gis'8) | e'4 e'2 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    gis'4 gis'8 gis'8 fis'8 e'8 gis'8 a'8 | b'4 b'4 a'8 gis'4. | \break
    a'8 a'8 a'8 gis'8 fis'8 fis'8 gis'8 a'8 | gis'2. r4 | \break
    gis'4 gis'8 gis'8 gis'8 gis'8 a'8 b'8 | cis''4 cis''8 ( b'8) a'4 r8 a'8 | \break
    gis'8 gis'4. fis'8 ( e'8) fis'8 ( gis'8) | e'4 e'2 r4 \break

}


gpmseratussembilandua_e_notes =
#(if is-svg?
     #{\gpmseratussembilandua_e_notes_svg#}
     #{\gpmseratussembilandua_e_notes_pdf#})


gpmseratussembilandua_e_music = {
  \time 4/4
  \key e \major
  \gpmseratussembilandua_e_notes
  \bar "|."
}

gpmseratussembilandua_e_music_solmisasi =
\solmisasiMusic \gpmseratussembilandua_e_music


gpmseratussembilandua_lyricOne = \lyricmode {
  Tu -- han ber -- ka -- ti ni -- kah ka -- mi i -- ni, a -- gar ja -- ngan ka -- mi ter -- se -- sat. I -- kat -- kan ka -- mi de -- ngan ka -- sih -- Mu, se -- la -- ma hi -- dup ka -- mi.
}

gpmseratussembilandua_lyricTwo = \lyricmode {
  Tu -- han lin -- dun -- i ni -- kah ka -- mi i -- ni, da -- lam ke -- da -- mai -- an a -- ba -- di. Sa -- tu -- kan ha -- ti ka -- mi u -- mat -- Mu, dan s'la -- li ba -- ha -- gi -- a.
}

gpmseratussembilandua_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
\gpmseratussembilandua_lyricOne
\gpmseratussembilandua_lyricTwo
} >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratussembilandua_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratussembilandua_lyricTwo
         }

       >>
     #})

