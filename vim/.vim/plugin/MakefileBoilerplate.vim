function! MakefileBoilerplate()
  set filetype=make
  let l:exe=expand('%:p:h:t')
  exe "normal iEXE = ".l:exe."\n\nall: $(EXE)\n\n$(EXE): main.go\ngo fmt ./..."
  exe "normal ogo build\n\nclean:\nrm -f $(EXE)\n\n.PHONY: all clean"
  exe "normal gg2W"
endfunction
