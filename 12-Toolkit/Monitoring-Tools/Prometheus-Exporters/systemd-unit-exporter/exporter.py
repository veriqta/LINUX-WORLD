#!/usr/bin/env python3
"""Minimal educational HTTP metrics exporter. Bind to loopback by default."""
import argparse,http.server,time
p=argparse.ArgumentParser();p.add_argument('--listen',default='127.0.0.1');p.add_argument('--port',type=int,default=9109);a=p.parse_args()
class Handler(http.server.BaseHTTPRequestHandler):
 def do_GET(self):
  if self.path!='/metrics':self.send_response(404);self.end_headers();return
  body=f'linux_world_exporter_up 1\nlinux_world_exporter_time_seconds {time.time():.0f}\n'.encode();self.send_response(200);self.send_header('Content-Type','text/plain; version=0.0.4');self.send_header('Content-Length',str(len(body)));self.end_headers();self.wfile.write(body)
 def log_message(self,*args):pass
http.server.ThreadingHTTPServer((a.listen,a.port),Handler).serve_forever()
