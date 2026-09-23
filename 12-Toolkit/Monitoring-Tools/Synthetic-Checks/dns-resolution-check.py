#!/usr/bin/env python3
import argparse,socket,time
p=argparse.ArgumentParser();p.add_argument('name');p.add_argument('--timeout',type=float,default=5);a=p.parse_args();socket.setdefaulttimeout(a.timeout);start=time.monotonic()
try: values=socket.getaddrinfo(a.name,None)
except OSError as exc: print(f'CRITICAL: {exc}');raise SystemExit(2)
print(f'OK: addresses={len(values)} latency_ms={(time.monotonic()-start)*1000:.1f}')
