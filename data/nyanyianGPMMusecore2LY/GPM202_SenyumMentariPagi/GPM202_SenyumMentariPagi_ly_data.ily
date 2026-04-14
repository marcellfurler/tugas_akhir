\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 202. Senyum Mentari Pagi"

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
      \caps "Nus Tomatala"
      ", 2008"
    }
  }
}



gpmduanoldua_d_notes_pdf = {
  \repeat volta 2 {
    \partial 4 a4 | fis'4 fis'8 fis'8 e'4 fis'4 | a'2.  \break
    d''4 | b'4 cis''8 d''8 a'4 fis'4 | e'2. \break
    fis'4 | d'4 d'8 e'8 fis'4 b'4 | g'2 r4 \break
    b'8 b'8 | a'8 fis'1* 5/8 e'8 fis'8 | e'8 d'4. r4 \break
    d''8 d''8 | cis''2 g'4. b'8 | b'8 ( a'8) a'2 \break
    a'8 a'8 | g'4 b'4 d''4 b'4 | a'4 ( b'4 cis''4) \break
    fis'8 e'8 | d'2 a'4. fis'8 | g'8 ( a'8 ) b'2 \break
    b'8 b'8 | a'2 fis'4 e'4 | d'2. \break
  }
}


gpmduanoldua_d_notes_svg = {

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 1"
    \partial 4 a4 | fis'4 fis'8 fis'8 e'4 fis'4 | a'2.  \break
    d''4 | b'4 cis''8 d''8 a'4 fis'4 | e'2. \break
    fis'4 | d'4 d'8 e'8 fis'4 b'4 | g'2 r4 \break
    b'8 b'8 | a'8 fis'1* 5/8 e'8 fis'8 | e'8 d'4. r4 \break
    d''8 d''8 | cis''2 g'4. b'8 | b'8 ( a'8) a'2 \break
    a'8 a'8 | g'4 b'4 d''4 b'4 | a'4 ( b'4 cis''4) \break
    fis'8 e'8 | d'2 a'4. fis'8 | g'8 ( a'8 ) b'2 \break
    b'8 b'8 | a'2 fis'4 e'4 | d'2. \break

  \section
  \tweak X-offset #1
  \sectionLabel \markup\smaller\bold "Bait 2"
    \partial 4 a4 | fis'4 fis'8 fis'8 e'4 fis'4 | a'2.  \break
    d''4 | b'4 cis''8 d''8 a'4 fis'4 | e'2. \break
    fis'4 | d'4 d'8 e'8 fis'4 b'4 | g'2 r4 \break
    b'8 b'8 | a'8 fis'1* 5/8 e'8 fis'8 | e'8 d'4. r4 \break
    d''8 d''8 | cis''2 g'4. b'8 | b'8 ( a'8) a'2 \break
    a'8 a'8 | g'4 b'4 d''4 b'4 | a'4 ( b'4 cis''4) \break
    fis'8 e'8 | d'2 a'4. fis'8 | g'8 ( a'8 ) b'2 \break
    b'8 b'8 | a'2 fis'4 e'4 | d'2. \break

}


gpmduanoldua_d_notes =
#(if is-svg?
     #{\gpmduanoldua_d_notes_svg#}
     #{\gpmduanoldua_d_notes_pdf#})


gpmduanoldua_d_music = {
  \time 4/4
  \key d \major
  \gpmduanoldua_d_notes
  \bar "|."
}

gpmduanoldua_d_music_solmisasi =
\solmisasiMusic \gpmduanoldua_d_music


gpmduanoldua_lyricOne = \lyricmode {
  Se -- nyum men -- ta -- ri pa -- gi. Da -- mai -- kan re -- lung ha -- ti. I -- tu ka -- sih se -- ja -- ti da -- ri Ye -- sus yang ter -- ma -- nis. Ki -- cau bu -- rung ber -- nya -- nyi, sam -- bil me -- na -- ri na -- ri. I -- tu tan -- da -- nya ha -- ri di -- ber -- ka -- ti Ye -- sus.
}

gpmduanoldua_lyricTwo = \lyricmode {
  Ge -- lap su -- dah di -- gan -- ti. Te -- rang in -- dah se -- ka -- li. Tan -- da ha -- ra -- pan hi -- dup da -- ri Ye -- sus sang pe -- nga -- sih. Ka -- mi i -- kut ber -- nya -- nyi, pu -- ji Al -- lah rah -- ma -- ni. Ka -- sih -- Nya s'la -- lu ba -- ru a -- ba -- di s'la -- ma -- nya.
}

gpmduanoldua_lyricsAll =
#(if is-svg?
     #{ << \new Lyrics \lyricsto melodi {
        \gpmduanoldua_lyricOne
        \gpmduanoldua_lyricTwo
        } >> #}
     ; else
     #{
       <<

         \new Lyrics \lyricsto melodi {
           \gpmduanoldua_lyricOne
         }

         \new Lyrics \lyricsto melodi {
           \gpmduanoldua_lyricTwo
         }

       >>
     #})

