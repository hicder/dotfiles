" ~/.vim/sessions/data.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 30 March 2016 at 14:51:41.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'desert' | colorscheme desert | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /data/users/hieup/fbsource/fbcode
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +37 sigrid/trainer/search/data_forwarder/SearchDataForwarderServer.cpp
badd +1 sigrid/trainer/search/data_forwarder/SearchDataForwarderServiceHandler.h
badd +1 sigrid/trainer/search/data_forwarder/SearchDataForwarderServiceHandler.cpp
badd +1 sigrid/trainer/search/data_forwarder
badd +20 sigrid/trainer/search/data_forwarder/SearchDataForwarder.cpp
badd +1 sigrid/trainer/search/data_forwarder/SearchDataForwarder.h
badd +1 sigrid/trainer/search/data_forwarder/SearchTrendingTransform.h
badd +1 sigrid/trainer/search/data_forwarder/SearchTrendingTransform.cpp
badd +28 sigrid/trainer/search/TrendingParserProcessor.h
badd +165 sigrid/trainer/search/TrendingParserProcessor.cpp
badd +47 ./sigrid/lib/open/OpenExampleBuilder.h
badd +45 /data/users/hieup/fbsource/fbcode/sigrid/lib/open/OpenExampleBuilder.cpp
badd +29 sigrid/trainer/search/data_forwarder/SearchDataForwarderConfigProvider.h
badd +1 sigrid/trainer/search/data_forwarder/SearchDataForwarderConfigProvider.cpp
badd +1 sigrid/trainer/search/data_forwarder/TARGETS
badd +1 sigrid/trainer/search/data_forwarder/search_data_forwarder.thrift
badd +0 sigrid/trainer/search/data_forwarder/TrendingParser.h
badd +0 /data/users/hieup/fbsource/fbcode/sigrid/trainer/search/data_forwarder/TrendingParser.cpp
argglobal
silent! argdel *
argadd sigrid/trainer/search/data_forwarder
set stal=2
edit sigrid/trainer/search/data_forwarder/SearchDataForwarderServer.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 89 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 38 - ((37 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 038|
wincmd w
argglobal
edit sigrid/trainer/search/data_forwarder/SearchDataForwarderServiceHandler.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 28 - ((20 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 05|
wincmd w
argglobal
edit sigrid/trainer/search/data_forwarder/SearchDataForwarderServiceHandler.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 28 - ((27 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 01|
wincmd w
argglobal
edit sigrid/trainer/search/data_forwarder/search_data_forwarder.thrift
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 89 + 181) / 362)
tabedit sigrid/trainer/search/data_forwarder/SearchDataForwarder.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 88 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 18 - ((17 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 020|
wincmd w
argglobal
edit sigrid/trainer/search/data_forwarder/SearchDataForwarder.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 27 - ((26 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 0
wincmd w
argglobal
edit sigrid/trainer/search/data_forwarder/SearchTrendingTransform.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 17 - ((16 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 0
wincmd w
argglobal
edit sigrid/trainer/search/data_forwarder/SearchTrendingTransform.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 88 + 181) / 362)
tabedit sigrid/trainer/search/data_forwarder/SearchDataForwarderConfigProvider.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 120 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 120 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 120 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 38 - ((37 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 011|
wincmd w
argglobal
edit sigrid/trainer/search/data_forwarder/SearchDataForwarderConfigProvider.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 41 - ((40 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
41
normal! 0
wincmd w
argglobal
edit sigrid/trainer/search/data_forwarder/TARGETS
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 47 - ((17 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 120 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 120 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 120 + 181) / 362)
tabedit sigrid/trainer/search/data_forwarder/TrendingParser.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 89 + 181) / 362)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
wincmd w
argglobal
edit /data/users/hieup/fbsource/fbcode/sigrid/trainer/search/data_forwarder/TrendingParser.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 93 - ((28 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
93
normal! 03|
wincmd w
argglobal
edit /data/users/hieup/fbsource/fbcode/sigrid/lib/open/OpenExampleBuilder.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
edit ./sigrid/lib/open/OpenExampleBuilder.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 32 - ((24 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 037|
wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 3resize ' . ((&columns * 90 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 89 + 181) / 362)
tabnext 4
set stal=1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 4
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
