import librosa
from mido import MidiFile

durationmp3 = librosa.get_duration(path="GPM240_AjarAnakMuYaBapa\exports\GPM240_AjarAnakMuYaBapa.mp3")



mid = MidiFile("GPM240_AjarAnakMuYaBapa\GPM240_AjarAnakMuYaBapa.midi")

durationmidi = mid.length

print("MP3: ", durationmp3)
print("Midi: ", durationmidi)