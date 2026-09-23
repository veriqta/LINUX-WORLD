#!/usr/bin/env python3
import argparse,socket,time
p=argparse.ArgumentParser();p.add_argument('host');p.add_argument('port',type=int);p.add_argument('--timeout',type=float,default=5);a=p.parse_args();start=time.monotonic()
try:
 s=socket.create_connection((a.host,a.port),a.timeout);s.close()
except OSError as exc: print(f'CRITICAL: {exc}');raise SystemExit(2)
print(f'OK: latency_ms={(time.monotonic()-start)*1000:.1f}')
