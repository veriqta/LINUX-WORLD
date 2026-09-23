#!/usr/bin/env python3
"""Combines safe host security observations into a JSON report."""
import argparse,json,os,platform,pwd,subprocess,datetime
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--pretty',action='store_true');a=p.parse_args();uid0=[x.pw_name for x in pwd.getpwall() if x.pw_uid==0];data={'generated_at':datetime.datetime.now(datetime.timezone.utc).isoformat(),'hostname':platform.node(),'kernel':platform.release(),'uid0_accounts':uid0,'euid':os.geteuid()};print(json.dumps(data,indent=2 if a.pretty else None,sort_keys=True))
