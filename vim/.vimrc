let g:ale_completion_enabled=1
execute pathogen#infect()

call plug#begin()
" Run :PlugInstall to install the plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

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

set wildignore+=*.o,*/node_modules/*,.git/*

if has("autocmd")
  augroup vimrcEx
  autocmd!

  autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

  autocmd BufReadPost *.run set filetype=sh

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

nmap <silent> <leader>t :FZF<cr>
nmap <silent> <leader>b :Buffers<cr>

let g:airline#extensions#ale#enabled = 1
nmap <silent> <leader>j <Plug>(ale_next_wrap)
nmap <silent> <leader>k <Plug>(ale_previous_wrap)
nmap <silent> <leader>g <Plug>(ale_go_to_definition)
nmap <silent> <leader>i <Plug>(ale_go_to_implementation)
nmap <silent> <leader>r <Plug>(ale_find_references)
nmap <silent> <leader>f <Plug>(ale_fix)

let g:vimspector_enable_mappings = 'HUMAN'
nmap <silent> <leader>R :call vimspector#Reset()<cr>
nmap <silent> <leader>e <Plug>VimspectorBalloonEval
