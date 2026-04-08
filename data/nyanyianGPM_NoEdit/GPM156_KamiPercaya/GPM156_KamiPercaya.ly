\version "2.24.4"

% Deprecated
% By default menggunakan solmisasi-lily v2.0.0-beta
% #(define _USE_VERSION2 #t)

\include "../../../backend/solmisasi-lily/lib/solmisasi.ily"
\include "../../__includes/GPM_Globals.ily"

\header {
  title = "GPM 156. kami Percaya"

  poet = \markup {
    \pad-x #1
    \column {
      "Do = F, 4/4, ♩ = 90"
    }
  }

composer = \markup {
\column {
    \line { Lirik: \caps "Fery Nahusona" }
    \line { Lagu: \caps "Semi Toisuta" }
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

% f --> 1-F, 2-G, 3-A, 4-Bes, 5-C, 6-D, 7-E, 8-F

gpmseratuslimaenam_f_notes = {
  \key f \major
  \relative f'{
    c4 d8 f8 a8 a8 g8 a8 | g8 f8 f8 (d8) f4 \breathe d8 d8 | d4 d8 f8  g4 f8 g8 | \break
    a8 g8 f8 (g8) a2 | r8 d,8 d8 f8 g4 f8 g8 | a8 g8 f8 (d8) d2 | \break 
    c'4 c8 c8 d8 (c8) c4 | a8 a8 a8 a8 g8 f8 f8 d8 | f8 (d8) d2  d8 f8 | 
    a8 g8 f8 f8 d4 d8 f8 | g2 r4 d8 f8 | g8 g8 g8 f8 d4 d8 f8 | \break
    g2 r8 c8 c8 c8 | d8 (c8) c4 a8 g8 a8 c8 | a2 d8 d8 d8 d8 |  \break
    d4. d8 c8 a8 a8 c8 | c2 r8 d8 d8 d8 | d8 d2 c8 a8 c8 | \break
    d8 d4. r8 a8 g8 a8 | c8 a4 a8 g8 (f8) d8 d8 | d1* 3/4 r4 |
  }
}

gpmseratuslimaenam_f_music = {
  \time 4/4
  % Tempo untuk MIDI saja.
  % Di partitur, tampilkan dengan header.
  \gpmseratuslimaenam_f_notes
  \bar "|."
}

% Optimasi
% Buat variabel musik baru agar \solmisasiMusic hanya dijalankan sekali
gpmseratuslimaenam_f_music_solmisasi = \solmisasiMusic \gpmseratuslimaenam_f_music

gpmseratuslimaenam_lyricOne = \lyricmode {
    Ka -- mi per -- ca -- ya Al -- lah u -- tus Ye -- sus,
    A -- nak -- Nya ba -- wa ka -- sih ke -- pa -- da di -- nia, 
    dan ba -- wa du -- nia ke -- pa -- da ka -- sih.
    Ka -- mi per -- ca -- ya Tu -- han Ye -- sus 
    yang mem -- bu -- ka ja -- lan pen -- da -- mai -- an ba -- gi yang di te -- bus,
    dan di -- an -- ta -- ra s'ga -- la cip -- ta -- an.
    Ka -- mi per -- ca -- ya pa -- da Roh Ku -- dus yang meng -- hi -- dup -- kan se -- i -- si du -- ni -- a
    me -- no -- long ka -- mi un -- tuk ber -- kar -- ya hi -- dup yang ba -- ru te -- rus me -- ne -- rus. 
}


% Score untuk partitur (PDF dan SVG)
\score {
  <<
    % \new SolmisasiTimeAndKeySignature {
    %       \gpmseratusdelapan_c_music_solmisasi
    %     }
    \new SolmisasiStaff {
      \new SolmisasiVoice = melodi {
        \gpmseratuslimaenam_f_music_solmisasi
      }
    }
    \new Lyrics \lyricsto melodi \gpmseratuslimaenam_lyricOne
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
      \new Voice = melodi \gpmseratuslimaenam_f_music
    }
    \new Lyrics \lyricsto melodi \gpmseratuslimaenam_lyricOne
    % \new Lyrics \lyricsto melodi \gpmseratuslimaenam_lyricTwo
  >>
  \midi {
    \tempo 4 = 90
  }
}

