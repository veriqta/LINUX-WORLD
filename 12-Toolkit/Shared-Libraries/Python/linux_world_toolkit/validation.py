from pathlib import Path
def existing_file(value: str)->Path:
 p=Path(value)
 if not p.is_file(): raise ValueError(f'not a readable file: {value}')
 return p
def positive_int(value: str)->int:
 n=int(value)
 if n<1: raise ValueError('must be positive')
 return n
