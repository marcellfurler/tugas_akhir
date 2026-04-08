\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 121. Karena Dosa Manusia"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = B, 3/4, ♩ = 95"
    }
  }

  composer = \markup {
    Lagu dan Syair:
    \concat {
      \caps "Meliand R. G. Parera"
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

% b --> 1-B, 2-Cis, ri = d/cisis, 3-Dis, 4-E, 5-Fis sel = G/fisis, 6-Gis, 7-Ais, 8-B

gpmseratusdusatu_b_notes = {
  \key b \major
  \relative b' {
    \partial 4 dis4 | gis2 b4 | ais2 fisis4 | gis2 e4 | dis2 \breathe dis4 | e2 dis4 | cis2 cisis4 | \once \override Tie.stencil = ##f dis2.~ (| dis4) r4  \break
    dis4 | cis2 dis4 | e2 cis4 | dis2 cis4 | b2 \breathe ais4 | gis2 ais4 | b2 gis4 | \once \override Tie.stencil = ##f ais2.~ (| ais4) r4 \break
    dis4 | gis2 b4 | ais2 fisis4 | gis2 e4 | dis2 \breathe dis4 | e2 dis4 | cis2 cisis4 | \once \override Tie.stencil = ##f dis2.~ (| dis4) r4  \break
    dis8 dis8 | cis2 dis4 | e2 cis4 | dis2 cis4 | b2 \breathe b4 | ais2 cis4 | b2 ais4 | \once \override Tie.stencil = ##f gis2.~ (| gis4) r4 \break

    gis4 | fis2 gis4 | ais2 cis4 | b2 cis4 | dis2 \breathe dis4 | e2 gis4 | b2 gis4 | \once \override Tie.stencil = ##f fisis2.~ (| fisis4) r4 \break
    dis4 | gis2 b4 | ais2 fisis4 | gis2 e4 | dis2 \breathe dis4 | e2 dis4 | cis2 e4 | \once \override Tie.stencil = ##f dis2.~ (| dis4) r4 \break 
    dis4 | cis2 dis4 | e2 fis4 | dis2 cis4 | b2 \breathe b'4 | ais2 gis4 | fisis2 ais4 | \once \override Tie.stencil = ##f gis2.~ (| gis4) r4 
  }
}


gpmseratusdusatu_b_music = {
  \time 3/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusdusatu_b_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusdusatu_b_music_solmisasi = \solmisasiMusic \gpmseratusdusatu_b_music

gpmseratusdusatu_lyricOne = \lyricmode {
    Kar -- 'na do -- sa ma -- nu -- si -- a, Ye -- sus men -- de -- ri -- ta.
    Tu -- buh su -- ci 'tak ber -- do -- sa di cam -- buk di -- sik -- sa.
    Di -- a -- tas bu -- kit Kal -- va -- ri ter -- gan -- tung di sa -- lib,
    un -- tuk me -- ne -- bus do -- sa ki -- ta u -- mat yang ber -- ce -- la.

    Ye -- sus t'lah ma -- ti ba -- gi -- ku, me -- ne -- bus do -- sa -- ku.
    Ku s'rah -- kan se -- g'nap hi -- dup -- ku ke -- da -- lam ta -- ngan -- Mu.
    Oh Ye -- sus, Kau pe -- ne -- bus -- ku, Kau Ju -- ru S'la -- mat -- ku.
}


% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusdusatu_b_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusdusatu_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
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
   <<
    \new Staff {
      \new Voice = melodi \gpmseratusdusatu_b_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusdusatu_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratusdelapan_lyricTwo
  >>
  \midi {
    \tempo 4 = 95
  }
}

