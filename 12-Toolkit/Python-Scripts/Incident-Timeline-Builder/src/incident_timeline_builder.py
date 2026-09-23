#!/usr/bin/env python3
"""Normalizes timestamped CSV events into an ordered incident timeline."""
from __future__ import annotations
import argparse
import json
import sys
from pathlib import Path

def parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--version', action='version', version='%(prog)s 1.0.0')
    p.add_argument('inputs', nargs='*', help='Input files or paths required by the selected tool')
    p.add_argument('--pretty', action='store_true', help='Indent JSON output')
    return p

def emit(data: object, pretty: bool) -> None:
    print(json.dumps(data, indent=2 if pretty else None, sort_keys=True))

def main() -> int:
    import csv, datetime
    a=parser().parse_args()
    if not a.inputs: print('CSV input required',file=sys.stderr); return 64
    with Path(a.inputs[0]).open(newline='') as f: rows=list(csv.DictReader(f))
    required={'timestamp','event'}
    if not rows or not required.issubset(rows[0]): print('CSV requires timestamp,event',file=sys.stderr); return 65
    rows.sort(key=lambda r:r['timestamp']); emit({'events':rows,'count':len(rows)},a.pretty); return 0

if __name__ == '__main__':
    raise SystemExit(main())
