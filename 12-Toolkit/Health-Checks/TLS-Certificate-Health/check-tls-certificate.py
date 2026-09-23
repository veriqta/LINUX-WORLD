#!/usr/bin/env python3
"""Checks remote TLS certificate expiry using the Python standard library."""
import argparse,socket,ssl,datetime
p=argparse.ArgumentParser(description=__doc__);p.add_argument('host');p.add_argument('--port',type=int,default=443);p.add_argument('--warning-days',type=int,default=30);p.add_argument('--timeout',type=float,default=5);a=p.parse_args()
try:
    ctx=ssl.create_default_context()
    with socket.create_connection((a.host,a.port),a.timeout) as raw:
        with ctx.wrap_socket(raw,server_hostname=a.host) as tls: cert=tls.getpeercert()
    end=datetime.datetime.strptime(cert['notAfter'],'%b %d %H:%M:%S %Y %Z').replace(tzinfo=datetime.timezone.utc);days=(end-datetime.datetime.now(datetime.timezone.utc)).days
except Exception as exc:
    print(f'UNKNOWN: {type(exc).__name__}: {exc}');raise SystemExit(3)
print(f'{"OK" if days>a.warning_days else "WARNING" if days>=0 else "CRITICAL"}: days_remaining={days} expires={end.isoformat()}');raise SystemExit(0 if days>a.warning_days else 1 if days>=0 else 2)
