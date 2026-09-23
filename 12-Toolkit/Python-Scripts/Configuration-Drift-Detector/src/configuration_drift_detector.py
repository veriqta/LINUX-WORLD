#!/usr/bin/env python3
"""Compares expected and observed configuration trees using SHA-256."""
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

def digest(p: Path) -> str:
    import hashlib
    return hashlib.sha256(p.read_bytes()).hexdigest()
def tree(root: Path) -> dict[str,str]:
    return {str(p.relative_to(root)):digest(p) for p in root.rglob('*') if p.is_file()}
def main() -> int:
    a=parser().parse_args()
    if len(a.inputs)!=2: print('expected and observed directories required',file=sys.stderr); return 64
    left,right=tree(Path(a.inputs[0])),tree(Path(a.inputs[1])); keys=sorted(left.keys()|right.keys())
    diff={k:{'expected':left.get(k),'observed':right.get(k)} for k in keys if left.get(k)!=right.get(k)}
    emit({'differences':diff,'count':len(diff)},a.pretty); return 1 if diff else 0

if __name__ == '__main__':
    raise SystemExit(main())
