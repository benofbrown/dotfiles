function! ToggleTabs()
  if ! exists("b:showtabs")
    let b:showtabs = 0
  endif

  if b:showtabs == 0
    if &ft == "make"
      syn match ErrorMsg /^ \+/ containedin=ALL
    else
      syn match ErrorMsg /\t/ containedin=ALL
    endif
    syn match ErrorMsg /\s*$/ containedin=ALL
    let b:showtabs = 1
  else
    syntax off
    syntax on
    let b:showtabs = 0
  endif
endfunction
