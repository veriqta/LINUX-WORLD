#!/usr/bin/env python3
"""Turns structured operational facts into a Markdown report."""
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
    a=parser().parse_args()
    if not a.inputs: print('JSON input required',file=sys.stderr); return 64
    data=json.loads(Path(a.inputs[0]).read_text()); print('# Operational Report\n')
    for key,value in sorted(data.items()): print(f'## {key.replace("_"," ").title()}\n\n~~~json\n{json.dumps(value,indent=2)}\n~~~\n')
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
