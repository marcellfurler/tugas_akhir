import yaml
import sys

def load_yaml(path):
    with open(path, 'r', encoding='utf-8') as f:
        return yaml.safe_load(f)

def save_yaml(data, path):
    with open(path, 'w', encoding='utf-8') as f:
        yaml.dump(data, f, sort_keys=False)

def fix_bars(sync_path):
    data = load_yaml(sync_path)

    flow = data['flow']

    # ambil semua tick dari NOTE saja (ground truth)
    note_ticks = [
        item[0]
        for item in flow
        if len(item) == 4 and item[3] not in ['bar', 'fermata']
    ]

    if not note_ticks:
        print("❌ Tidak ada note ditemukan")
        return

    fixed_flow = []

    for item in flow:
        tick = item[0]
        typ = item[3] if len(item) == 4 else None

        if typ == 'bar':
            # SNAP bar ke tick note terdekat
            nearest = min(note_ticks, key=lambda x: abs(x - tick))
            fixed_flow.append([nearest, item[1], item[2], typ])
        else:
            fixed_flow.append(item)

    # sort ulang biar rapi
    fixed_flow.sort(key=lambda x: x[0])

    data['flow'] = fixed_flow

    save_yaml(data, sync_path)

    print("✔ Bar sync berhasil diperbaiki (note-based snapping)")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Cara pakai: python fix_bar_sync.py <file.yaml>")
        sys.exit(1)

    fix_bars(sys.argv[1])