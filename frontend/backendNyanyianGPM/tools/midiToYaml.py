import mido
import yaml
import os
from collections import defaultdict

def midiToYaml(midi_path, output_path):
    mid = mido.MidiFile(midi_path)

    ticks_per_beat = mid.ticks_per_beat
    tempo = 500000  # default tempo

    channels = defaultdict(lambda: {
        "minPitch": 999,
        "maxPitch": 0,
        "count": 0
    })

    flow = []
    current_tick = 0
    active_notes = {}

    for track in mid.tracks:
        current_tick = 0

        for msg in track:
            current_tick += msg.time

            if msg.type == 'set_tempo':
                tempo = msg.tempo

            if msg.type == 'note_on' and msg.velocity > 0:
                active_notes[(msg.note, msg.channel)] = current_tick

            if msg.type in ['note_off', 'note_on'] and msg.velocity == 0:
                key = (msg.note, msg.channel)
                if key in active_notes:
                    start = active_notes[key]
                    end = current_tick

                    flow.append([
                        start,
                        msg.channel,
                        end
                    ])

                    ch = channels[msg.channel]
                    ch["minPitch"] = min(ch["minPitch"], msg.note)
                    ch["maxPitch"] = max(ch["maxPitch"], msg.note)
                    ch["count"] += 1

                    del active_notes[key]

    max_tick = max([f[2] for f in flow]) if flow else 0

    output = {
        "meta": {
            "ticksPerBeat": ticks_per_beat,
            "maxTick": max_tick,
            "channels": channels
        },
        "flow": flow
    }

    with open(output_path, "w") as f:
        yaml.dump(output, f)

    print(f"YAML generated: {output_path}")


if __name__ == "__main__":
    midi_file = "../scores/mary.mid"
    output_file = "../scores/mary.yaml"

    midiToYaml(midi_file, output_file)