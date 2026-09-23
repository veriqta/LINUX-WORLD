import subprocess, sys
from pathlib import Path

def test_help():
    tool=next((Path(__file__).parents[1]/'src').glob('*.py'))
    result=subprocess.run([sys.executable,str(tool),'--help'],capture_output=True,text=True)
    assert result.returncode==0
    assert 'usage:' in result.stdout.lower()
