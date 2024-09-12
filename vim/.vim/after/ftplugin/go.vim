setlocal nosmarttab noexpandtab tabstop=4 shiftwidth=4
setlocal number
let g:ale_linters = {
  \ 'go': ['gopls', 'govet', 'gofmt', 'golangci-lint'],
  \}
nmap <silent> <C-]> <Plug>(ale_go_to_definition)
