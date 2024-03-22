call ToggleTabs()
setlocal shiftwidth=4 tabstop=4 autoindent number colorcolumn=119
let g:ale_linters = {'python': ['ruff', 'pyright']}
let g:ale_fixers = {'python': ['ruff', 'ruff_format']}
let g:ale_python_ruff_executable = '/home/ben/data/venv/bin/ruff'
let g:ale_python_pyright_executable = '/home/ben/data/venv/bin/pyright-langserver'
let g:ale_python_pyright_config = {
\ 'python': {
\   'pythonPath': '/home/ben/data/venv/bin/python',
\   'analysis': {
\     'typeCheckingMode': 'off',
\     'extraPaths': ['/home/ben/git/Repo/CoreLibrary'],
\   }
\ }
\}

nmap <silent> <C-]> <Plug>(ale_go_to_definition)
