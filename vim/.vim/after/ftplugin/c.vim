if v:version >= 703
  setlocal colorcolumn=81
endif
call ToggleTabs()
setlocal number path=.,/usr/include,/usr/include/x86_64-linux-gnu,/usr/include/libxml2,,
let g:ale_c_parse_makefile = 1
