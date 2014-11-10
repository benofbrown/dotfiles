execute pathogen#infect()
syntax on
set sw=2 smarttab et ts=2
set nocompatible
set bg=dark
set spelllang=en_gb

if has("autocmd")
  augroup vimrcEx
  au!

  autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

  autocmd BufReadPost *.run set filetype=sh

  if v:version >= 703
    autocmd FileType perl setlocal cc=81
    autocmd FileType puppet setlocal cc=81
    autocmd FileType make setlocal cc=81
    autocmd FileType sh setlocal cc=81
    autocmd FileType c setlocal cc=81
    autocmd FileType python setlocal cc=80
  endif

  autocmd FileType java setlocal number
  autocmd FileType perl setlocal number tw=80
  autocmd FileType perl call ToggleTabs()
  autocmd FileType python setlocal number
  autocmd FileType python call ToggleTabs()
  autocmd FileType python setlocal sw=4 ts=4
  autocmd FileType gitcommit setlocal tw=72
  autocmd FileType ruby setlocal number
  autocmd FileType puppet setlocal number
  autocmd FileType sh setlocal number
  autocmd FileType make setlocal nosmarttab noet ts=4
  autocmd FileType make call ToggleTabs()
  autocmd FileType c call ToggleTabs()
  autocmd FileType c setlocal number

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
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader><tab> :call ToggleTabs()<cr>
nnoremap <leader>a :call ToggleNonASCII()<cr>
nnoremap <silent> <leader>b :let b:is_bash=1<cr>:setf sh<cr>

nnoremap <C-n> :bn<cr>

colorscheme solarized

set ruler

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

let g:netrw_liststyle=3
