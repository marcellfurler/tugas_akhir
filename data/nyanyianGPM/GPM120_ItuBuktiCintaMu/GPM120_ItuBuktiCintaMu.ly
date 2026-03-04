\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 120. Itu Bukti Cinta Mu"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = D, 4/4, ♩ = 80"
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

% do = d -> 1D - 2E - 3Fis - 4G 4 1/2gis - 5A - 6B - 7Cis - 8D

gpmseratusduapuluh_d_notes = {
  \key d \major
  \relative d'
  \repeat volta 2 {
    fis4. fis8 fis8 a8 d,8 e8 | fis2 r4 fis8 fis8 |  \slurDashed fis8 (e8) \slurSolid e2 e8 e8 | g4. fis8 fis4 r4 | \break
    fis4. fis8 fis8 a8 d,8 e8 | fis2 r4 fis8 fis | fis8 e8 e4 r4 cis8 e8 | e4. d8 d4 r4 | \break
    e4. e8 e8 a8 a8 e8 | g4. fis8 fis4 r4 | e4. e8 e8 a8 a8 a8 |  gis4 fis8 gis8 a4 r4 | \break
    fis4. fis8 fis8 a8 d,8 e8 | fis2 r4 fis8 fis | fis8 e8 e4 r4 cis8 e8 | e4. d8 d4 r4 |
  }
}

gpmseratusduapuluh_d_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratusduapuluh_d_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratusduapuluh_d_music_solmisasi = \solmisasiMusic \gpmseratusduapuluh_d_music

gpmseratusduapuluh_lyricOne = \lyricmode {
  I -- tu buk -- ti cin -- ta -- Mu. Me -- ne -- ri -- ma sik -- sa -- an ke -- ji.
  Di cam -- buk dan di hi -- na, mah -- ko -- ta du -- ri, ju -- ga di -- ber -- ri.
  I -- tu kar' -- na do -- sa ku -- ju -- a, sam -- pai nya -- wa -- pun re -- la Kau be -- ri.
  Tu -- lus pe -- ngor -- ba -- nan -- Mu. Pa -- lang yang ka -- sar buk -- ti cin -- ta -- Mu.

}

gpmseratusduapuluh_lyricTwo = \lyricmode {
  Tak ter -- ni -- lai ka -- sih -- Mu, di  ka -- \set ignoreMelismata = ##t yu sa \set ignoreMelismata = ##f -- lib  sa -- kit -- Mu pe -- rih.
  Sa -- bar tia -- da me -- la -- wan ja -- lan sa -- lib -- Mu t'lah Kau ja -- la -- ni.
  I -- tu kar' -- na ke -- sa -- la -- han -- ku, sam -- pai nya -- wa -- pun re -- la Kau be -- ri.
  Su -- ci pe -- ngor -- ba -- nan -- Mu. Da -- rah ter -- cu -- rah buk -- ti cin -- ta -- Mu.
}

% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratusduapuluh_d_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratusduapuluh_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusduapuluh_lyricTwo
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
      \new Voice = melodi \gpmseratusduapuluh_d_music
    }
    \new Lyrics \lyricsto melodi \gpmseratusduapuluh_lyricOne
    \new Lyrics \lyricsto melodi \gpmseratusduapuluh_lyricTwo
  >>
  \midi {
    \tempo 4 = 80
  }
}