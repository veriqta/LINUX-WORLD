#!/usr/bin/env python3
"""Aggregates JSON results produced by multiple hosts."""
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
    a=parser().parse_args(); results=[]; errors=[]
    for item in a.inputs:
        try: results.append(json.loads(Path(item).read_text()))
        except (OSError,json.JSONDecodeError) as exc: errors.append({'path':item,'error':str(exc)})
    emit({'results':results,'errors':errors,'result_count':len(results)},a.pretty); return 1 if errors else 0

if __name__ == '__main__':
    raise SystemExit(main())
