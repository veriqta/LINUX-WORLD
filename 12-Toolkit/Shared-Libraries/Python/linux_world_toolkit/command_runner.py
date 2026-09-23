import subprocess
def run(argv:list[str],timeout:float=30)->subprocess.CompletedProcess[str]:
 if not argv:raise ValueError('argv must not be empty')
 return subprocess.run(argv,text=True,capture_output=True,timeout=timeout,check=False,shell=False)
