function! MakefileBoilerplate()
  set filetype=make
  let l:exe=expand('%:p:h:t')
  exe "normal iEXE = ".l:exe."\n\n$(EXE): main.go\n\tgo fmt ./...\ngo build\n"
  exe "normal oall: $(EXE)\n\nclean:\n\<tab>rm -f $(EXE)\n\n.PHONY: all clean"
  exe "normal gg2W"
endfunction
