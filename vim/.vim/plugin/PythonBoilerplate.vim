function! PythonBoilerplate()
  set filetype=python
  exe "normal i#!/usr/bin/env python3\n"
  exe "normal o\ndef main():\n\tpass\n\n"
  exe "normal oif __name__ == '__main__':\n\tmain()"
  exe "normal 4k^"
endfunction
