call ToggleTabs()
setlocal shiftwidth=4 tabstop=4 autoindent number colorcolumn=119
let g:ale_linters = {'python': ['ruff', 'pyright']}
let g:ale_fixers = {'python': ['ruff', 'ruff_format']}
let g:ale_python_pyright_executable = '/home/ben/data/venv/bin/pyright-langserver'
let g:ale_python_pyright_config = {
\ 'python': {
\   'pythonPath': '/home/ben/data/venv/bin/python',
\   'analysis': {
\     'typeCheckingMode': 'off',
\     'extraPaths': [
\         '/home/ben/git/Repo/CoreLibrary',
\         '/home/ben/git/Repo/WebApp',
\     ],
\   }
\ }
\}

nmap <silent> <C-]> <Plug>(ale_go_to_definition)

function! DebugCurrent()
  call vimspector#LaunchWithConfigurations( {
    \  "attach": {
    \    "adapter": "debugpy",
    \    "configuration": {
    \      "request": "launch",
    \      "type": "python",
    \      "cwd": "${workspaceRoot}",
    \      "python": "/home/ben/data/venv/bin/python",
    \      "program": "${file}",
    \      "stopOnEntry": "false",
    \      "console": "integratedTerminal",
    \    },
    \   "breakpoints": {
    \     "exception": {
    \       "uncaught": "Y",
    \       "raised": "",
    \       "userUnhandled": "",
    \   },
    \  }
    \ }} )
endfunction

nmap <silent> <leader>d :call DebugCurrent()<cr>
