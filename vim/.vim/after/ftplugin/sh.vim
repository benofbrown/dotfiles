if v:version >= 703
  setlocal colorcolumn=81
endif
setlocal number
let g:ale_linters = {'sh': ['shellcheck']}
