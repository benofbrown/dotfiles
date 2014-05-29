function! PuppetClass()
  let classname = expand("%:p:h:h:t") . "::" . expand("%:t:r")
  exe "normal iclass " . classname . " {\n\n}"
  exe "normal k"
endfunction
