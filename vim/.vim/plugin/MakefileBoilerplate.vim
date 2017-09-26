function! MakefileBoilerplate()
  set filetype=make
  exe "normal iCC = gcc\nCPPFLAGS = -Wall -pedantic -std=c99\nCFLAGS = -g\n"
  exe "normal oEXE = $(subst .c,,$(wildcard *.c))\n"
  exe "normal oall: $(EXE)\n\nclean:\n\<tab>rm -f $(EXE)\n\n.PHONY: all clean"
endfunction
