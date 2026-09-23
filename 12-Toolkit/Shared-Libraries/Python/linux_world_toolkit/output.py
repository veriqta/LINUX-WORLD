import json
def emit_json(value:object,pretty:bool=False)->str:return json.dumps(value,indent=2 if pretty else None,sort_keys=True)
def status(code:int)->str:return {0:'OK',1:'WARNING',2:'CRITICAL',3:'UNKNOWN'}.get(code,'ERROR')
