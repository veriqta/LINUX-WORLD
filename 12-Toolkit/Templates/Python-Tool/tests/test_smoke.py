import subprocess,sys
from pathlib import Path
def test_help():
 tool=Path(__file__).parents[1]/'src'/'tool.py';assert subprocess.run([sys.executable,str(tool),'--help']).returncode==0
