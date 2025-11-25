setlocal nosmarttab noexpandtab tabstop=4 shiftwidth=4
setlocal number
let g:ale_linters = {
  \ 'go': ['gopls', 'govet', 'gofmt', 'golangci-lint'],
  \}
nmap <silent> <C-]> <Plug>(ale_go_to_definition)

function! DebugCurrent()
  call vimspector#LaunchWithConfigurations( {
    \  "attach": {
    \    "adapter": "delve",
    \    "filetypes": [
    \      "go"
    \    ],
    \    "variables": {
    \     "dlvFlags": "--check-go-version=false"
    \    },
    \    "configuration": {
    \      "request": "launch",
    \      "program": "${workspaceFolder}",
    \      "mode": "debug",
    \      "console": "integratedTerminal",
    \    }
    \  }
    \ } )
endfunction

nmap <silent> <leader>d :call DebugCurrent()<cr>
