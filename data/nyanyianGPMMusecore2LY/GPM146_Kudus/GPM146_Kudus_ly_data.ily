\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 146. Kudus"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = C, 2/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Nus Tomatala, 2008"
    }
  }
}



gpmseratusempatenam_c_notes_pdf = {
  \repeat volta 3 {
    \partial 4 r8 g'8 | g'4. g'8 | g'4. c''8 | a'8 f'8 g'8 a'8 | a'8 g'8 \break 
    r8 e'8 | g'8 g'8 r4 | g'8 g'4 g'8 | f'8 f'8 f'8 f'8 | g'2 | \break
    f'8 f'8 f'8 f'8 | a'8 a'8 a'4 | e'8 e'8 e'8 e'8 | g'8 g'8 g'4 | \break
    g'4 a'8 a'8 | e'4 ( d'4) | c'4 r4 \break
  }
}


gpmseratusempatenam_c_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    \partial 4 r8 g'8 | g'4. g'8 | g'4. c''8 | a'8 f'8 g'8 a'8 | a'8 g'8 \break 
    r8 e'8 | g'8 g'8 r4 | g'8 g'4 g'8 | f'8 f'8 f'8 f'8 | g'2 | \break
    f'8 f'8 f'8 f'8 | a'8 a'8 a'4 | e'8 e'8 e'8 e'8 | g'8 g'8 g'4 | \break
    g'4 a'8 a'8 | e'4 ( d'4) | c'4 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    \partial 4 r8 g'8 | g'4. g'8 | g'4. c''8 | a'8 f'8 g'8 a'8 | a'8 g'8 \break 
    r8 e'8 | g'8 g'8 r4 | g'8 g'4 g'8 | f'8 f'8 f'8 f'8 | g'2 | \break
    f'8 f'8 f'8 f'8 | a'8 a'8 a'4 | e'8 e'8 e'8 e'8 | g'8 g'8 g'4 | \break
    g'4 a'8 a'8 | e'4 ( d'4) | c'4 r4 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 3"
    \partial 4 r8 g'8 | g'4. g'8 | g'4. c''8 | a'8 f'8 g'8 a'8 | a'8 g'8 \break 
    r8 e'8 | g'8 g'8 r4 | g'8 g'4 g'8 | f'8 f'8 f'8 f'8 | g'2 | \break
    f'8 f'8 f'8 f'8 | a'8 a'8 a'4 | e'8 e'8 e'8 e'8 | g'8 g'8 g'4 | \break
    g'4 a'8 a'8 | e'4 ( d'4) | c'4 r4 \break

}


gpmseratusempatenam_c_notes =
#(if is-svg?
     #{\gpmseratusempatenam_c_notes_svg#}
     #{\gpmseratusempatenam_c_notes_pdf#})


gpmseratusempatenam_c_music = {
  \time 2/4
  \key c \major
  \gpmseratusempatenam_c_notes
  \bar "|."
}

gpmseratusempatenam_c_music_solmisasi =
\solmisasiMusic \gpmseratusempatenam_c_music


gpmseratusempatenam_lyricOne = \lyricmode {
  Ku -- dus, ku -- dus, ku -- dus -- lah g're -- ja Tu -- han yang hi -- dup, hi -- dup per -- se -- ku -- tu -- an -- Nya. Ye -- sus di -- be -- ri -- ta -- kan di -- te -- ngah te -- ngah du -- nia, oh Ha -- le -- lu -- ya.
}

gpmseratusempatenam_lyricTwo = \lyricmode {
  A -- yo, ba -- ngun ber -- bak -- ti ba -- gi Tu -- han dan li -- hat sung -- guh ba -- nyak tu -- ai -- an -- nya. Ba -- wa pa -- da rah -- mat -- Nya pas -- ti di -- se -- la -- mat -- kan, oh Ha -- le -- lu ya.
}

gpmseratusempatenam_lyricThree = \lyricmode {
  Bi -- ar ku -- dus, ku -- dus -- lah u -- mat Al -- lah di bu -- mi Ye -- sus pe -- nun -- tun u -- mat -- Nya. I -- ngat a -- da jan -- ji -- Nya un -- tuk hi -- dup yang ke -- kal, oh Ha -- le -- lu -- ya.
}

gpmseratusempatenam_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
      \gpmseratusempatenam_lyricOne
      \gpmseratusempatenam_lyricTwo
      \gpmseratusempatenam_lyricThree
      } >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratusempatenam_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratusempatenam_lyricTwo
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratusempatenam_lyricThree
         }

       >>
     #})

