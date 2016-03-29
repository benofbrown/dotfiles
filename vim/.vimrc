execute pathogen#infect()
syntax on
set shiftwidth=2 smarttab expandtab tabstop=2
set nocompatible
set background=dark
set spelllang=en_gb

if has("autocmd")
  augroup vimrcEx
  autocmd!

  autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

  autocmd BufReadPost *.run set filetype=sh
  autocmd BufReadPost *.gradle set filetype=groovy

  if v:version >= 703
    autocmd FileType c setlocal colorcolumn=81
    autocmd FileType groovy setlocal colorcolumn=81
    autocmd FileType make setlocal colorcolumn=81
    autocmd FileType perl setlocal colorcolumn=81
    autocmd FileType puppet setlocal colorcolumn=81
    autocmd FileType python setlocal colorcolumn=80
    autocmd FileType sh setlocal colorcolumn=81
    autocmd FileType tex setlocal colorcolumn=81
  endif

  autocmd FileType c call ToggleTabs()
  autocmd FileType c setlocal number path=.,/usr/include,/usr/include/x86_64-linux-gnu,,
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType go setlocal nosmarttab noet ts=4
  autocmd FileType go setlocal number
  autocmd FileType groovy setlocal number shiftwidth=4 tabstop=4
  autocmd FileType java setlocal number
  autocmd FileType make call ToggleTabs()
  autocmd FileType make setlocal nosmarttab noet tabstop=4
  autocmd FileType markdown setlocal shiftwidth=4 tabstop=4
  autocmd FileType perl call ToggleTabs()
  autocmd FileType perl setlocal number textwidth=80
  autocmd FileType puppet setlocal number
  autocmd FileType python call ToggleTabs()
  autocmd FileType python setlocal number
  autocmd FileType python setlocal shiftwidth=4 tabstop=4 autoindent
  autocmd FileType ruby setlocal number
  autocmd FileType sh setlocal number
  autocmd FileType tex setlocal textwidth=80

  augroup END
endif

set cursorline

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

noremap <F1> <Esc>
inoremap jj <Esc>

" unmap u for undo, it's annoying
nnoremap u <Nop>
nnoremap <C-u> :undo<cr>

nnoremap <leader>n :set invnu<cr>
nnoremap <leader>h :set invhlsearch<cr>
nnoremap <leader>s :set invspell<cr>
nnoremap <silent> <leader>T :NERDTreeToggle<cr>
nnoremap <silent> <leader><tab> :call ToggleTabs()<cr>
nnoremap <silent> <leader>a :call ToggleNonASCII()<cr>
nnoremap <silent> <leader>B :let b:is_bash=1<cr>:setf sh<cr>
nnoremap <silent> <leader>w :Ack <cword><cr>
nnoremap <silent> <leader>S :SyntasticReset<cr>
nnoremap <silent> <leader>; :TagbarToggle<cr>

nnoremap <C-n> :bn<cr>


colorscheme solarized

set ruler

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

let g:netrw_liststyle=3
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['java', 'eruby'] }
