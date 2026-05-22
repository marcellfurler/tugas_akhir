import librosa
from mido import MidiFile

durationmp3 = librosa.get_duration(path="GPM114_NyanyikanBagiTuhan\exports\GPM114_NyanyikanBagiTuhan.mp3")



mid = MidiFile("GPM114_NyanyikanBagiTuhan\GPM114_NyanyikanBagiTuhan.midi")

durationmidi = mid.length

print("MP3: ", durationmp3)
print("Midi: ", durationmidi)