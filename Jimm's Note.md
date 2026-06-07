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


struktur kamar:
\repeat volta 2 {
   musik_yang_diulang
}
\alternative {
   { ending1 }
   { ending2 }
}


\header {
  title = "GPM 8. Engkau Yang Suci"

  poet = \markup {
    \pad-x #1
    \override #'(baseline-skip . 2.8)
    \left-column {
      \line {
        "Do = G, 4/4,"
        \raise #0.3 \fontsize #-2.5 \note {4} #UP
        "= 80"
      }
    }
  }

  composer = \markup {
    \column {
      \line {
        Lagu :
        \caps "Veby Pelmelay & Nus Tomatala"
      }
      \line {
        Syair :
        \caps "Nus Tomatala"
      }
    }
  }
}
header kalau composer berbeda atau lebih dari dua



<!-- env -->
untuk aktifkan dan deaktifkan env
deactivation
nama-env\Scripts\activate

untuk yang env

<!-- audio prosesing -->
<!-- librosa, soundfile, madmom, midi2audio, mido, scipy, matplotlib,  -->
env-audio => python 3.10.5 
  pip list
    Package                Version
    ---------------------- ------------
    antlr4-python3-runtime 4.13.2
    audioread              3.1.0
    certifi                2026.4.22
    cffi                   2.0.0
    charset-normalizer     3.4.7
    contourpy              1.3.2
    cycler                 0.12.1
    Cython                 3.2.4
    decorator              5.2.1
    fonttools              4.62.1
    idna                   3.12
    invoke                 3.0.3
    joblib                 1.5.3
    kiwisolver             1.5.0
    lazy-loader            0.5
    librosa                0.11.0
    llvmlite               0.47.0
    lxml                   6.1.0
    madmom                 0.16.1
    matplotlib             3.10.8
    midi2audio             0.1.1
    mido                   1.3.3
    msgpack                1.1.2
    numba                  0.65.0
    numpy                  1.26.4
    packaging              26.1
    pandas                 2.3.3
    pillow                 12.2.0
    pip                    26.0.1
    platformdirs           4.9.6
    pooch                  1.9.0
    pycparser              3.0
    pyparsing              3.3.2
    python-dateutil        2.9.0.post0
    pytz                   2026.1.post1
    PyYAML                 6.0.3
    requests               2.33.1
    scikit-learn           1.7.2
    scipy                  1.10.1
    setuptools             58.1.0
    six                    1.17.0
    soundfile              0.13.1
    soxr                   1.0.0
    threadpoolctl          3.6.0
    typing_extensions      4.15.0
    tzdata                 2026.1
    urllib3                2.6.3
    wheel                  0.46.3


<!-- data processing -->
<!-- pandas, numpy, scikit-learn, pyYAML, lxml, invoke -->
env-data => python 3.11.1
  pip list
    Package                Version
    ---------------------- -----------
    antlr4-python3-runtime 4.13.2
    audioread              3.1.0
    certifi                2026.4.22
    cffi                   2.0.0
    charset-normalizer     3.4.7
    contourpy              1.3.3
    cycler                 0.12.1
    Cython                 3.2.4
    decorator              5.2.1
    fonttools              4.62.1
    idna                   3.13
    invoke                 3.0.3
    joblib                 1.5.3
    kiwisolver             1.5.0
    lazy-loader            0.5
    librosa                0.11.0
    llvmlite               0.47.0
    lxml                   6.1.0
    madmom                 0.16.1
    matplotlib             3.10.8
    midi2audio             0.1.1
    mido                   1.3.3
    msgpack                1.1.2
    numba                  0.65.0
    numpy                  2.4.4
    packaging              26.1
    pandas                 3.0.0
    pillow                 12.2.0
    pip                    26.0.1
    platformdirs           4.9.6
    pooch                  1.9.0
    pyaml                  26.2.1
    pycparser              3.0
    pyparsing              3.3.2
    python-dateutil        2.9.0.post0
    PyYAML                 6.0.3
    requests               2.33.1
    scikit-learn           1.8.0
    scipy                  1.17.1
    setuptools             80.9.0
    six                    1.17.0
    soundfile              0.13.1
    soxr                   1.0.0
    threadpoolctl          3.6.0
    typing_extensions      4.15.0
    tzdata                 2026.1
    urllib3                2.6.3
    wheel                  0.47.0



