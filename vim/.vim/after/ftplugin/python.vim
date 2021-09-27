if v:version >= 703
  setlocal colorcolumn=101
endif
call ToggleTabs()
setlocal number makeprg=pep8\ %
setlocal shiftwidth=4 tabstop=4 autoindent
let g:ale_python_pylint_executable = 'pylint3'
