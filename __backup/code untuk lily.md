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