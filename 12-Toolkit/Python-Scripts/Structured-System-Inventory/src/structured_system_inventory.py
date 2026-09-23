#!/usr/bin/env python3
"""Collects a structured local system inventory."""
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
    import os, platform, shutil, socket
    a=parser().parse_args()
    mem={}
    try:
        for line in Path('/proc/meminfo').read_text().splitlines():
            k,v=line.split(':',1); mem[k]=v.strip()
    except OSError: pass
    emit({'hostname':socket.getfqdn(),'platform':platform.platform(),'kernel':platform.release(),'cpus':os.cpu_count(),'memory':mem,'root_usage':shutil.disk_usage('/')._asdict()},a.pretty)
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
