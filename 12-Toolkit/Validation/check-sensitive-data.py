#!/usr/bin/env python3
import pathlib,re,sys
root=pathlib.Path(__file__).resolve().parents[1];patterns=[re.compile(r'AKIA[0-9A-Z]{16}'),re.compile(r'-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----')];errors=[]
for f in root.rglob('*'):
 if not f.is_file() or f.suffix in {'.zip','.pyc'} or '__pycache__' in f.parts:continue
 try:text=f.read_text(errors='ignore')
 except OSError:continue
 if any(p.search(text) for p in patterns) and f.name!='check-sensitive-data.py':errors.append(str(f.relative_to(root)))
print('\n'.join(errors) if errors else 'PASS: no committed secret material');raise SystemExit(1 if errors else 0)
