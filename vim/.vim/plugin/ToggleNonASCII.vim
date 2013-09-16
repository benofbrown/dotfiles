function! ToggleNonASCII()
  if ! exists("b:shownonascii")
    let b:shownonascii = 0
  endif

  if b:shownonascii == 0
    syn match ErrorMsg "[^\x20-\x7F]" containedin=ALL
    let b:shownonascii = 1
  else
    syntax off
    syntax on
    let b:shownonascii = 0
  endif
endfunction
