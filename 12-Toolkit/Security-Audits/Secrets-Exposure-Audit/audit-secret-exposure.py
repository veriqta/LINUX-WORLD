#!/usr/bin/env python3
"""Searches text files for high-confidence secret patterns with redacted findings."""
import argparse,re,pathlib,hashlib
p=argparse.ArgumentParser(description=__doc__);p.add_argument('root');p.add_argument('--max-bytes',type=int,default=1048576);a=p.parse_args();patterns=[re.compile(r'AKIA[0-9A-Z]{16}'),re.compile(r'-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----'),re.compile(r'(?i)(?:password|token|secret)\s*[:=]\s*["\']?[^\s"\']{12,}')];count=0
for f in pathlib.Path(a.root).rglob('*'):
 if not f.is_file():continue
 try:
  if f.stat().st_size>a.max_bytes:continue
  text=f.read_text(errors='ignore')
 except OSError:continue
 for n,line in enumerate(text.splitlines(),1):
  if any(x.search(line) for x in patterns):print(f'{f}:{n}: potential secret sha256={hashlib.sha256(line.encode()).hexdigest()[:12]}');count+=1
raise SystemExit(1 if count else 0)
