untuk menjalankan webiste: npm run dev

untuk membangun si lilypond: lilypond -dbackend=svg <<nama file>>.ly
                                lilypond -dbackend=svg -dno-page-breaks -o GPM108 GPM108.ly
                                lilypond -dbackend=svg -dno-page-breaks GPM108.ly

<!-- untuk membangun langsung midi, pdf, dan svg -->
kalau tidak bisa langsung pake: lilypond <<nama file>>.ly 



1. extract noteheads
python ../tools/extract_note_heads.py -i ../scores/mary.svg -o mary_note_heads.csv -of mary_note_heads_fermata.csv

2. extract ties
python ../tools/extract_ties.py -i ../scores/mary.svg -o mary_ties.csv

3. squash ties
python ../tools/squash-tied-note-heads.py -i mary_note_heads.csv -t mary_ties.csv -o mary_squashed_heads.csv

4. align events
python ../tools/align_note_events.py ...

Meter = birama ketukannya itu. 3/4, 4/4

untuk slur putus2 --> \slurDashed (not) \slurSolid

\set ignoreMelismata = ##t <kata> \set ignoreMelismata = ##f -> untuk yang garis putus2 melismata

\unfoldRepeats
untuk mengulang berdasarkan dengan banyak bait atau ```repeat voltanya```

triol - > ```\tuplet x/x {not8, not8, not8}```

untuk teks : ```(```not```^\markup { \italic "teks" }```

hapus bagian ~ => ```\once \override Tie.stencil = ##f```

nada nada
c --> 1-c, 2-d, 3-e, 4-f, 5-g, 6-a, 7-b, 8-c
d --> 1-D, 2-E, 3-Fis, 4-G, 5-A, 6-B, 7-Cis, 8-D
e --> 1-E, 2-Fis 3-Gis, 4-A, 5-B, 6-Cis, 7-Dis, 8-E
f --> 1-F, 2-G, 3-A, 4-Bes, 5-C, 6-D, 7-E, 8-F
g --> 1-G, 2-A, 3-B, 4-C, 5-D, 6-E, 7-Fis, 8-G
a --> 1-A, 2-B, 3-Cis, 4-D, 5-E, 6-Fis, 7-Gis, 8-A 
b --> 1-B, 2-Cis, 3-Dis, 4-E, 5-Fis, 6-Gis, 7-Ais, 8-B
Bes --> bes-C-D-Es-F-G-A-Bes
