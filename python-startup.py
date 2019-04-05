import pprint
import sys
if sys.version_info[0] >= 3:
    import shutil

def _my_displayhook(value):
    if value is not None:
        __builtins__._ = value
        if sys.version_info[0] < 3:
            width = 80
        else:
            width = shutil.get_terminal_size().columns
        pprint.pprint(value, width=width)

sys.displayhook = _my_displayhook
