if v:version >= 703
  setlocal colorcolumn=101
endif
call ToggleTabs()
setlocal number makeprg=pep8\ %
setlocal shiftwidth=4 tabstop=4 autoindent
let g:ale_linters = {'python': ['ruff', 'pyright']}
let g:ale_python_pyright_executable = '/home/ben/data/python-3.11/bin/pyright-langserver'
