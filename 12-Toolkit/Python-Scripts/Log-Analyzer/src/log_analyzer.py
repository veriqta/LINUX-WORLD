#!/usr/bin/env python3
"""Counts log severities and extracts a bounded set of notable events."""
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
    import re
    a=parser().parse_args(); counts={'error':0,'warning':0,'info':0}; samples=[]
    if not a.inputs: print('log file required',file=sys.stderr); return 64
    for line in Path(a.inputs[0]).read_text(errors='replace').splitlines():
        low=line.lower(); level='error' if re.search(r'error|critical|fatal|failed',low) else 'warning' if re.search(r'warn|degraded',low) else 'info'
        counts[level]+=1
        if level!='info' and len(samples)<20: samples.append(line[:500])
    emit({'counts':counts,'samples':samples},a.pretty); return 0

if __name__ == '__main__':
    raise SystemExit(main())
