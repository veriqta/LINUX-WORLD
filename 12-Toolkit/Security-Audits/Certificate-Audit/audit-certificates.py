#!/usr/bin/env python3
"""Inventories PEM certificates beneath an approved path."""
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
    import ssl, datetime
    a=parser().parse_args()
    if not a.inputs: print('certificate files required',file=sys.stderr); return 64
    out=[]
    for item in a.inputs:
        try:
            info=ssl._ssl._test_decode_cert(item); out.append({'path':item,'subject':info.get('subject'),'issuer':info.get('issuer'),'notAfter':info.get('notAfter')})
        except Exception as exc: out.append({'path':item,'error':str(exc)})
    emit({'certificates':out},a.pretty); return 1 if any('error' in x for x in out) else 0

if __name__ == '__main__':
    raise SystemExit(main())
