import logging
def configure(verbose: bool=False)->logging.Logger:
 logging.basicConfig(level=logging.DEBUG if verbose else logging.INFO,format='%(asctime)sZ level=%(levelname)s message=%(message)s',datefmt='%Y-%m-%dT%H:%M:%S')
 return logging.getLogger('linux_world_toolkit')
