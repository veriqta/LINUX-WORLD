#!/usr/bin/env python3
"""Checks status, latency, and optional response text for an HTTP endpoint."""
import argparse,time,urllib.request,urllib.error
p=argparse.ArgumentParser(description=__doc__);p.add_argument('url');p.add_argument('--timeout',type=float,default=5);p.add_argument('--contains');a=p.parse_args()
start=time.monotonic()
try:
    with urllib.request.urlopen(a.url,timeout=a.timeout) as r: body=r.read(1048576).decode(errors='replace'); code=r.status
except Exception as exc:
    print(f'CRITICAL: {type(exc).__name__}: {exc}');raise SystemExit(2)
ms=(time.monotonic()-start)*1000
if not 200<=code<400 or (a.contains and a.contains not in body): print(f'CRITICAL: status={code} latency_ms={ms:.1f}');raise SystemExit(2)
print(f'OK: status={code} latency_ms={ms:.1f}')