env-audio2 =>python 3.8.0
<!-- librosa, soundfile, madmom, midi2audio, mido, scipy, matplotlib,  -->
  pip list
    Package                Version
    ---------------------- ------------
    antlr4-python3-runtime 4.13.2
    audioread              3.0.1
    certifi                2026.4.22
    cffi                   1.17.1
    charset-normalizer     3.4.7
    contourpy              1.1.1
    cycler                 0.12.1
    Cython                 3.2.4
    decorator              5.2.1
    fonttools              4.57.0
    idna                   3.13
    importlib_metadata     8.5.0
    importlib_resources    6.4.5
    invoke                 2.2.1
    joblib                 1.4.2
    kiwisolver             1.4.7
    lazy_loader            0.4
    librosa                0.11.0
    llvmlite               0.41.1
    lxml                   6.1.0
    madmom                 0.16.1
    matplotlib             3.7.5
    midi2audio             0.1.1
    mido                   1.3.3
    msgpack                1.1.1
    numba                  0.58.1
    numpy                  1.23.5
    packaging              26.1
    pandas                 2.0.3
    pillow                 10.4.0
    pip                    25.0.1
    platformdirs           4.3.6
    pooch                  1.8.2
    pyaml                  26.2.1
    pycparser              2.23
    pyparsing              3.1.4
    python-dateutil        2.9.0.post0
    pytz                   2026.1.post1
    PyYAML                 6.0.3
    requests               2.32.4
    scikit-learn           1.3.2
    scipy                  1.10.1
    setuptools             75.3.4
    six                    1.17.0
    soundfile              0.13.1
    soxr                   0.3.7
    threadpoolctl          3.5.0
    typing_extensions      4.13.2
    tzdata                 2026.1
    urllib3                2.2.3
    wheel                  0.45.1
    zipp                   3.20.2

<!-- catatan -->
yang env-audio2 semua sudah jadi, hanya saja 
  1. pandas di 2.0.3 karena pandas 3.0.0 hanya dapat diinstall di py 3.11.x (Ada di env-data)
  2. numpy di 1.23.5, karena pas numpy 1.24.0 'numpy' has no attribute 'float'
  3. librosa aman 0.11.0
  4. soundfile aman 0.13.0
  5. midi2audio aman 0.1.1
  6. mido aman 1.3.3
  7. matplotlib aman 3.7.5
  8. invoke aman 2.2.1
  9. antlr4-python3-runtime aman 4.13.2
  10. PyYAML aman 6.0.3
  11. lxml aman 6.1.0
  12. madmom aman (aman karena numpynya diturunkan dari 1.24.0 ke 1.23.5 karena pas pakai versi tertinggi, "module 'numpy' has no attribute 'float'", pas pakai terendah, baru aman)
  13. scipy aman 1.10.1

yang env-data
  1. pandas aman di 3.0.0
  2. numpy di 2.4.4, tetapi minusnya, nanti bermasalah di 12. madmom
  3. librosa aman 0.11.0
  4. soundfile aman 0.13.1
  5. midi2audio aman 0.1.1
  6. mido aman 1.3.3
  7. matplotlib aman 3.10.8
  8. invoke aman 3.0.3
  9. antlr4-python3-runtime aman 4.13.2
  10. pyYAML aman 6.0.3
  11. lxml aman 6.1.0
  12. madmon kalau di 0.16.1, dia muncul cannot import name 'MutableSequence' from 'collections' (C:\Users\ASUS\AppData\Local\Programs\Python\Python311\Lib\collections\__init__.py), karena numpy di 2.4.4, makanya di audio2, pakai numpy 1.23.5
  13. scipy aman 1.17.1

Keterangan
env-audio -> 


requirements:
  cffi==1.17.1 aman (data/audio)
  contourpy==1.3.2 aman (data)
  cycler==0.12.1 aman (data/audio)
  Cython==3.1.2 aman (data/audio)
  fonttools==4.58.4 aman (data/audio)
  kiwisolver==1.4.8 aman (data/audio)
  madmom @ file:///Users/christophe.thiebaud/github.com/madmom
  matplotlib==3.10.3 aman (data)
  mido==1.3.3 aman (data/audio)
  numpy==2.3.0 aman (data)
  packaging==25.0 aman (data/audio)
  pillow==11.2.1 aman (data)
  pyaml==25.5.0 aman (data/audio)
  pycparser==2.22 aman (data/audio)
  pyparsing==3.2.3 aman (data)
  python-dateutil==2.9.0.post0 aman (data/audio)
  PyYAML==6.0.2 aman (data/audio)
  scipy==1.15.3 aman (data)
  setuptools==80.9.0 aman (data)
  six==1.17.0 aman (data/audio)
  soundfile==0.13.1 aman (data/audio)


perintah menjalankan
   invoke --search-root D:\Materi\Semester8\Skripsi2\tugas_akhir\backend\bwv-zeug\invoke all   

rumus untuk total duration second
  (env-data) PS D:\Materi\Semester8\Skripsi2\tugas_akhir\data\nyanyianGPM> python .\cek.py
    MP3:  86.90253968253968
    Midi:  85.33324800000011
  nada midi - 1.
    misal midi = 85.333, maka yang ditulis adalah 84.333

    saya ada hipotesis, ternyata jika 
1. lagunya hanya 1 ayat, akan mengalami masalah pada animasi birama
2. Lagu lebih dari 1 ayat tetapi dimulai dengan \partial x, maka akan bermasalah pada animasi biramanya juga

untuk test:
  npx serve -p 8088 --cors 