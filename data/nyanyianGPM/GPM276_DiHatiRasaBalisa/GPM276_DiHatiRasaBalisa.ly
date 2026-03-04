\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 276. Di Hati Rasa Balisa"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 3/4, ♩ = 80"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Bartje Istia"
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


% do = d -> 1d 2e 3fis 4g (4 1/2)gis 5a 6b 7cis 1d

gpmduatujuhenam_d_notes = {
  \key d' \major
  \relative d' 
  \repeat volta 2 {
    fis4 e4 d4 | fis4 e4 d4 | a'2. | fis2 r4 | a4 b4 a4 | fis2 a4 | (g2 fis4) | e2 r4 | \break
    e4 e4. d8 | cis4 cis4 e4 |  g4 \slurDashed (g4  fis4) \slurSolid | e2 r4 | a4 a4 a4 | b4 a4 g4 | \once \override Tie.stencil = ##f (fis2. ~ | fis2) r4 \break
    fis4 e4 d4 | fis4 e4 d4 | a'2. | fis2 r4 | fis4 g4 gis4 | a2 a4 | b2. | g2 r4 | \break
    d'4 d4 d4 | cis2 b4 | a2. | fis2 r4 | a4 a4 a4 | g4 fis4 e4 | \once \override Tie.stencil = ##f (d2.~ | d2) r4 | \break

    % reef
    fis4 fis4 a4 | g2 b4 | a2. | fis2 r4 | d'4 d4 d4 | a4 a4 d4 | \once \override Tie.stencil = ##f (cis2. ~ | cis2) r4 | \break
    g4 g4 a4 | g2 a4 | cis2. | b2 r4 | a4 a4 a4 | b4 a4 g4 | \once \override Tie.stencil = ##f (fis2.~ | fis2) fis4 | \break
    a2 b8 (a8) | fis2 a4 | b4 b4 b4 | d2 cis8 b8 | a2 a8 a8 | a4 g4 e4 | \once \override Tie.stencil = ##f (d2.~ | d2) r4 | 
  }
}

gpmduatujuhenam_d_music = {
  \time 3/4
  % \tempo 4 = 80
  \gpmduatujuhenam_d_notes
  \bar "|."
}

gpmduatujuhenam_d_music_solmisasi = \solmisasiMusic \gpmduatujuhenam_d_music


gpmduatujuhenam_lyricOne = \lyricmode {
  Di ha -- ti ra -- sa ba -- li -- sa, ba -- lan -- dong a -- er ma -- ta.
  Sa -- ki ra -- sa sam -- pe di jan -- tong co -- ba -- an hi -- dop i -- ni.
  Ma -- ngen -- te di ki -- ri ka -- nan, sa -- pa yang bi -- sa to -- long.
  Ta -- hang dal -- lam sang -- sa -- ra, ku -- at i -- man di da -- da.

  Cu -- ma Tu -- han yang ta -- u, a -- pa yang be -- ta ra -- sa. 
  Cu -- ma Tu -- han yang ta -- u, a -- pa yang be -- ta min -- ta.
  De -- ngan Tu -- han, ge -- lap ja -- di t'rang, de -- ri -- ta ja -- di su -- ka -- ci -- ta.
}

gpmduatujuhenam_lyricTwo = \lyricmode {
  Di wak -- tu co -- ba -- an da -- tang sio ra -- sa a -- sing la -- wang.
  Ang -- ka ha -- ti min -- ta \set ignoreMelismata = ##t Tu -- han \set ignoreMelismata = ##f da -- tang mau se -- ka a -- er ma -- ta.
  Ha -- nya sa -- tu pa -- leng in -- dah peng -- hi -- bur da -- lam su -- sah.
  Ba -- gai in -- tan per -- ma -- ta Al -- lah yang Ma -- ha Kua __ sa.

}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmduatujuhenam_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmduatujuhenam_lyricOne
    \new Lyrics \lyricsto melodi \gpmduatujuhenam_lyricTwo
  >>
  \layout { }
}

\score {
  % Gunakan original music
  \unfoldRepeats <<
    \new Staff {
      \new Voice = melodi \gpmduatujuhenam_d_music
    }
    \new Lyrics \lyricsto melodi \gpmduatujuhenam_lyricOne
    \new Lyrics \lyricsto melodi \gpmduatujuhenam_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}
