import librosa
import yaml
import argparse

def track_beats(input_path, output_path, start_tempo=None):
    """
    Detects beats in an audio file and saves the beat timestamps to a YAML file.
    """
    try:
        # Load the audio file
        print(f"🎧 Loading audio file: {input_path}")
        y, sr = librosa.load(input_path)

        # Detect beats
        print("🥁 Detecting beats...")
        if start_tempo:
            print(f"🧠 Guiding beat tracker with starting tempo: {start_tempo} BPM")
            # Using a tighter window for beat tracking when a tempo is provided
            tempo, beats = librosa.beat.beat_track(y=y, sr=sr, start_bpm=start_tempo, units='frames', tightness=100)
        else:
            print("🧠 Performing standard beat detection (no tempo hint)")
            tempo, beats = librosa.beat.beat_track(y=y, sr=sr, units='frames')

        # The 'tempo' variable can be a numpy array, get the first element for printing
        estimated_tempo = tempo if isinstance(tempo, (int, float)) else tempo[0]

        # Convert frame indices to time
        beat_times = librosa.frames_to_time(beats, sr=sr)

        # Prepare data for YAML output
        data = {
            'beats': beat_times.tolist()
        }

        # Write to YAML file
        with open(output_path, 'w') as f:
            yaml.dump(data, f, default_flow_style=False)

        print(f"✅ Successfully detected {len(beat_times)} beats. Estimated Tempo: {estimated_tempo:.2f} BPM.")
        print(f"💾 Beat data saved to {output_path}")

    except Exception as e:
        print(f"❌ An error occurred: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Detect beats in an audio file and save to YAML.")
    parser.add_argument("-i", "--input", required=True, help="Path to the input audio file (e.g., song.wav or song.mp3)")
    parser.add_argument("-o", "--output", required=True, help="Path to the output YAML file (e.g., detected_beats.yaml)")
    parser.add_argument("--tempo", type=int, help="Optional: Provide a starting tempo (BPM) to guide the beat tracker.")

    args = parser.parse_args()

    track_beats(args.input, args.output, start_tempo=args.tempo)