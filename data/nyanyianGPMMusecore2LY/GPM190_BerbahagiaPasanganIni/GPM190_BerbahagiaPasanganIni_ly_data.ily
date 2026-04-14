\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 190. Berbahagia Pasangan Ini"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "P. J. Ferdinandus"
    }
  }
}



gpmseratussembilanpuluh_d_notes_pdf = {
  \repeat volta 2 {
    \partial 2 r8 a8 d'8 e'8 | fis'4 fis'4. fis'8 g'8 b'8 | a'4 a'2 a'8 a'8 | g'4 b'4 a'4 g'4 | fis'2 \break 
    r8 a8 d'8 e'8 | fis'4 fis'4. fis'8 g'8 b'8 | a'4 a'2 a'8 a'8 | g'4 b'4 a'4 g'4 | fis'2. r4 | \break
    g'4 g'4 b'4 cis''4 | d''4 a'4 a'2 | a'4 a'8 a'8 g'4. g'8 | fis'2. r4 | \break
    g'4 g'4 b'4 cis''4 | d''4 a'4 a'2 | a'4 a'8 a'8 g'4 e'4 | d'2 \break
  }
}


gpmseratussembilanpuluh_d_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    \partial 2 r8 a8 d'8 e'8 | fis'4 fis'4. fis'8 g'8 b'8 | a'4 a'2 a'8 a'8 | g'4 b'4 a'4 g'4 | fis'2 \break 
    r8 a8 d'8 e'8 | fis'4 fis'4. fis'8 g'8 b'8 | a'4 a'2 a'8 a'8 | g'4 b'4 a'4 g'4 | fis'2. r4 | \break
    g'4 g'4 b'4 cis''4 | d''4 a'4 a'2 | a'4 a'8 a'8 g'4. g'8 | fis'2. r4 | \break
    g'4 g'4 b'4 cis''4 | d''4 a'4 a'2 | a'4 a'8 a'8 g'4 e'4 | d'2 \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    \partial 2 r8 a8 d'8 e'8 | fis'4 fis'4. fis'8 g'8 b'8 | a'4 a'2 a'8 a'8 | g'4 b'4 a'4 g'4 | fis'2 \break 
    r8 a8 d'8 e'8 | fis'4 fis'4. fis'8 g'8 b'8 | a'4 a'2 a'8 a'8 | g'4 b'4 a'4 g'4 | fis'2. r4 | \break
    g'4 g'4 b'4 cis''4 | d''4 a'4 a'2 | a'4 a'8 a'8 g'4. g'8 | fis'2. r4 | \break
    g'4 g'4 b'4 cis''4 | d''4 a'4 a'2 | a'4 a'8 a'8 g'4 e'4 | d'2 \break

}


gpmseratussembilanpuluh_d_notes =
#(if is-svg?
     #{\gpmseratussembilanpuluh_d_notes_svg#}
     #{\gpmseratussembilanpuluh_d_notes_pdf#})


gpmseratussembilanpuluh_d_music = {
  \time 4/4
  \key d \major
  \gpmseratussembilanpuluh_d_notes
  \bar "|."
}

gpmseratussembilanpuluh_d_music_solmisasi =
\solmisasiMusic \gpmseratussembilanpuluh_d_music


gpmseratussembilanpuluh_lyricOne = \lyricmode {
  Ber -- ba -- ha -- gi -- a pa -- sa -- ngan i -- ni, Tu -- han Ye -- sus ber -- ka -- ti. Di -- da -- lam Ye -- sus ka -- mu se -- ti -- a s'la -- ma hi -- dup di du -- nia.
}

gpmseratussembilanpuluh_lyricTwo = \lyricmode {
  Da -- mai se -- jah -- t'ra Al -- lah lim -- pah -- kan da -- lam ru -- mah tang -- ga -- mu. Ja -- di -- lah ber -- kat ba -- gi se -- sa -- ma, ja -- di ga -- ram dan te -- rang.
}

gpmseratussembilanpuluh_lyricReff = \lyricmode {
  Bi -- na ru -- mah tang -- ga -- mu, ta -- kut a -- kan Tu -- han. Ta -- a -- ti pe -- rin -- tah -- Nya, ra -- jin -- lah ber -- do -- a.
}

gpmseratussembilanpuluh_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
      \gpmseratussembilanpuluh_lyricOne
      \gpmseratussembilanpuluh_lyricReff
      \gpmseratussembilanpuluh_lyricTwo
      \gpmseratussembilanpuluh_lyricReff
      } >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmseratussembilanpuluh_lyricOne
           \gpmseratussembilanpuluh_lyricReff
         }

         \new Lyrics \lyricsto melodi {
           \gpmseratussembilanpuluh_lyricTwo
           \lyricsOff
           \gpmseratussembilanpuluh_lyricReff
         }

       >>
     #})

