function! PuppetClass()
  let classname = expand("%:p:h:h:t")
  if expand("%:t:r") != "init"
    let classname .= "::" . expand("%:t:r")
  endif
  let curyear = strftime("%Y")
  exe "normal i# == Class: " . classname . "\n#"
  exe "normal o# Provides \n#\n# === Parameters\n#\n# None\n#"
  exe "normal o# === Variables\n#\n# None\n#\n# === Copyright\n#"
  exe "normal o# Copyright (c) " . curyear . " WANdisco\n#"
  exe "normal oclass " . classname . " {\n\n}"
  exe "normal k"
endfunction
