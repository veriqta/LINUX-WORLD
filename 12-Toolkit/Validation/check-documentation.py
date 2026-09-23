#!/usr/bin/env python3
import pathlib,sys
root=pathlib.Path(__file__).resolve().parents[1];errors=[];internal={'Validation','Packaging','Bash','linux_world_toolkit','tests','src','examples','config','fixtures','systemd'}
for d in root.rglob('*'):
 if d.is_dir() and any(p.suffix in {'.sh','.py'} for p in d.iterdir() if p.is_file()) and not (d/'README.md').exists() and d.name not in internal:errors.append(f'missing README: {d.relative_to(root)}')
for f in root.rglob('*.md'):
 if not f.read_text(errors='replace').strip():errors.append(f'empty document: {f.relative_to(root)}')
print('\n'.join(errors) if errors else 'PASS: documentation');raise SystemExit(1 if errors else 0)
