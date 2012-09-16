"# vim:set fileencoding=utf-8:
"encoding utf8
function! Manbou()
python << EOM
import vim
import os
import sys
import codecs
sys.stdout = codecs.getwriter('utf_8')(sys.stdout)
sys.path.append(os.path.join(os.getcwd(), "autoload"))

import manbou
b = vim.current.buffer

b[:] = [ line.encode('utf8') for line in manbou.long.splitlines()]
EOM
endfunction


