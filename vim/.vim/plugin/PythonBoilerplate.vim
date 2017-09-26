function! PythonBoilerplate()
  set filetype=python
  exe "normal i#!/usr/bin/env python3\n"
  exe "normal o\ndef main():\n\tpass\n\n"
  exe "normal oif __name__ == '__main__':\n\tmain()"
  exe "normal 4k^"
endfunction

function! Python2Boilerplate()
  set filetype=python
  exe "normal i#!/usr/bin/env python\n# -*- coding: utf-8 -*-\n\n"
  exe "normal ofrom __future__ import print_function\n"
  exe "normal o\ndef main():\n\tpass\n\n"
  exe "normal oif __name__ == '__main__':\n\tmain()"
  exe "normal 4k^"
endfunction
