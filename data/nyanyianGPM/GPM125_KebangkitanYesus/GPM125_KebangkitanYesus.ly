\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 125. Kebangkitan Yesus"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = F, 4/4, ♩ = 100"
      "Tradisional Tanimbar"
    }
  }
  
  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Ots. Kilanmasse"
      ", 2009"
    }
  }

  % Default tagline
  tagline = \markup {
    \sans \fontsize #-1 {
      \concat {
        "Koleksi Partitur Nyanyian GPM"
        " - Diproduksi dengan solmisasi-lily v"
        #(solmisasi-lily-version)
      }
    }
  }
}

% 1F - 2G - 3A - 4Bes (Bb) - 5C - 6D - 7E - 1F'

gpmseratusdualima_f_notes = {
  \key f \major
  \relative f' 
  \repeat volta 5{
    c'8 c8 a8 bes8 c8 c8 a8 bes8 | c8 c8 c8 c8 d2 | c2 r4 a8 bes8 | \break
    c8 c8 c8 d8 c8 \once \override Tie.stencil = ##f (bes4.~ | bes4) \breathe g8 a8 bes8 a8 bes8 c8 | bes8 a1* 5/8 r4 | \break
    % reef
    c8 c8 f8 f8 e4 e4 | d8 d8 e8 d8 c4 r4 | d4 d4 c4 c4 | \break
    bes8 bes8 c8 bes8 a4 \breathe a8 a8 | g2 bes4 a8 g8 | f8 f1* 5/8 r4 |
  
  }
}

gpmseratusdualima_f_music = {
  \time 4/4
  % \tempo 4 = 100
  \gpmseratusdualima_f_notes
  \bar "|."
}

gpmseratusdualima_f_music_solmisasi = \solmisasiMusic \gpmseratusdualima_f_music


gpmseratusdualima_lyricOne = \lyricmode {
  Ke -- bang -- ki -- tan Ye -- sus bu -- kan -- lah b'ri -- ta yang ma -- ya.
  ta -- pi sung -- guh i -- tu nya -- ta dan ti -- dak da -- pat di -- sang -- kal.

  Ha -- i u -- mat Tu -- han, ber -- gem -- bi -- ra -- lah
  sam -- but Ye -- sus s'ba -- gai pe -- me -- nang me -- nga -- lah -- kan kua -- sa ma -- ut.
}

gpmseratusdualima_lyricTwo = \lyricmode {
  A -- pa -- bi -- la Ye -- sus sung -- guh- sung -- guh ti -- dak bang -- kit
  si -- a- si -- a i -- man ki -- ta ju -- ga pem -- b'ri -- ta -- an g're -- ja.

}

gpmseratusdualima_lyricThree = \lyricmode{
  Bri' -- ta ke -- bang -- ki -- tan Ye -- sus 
  wa -- lau -- pun di -- tu -- tup 
  na -- mun pa -- ra pe -- ngu -- a -- sa
  a -- khir -- nya ha -- rus me -- nga -- ku.
}

gpmseratusdualima_lyricFour = \lyricmode{
  Hai pe -- ngi -- ring Ye -- sus 
  ge -- ma -- kan -- lah su -- a -- ra -- mu
  ku -- man -- dang -- kan -- lah tem -- bang -- mu
  ten -- tang ke -- bang -- ki -- tan Ye -- sus.
}

gpmseratusdualima_lyricFive = \lyricmode {
  Si -- ar -- kan  ke -- bang -- ki -- tan -- Nya
  Ke -- se -- lu -- ruh du -- nia
  a -- gar du -- nia mau me -- nga -- ku
  bah -- wa Ye -- sus i -- tu Tu -- han.
}

\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusdualima_f_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusdualima_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusdualima_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratusdualima_lyricThree
    \new Lyrics \lyricsto melodi \gpmseratusdualima_lyricFour
    \new Lyrics \lyricsto melodi \gpmseratusdualima_lyricFive
  >>
  \layout { }
}

\score {
  % Gunakan original music
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratusdualima_f_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusdualima_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusdualima_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratusdualima_lyricThree
    \new Lyrics \lyricsto melodi \gpmseratusdualima_lyricFour
    \new Lyrics \lyricsto melodi \gpmseratusdualima_lyricFive
  >>
  \midi {
    \tempo 4 = 100
  }
}
