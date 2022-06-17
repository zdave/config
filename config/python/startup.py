import pprint
import shutil
import sys

def _my_displayhook(value):
    if value is not None:
        __builtins__._ = value
        pprint.pprint(value, width=shutil.get_terminal_size().columns)

sys.displayhook = _my_displayhook
