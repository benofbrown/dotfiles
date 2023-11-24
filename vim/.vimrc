execute pathogen#infect()
Helptags
set term=rxvt-unicode-256color
syntax on
filetype plugin on
set shiftwidth=2 smarttab expandtab tabstop=2
set nocompatible
set nomodeline
set background=dark
set spelllang=en_gb

set listchars=eol:↵,tab:⇥•,trail:•

if has("autocmd")
  augroup vimrcEx
  autocmd!

  autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

  autocmd BufReadPost *.run set filetype=sh
  autocmd BufReadPost *.gradle set filetype=groovy
  autocmd BufReadPost Jenkinsfile set filetype=groovy

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
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tagbar#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

let g:netrw_liststyle=3
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
