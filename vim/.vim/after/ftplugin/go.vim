setlocal nosmarttab noexpandtab tabstop=4 shiftwidth=4
setlocal number
"let b:ale_linters = ['gobuild']
let g:ale_linters = {
  \ 'go': ['gopls'],
  \}
nmap <silent> <C-]> <Plug>(ale_go_to_definition)
