\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 159. Tuhan adalah Raja S'gala Raja"
  subtitle = "Mazmur 97 : 1 - 9"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = E, 4/4, ♩ = 90"
      
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Sonia C. Parera - Hummel"
      ", 2007"
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

% e --> 1-E, 2-Fis 3-Gis, 4-A, 5-B, 6-Cis, 7-Dis, 8-E

gpmseratuslimasembilan_e_notes = {
  \key e \major
  \relative e'
  \repeat volta 4 {
    e'8 e8 dis8 cis8 b4 b4 | cis8 cis8 b8 a8 gis4 r8 gis8 | \break
    gis8 fis8 gis8 a8 b8 gis8 a8 b8 | cis2 b4 r4 | \break
    gis8 gis8 gis8 fis8 gis4. a8 | \slurDashed (b8 b8) \slurSolid b8 cis8 b4 r8 gis8 | \break
    gis8 a8 b8 cis8 \slurDashed (b8 gis8) \slurSolid b8 a8 | gis4. fis8 gis4\fermata r4 \bar "||" \break

    ^\markup { \italic \bold "Refrein" } e'4 b4 e8 dis8 cis8 b8 | cis8 cis4 b8 cis4 \breathe dis8 e8 | \break
    fis4 e4 dis4 cis8 cis8 | b8 b4 cis8 b4 r4 | \break
    gis4. fis8 gis4 a4 | b4 cis4 b2 | \break 
    a2 gis4 fis4 | gis1* 4/4 |
  }
}

gpmseratuslimasembilan_e_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratuslimasembilan_e_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratuslimasembilan_e_music_solmisasi = \solmisasiMusic \gpmseratuslimasembilan_e_music

gpmseratuslimasembilan_lyricOne = \lyricmode {
  Tu -- han a -- da -- lah Ra -- ja s'ga -- la ra -- ja.
  Ke -- ku -- a -- sa -- an -- Nya tia -- da ber -- ta -- ra.
  S'lu -- ruh  ja -- gad ra -- ya \set ignoreMelismata = ##t meng -- a -- gung -- kan -- Nya, \set ignoreMelismata = ##f
  dan tun -- duk \set ignoreMelismata = ##t me -- nyem -- bah \set ignoreMelismata = ##f ha -- nya ke -- pa -- da -- Nya.
  Ya Tu -- han, Eng -- kau yang Ma -- ha -- ting -- gi yang ber -- kua -- sa
  di a -- tas s'lu -- ruh bu -- mi.
  U -- mar -- Mu meng -- a -- min -- kan, Kau -- lah Ra -- ja.
}

gpmseratuslimasembilan_lyricTwo = \lyricmode {
  Bi -- ar -- lah bu -- mi ber -- gem -- bi -- ra ri -- a, 
  dan se -- mu -- a pu -- lau ber -- su -- ka -- ci -- ta.
  Meng -- hor -- ma -- ti \set ignoreMelismata = ##t ke -_ per -- ka -- sa -- an \set ignoreMelismata = ##f Tu -- han
  yang nam -- pak da -- lam \set ignoreMelismata = ##t fir -- man \set ignoreMelismata = ##f dan ke -- hen -- dak -- Nya.
}
gpmseratuslimasembilan_lyricThree = \lyricmode{
  A -- wan dan ke -- k'la -- man me -- ngi -- ta -- ri -- Nya.
  Per -- lam -- bang ke -- mu -- lia -- an Ra -- ja sor -- ga 
  se -- ga -- la hu -- kum dan ke -- a -- di -- lan.
  I -- tu men -- ja -- di tum -- pu -- an ka -- ki -- Nya. 
}
gpmseratuslimasembilan_lyricFour = \lyricmode {
  La -- ngit mem -- b'ri -- ta -- kan ke -- a -- di -- lan -- Nya.
  S'ga -- la bang -- sa pan -- dang ke -- mu -- lia -- an -- Nya.
  Yang per -- ca -- ya pa -- da \set ignoreMelismata = ##t pa -- ra \set ignoreMelismata = ##f ber -- ha -- la. Al -- lah -- Nya su -- jud \set ignoreMelismata = ##t me -- nyem -- bah\set ignoreMelismata = ##f ke -- pa -- da -- Nya. 
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratuslimasembilan_e_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratuslimasembilan_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratuslimasembilan_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratuslimasembilan_lyricThree
    \new Lyrics \lyricsto melodi \gpmseratuslimasembilan_lyricFour
  >>
  \layout { }
}

% Score untuk MIDI
% Harus dipisah sebagai workaround untuk menghindari
% warning kompilasi bahwa context Voice tidak ditemukan.
% Juga untuk menghindari kesalahan lain yang mungkin disebabkan
% oleh \solmisasiMusic.
\score {
  % Gunakan original music
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmseratuslimasembilan_e_music
    }
    \new Lyrics \lyricsto melodi \gpmseratuslimasembilan_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratuslimasembilan_lyricTwo
    \new Lyrics \lyricsto melodi \gpmseratuslimasembilan_lyricThree
    \new Lyrics \lyricsto melodi \gpmseratuslimasembilan_lyricFour
  >>
  \midi {
    \tempo 4 = 90
  }
}

