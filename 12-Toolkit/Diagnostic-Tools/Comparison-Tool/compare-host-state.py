#!/usr/bin/env python3
"""Compares two JSON host snapshots and reports differences."""
import argparse,json
p=argparse.ArgumentParser(description=__doc__);p.add_argument('baseline');p.add_argument('observed');p.add_argument('--pretty',action='store_true');a=p.parse_args()
left=json.load(open(a.baseline));right=json.load(open(a.observed));keys=sorted(set(left)|set(right));diff={k:{'baseline':left.get(k),'observed':right.get(k)} for k in keys if left.get(k)!=right.get(k)};print(json.dumps({'differences':diff},indent=2 if a.pretty else None));raise SystemExit(1 if diff else 0)
