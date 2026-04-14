\version "2.24.4"

#(define is-svg? #f)

\include "../../__includes/GPM_Globals.ily"


\header {
  title = "GPM 201. Saat pagi Menyambutku"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = D, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 90"
      }
    }
  }

  composer = \markup {
    \column {
      \line {
        Syair :
        \caps "Lili Picanussa"
      }
      \line {
        Lagu :
        \caps "Nus Lopuhaa"
      }
    }
  }
}


gpmduanolsatu_d_notes = {
  \key d \major
  
  {

    % (opsional, kalau mau tetap kompatibel SVG)
    #(if is-svg?
         #{ s1*0 #}
         (empty-music)
     )
 r4 a'8 g'8 fis'8 fis'8 a'8 b'8 | a'8 a'1* 7/8 | \break
 r4 fis'8 g'8 a'8 a'8 d''8 d''8 | cis''4 a'8 g'1* 5/8 | \break
 r4 e'8 e'8 e'8 e'8 e'8 fis'8 | g'8 g'1* 7/8 | \break
 r4 b'8 b'8 a'8 a'8 a'8 g'8 | fis'1 | \break
 r4 a'8 g'8 fis'8 fis'8 a'8 b'8 | a'8 a'1* 7/8 | \break
 r4 fis'8 a'8 d''8 cis''8 e''8 d''8 | b'4. cis''8 d''2 | \break
 r4 d''8 d''8 d''8 d''8 cis''8 b'8 | a'4. g'8 fis'2 | \break
 r4 a'8 a'8 b'8 a'8 b'8 cis''8 | d''2. r4 \break

    % Double barline jika SVG (dijabarkan)
    #(if is-svg?
         #{ \section #}
         (empty-music)
     )
  }
}

gpmduanolsatu_d_music = {
  \time 4/4
  % \tempo 4 = 90
  \gpmduanolsatu_d_notes
  \bar "|."
}

gpmduanolsatu_d_music_solmisasi = \solmisasiMusic \gpmduanolsatu_d_music

gpmduanolsatu_lyricOne = \lyricmode {
  Sa -- at pa -- gi me -- nyam -- but -- ku tak ter -- u -- kur ka -- sih -- Mu, Tu -- han. A -- ku su -- jud me -- nyem -- bah -- Mu, a -- tas ber -- kat da -- ri -- Mu. Ku ber -- syu -- kur pa -- da Tu -- han, a -- tas ha -- ri ba -- ru yang di -- b'ri. Kau pe -- mim -- pin a -- tas hi -- dup -- ku, da -- lam lang -- kah ju -- ang -- ku.
}


