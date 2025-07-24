" ~/.vim/sessions/ranking.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 23 March 2016 at 17:43:17.
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
badd +27 sigrid/trainer/feed/data_forwarder/FeedDataForwarder.h
badd +21 sigrid/trainer/feed/data_forwarder/FeedDataForwarder.cpp
badd +40 sigrid/trainer/feed/data_forwarder/FeedDataForwarderTransform.h
badd +126 sigrid/trainer/feed/data_forwarder/FeedDataForwarderTransform.cpp
badd +14 sigrid/trainer/data_forwarder/TransformIf.h
badd +1 sigrid/trainer/data_forwarder/TransformIf.c
badd +11 search/speller/TrainingExample.h
badd +1 sigrid/trainer/data_forwarder/DispatcherIf.h
badd +39 sigrid/trainer/open/if/open_training_row.thrift
badd +31 sigrid/lib/features/if/definitions.thrift
badd +141 sigrid/lib/transforms/if/transforms.thrift
badd +2 sigrid/trainer/data_forwarder/DataForwarder.h
badd +1 /data/users/hieup/fbsource/fbcode/sigrid/trainer/data_forwarder/DataForwarder.cpp
badd +21 sigrid/trainer/single/OpenContext.h
badd +1 /data/users/hieup/fbsource/fbcode/sigrid/trainer/single/OpenContext.cpp
badd +1 sigrid/trainer/search/TrendingParserProcessor.h
badd +1 /data/users/hieup/fbsource/fbcode/sigrid/trainer/search/TrendingParserProcessor.cpp
badd +47 sigrid/trainer/search/tests/TrendingParserProcessorTest.cpp
badd +8 ./sigrid/trainer/pipeline/Processor-inl.h
argglobal
silent! argdel *
argadd sigrid/trainer/feed/data_forwarder/FeedDataForwarder.h
set stal=2
edit sigrid/trainer/feed/data_forwarder/FeedDataForwarderTransform.h
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
exe 'vert 1resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 92 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 89 + 182) / 364)
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
let s:l = 40 - ((39 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 012|
wincmd w
argglobal
edit sigrid/trainer/feed/data_forwarder/FeedDataForwarderTransform.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 368 - ((74 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
368
normal! 0
wincmd w
argglobal
edit sigrid/trainer/feed/data_forwarder/FeedDataForwarder.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 22 - ((21 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
wincmd w
argglobal
edit sigrid/trainer/feed/data_forwarder/FeedDataForwarder.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 22 - ((21 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 92 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 89 + 182) / 364)
tabedit sigrid/trainer/data_forwarder/DataForwarder.h
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
exe 'vert 1resize ' . ((&columns * 121 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 120 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 121 + 182) / 364)
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
let s:l = 2 - ((1 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
edit /data/users/hieup/fbsource/fbcode/sigrid/trainer/data_forwarder/DataForwarder.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 36 - ((6 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 0
wincmd w
argglobal
edit sigrid/trainer/data_forwarder/DispatcherIf.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 23 - ((22 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 121 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 120 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 121 + 182) / 364)
tabedit sigrid/trainer/data_forwarder/TransformIf.h
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
exe 'vert 1resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 91 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 90 + 182) / 364)
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
let s:l = 14 - ((13 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 017|
wincmd w
argglobal
edit sigrid/trainer/data_forwarder/DispatcherIf.h
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
normal! 021|
wincmd w
argglobal
edit sigrid/trainer/open/if/open_training_row.thrift
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 40 - ((39 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 0
wincmd w
argglobal
edit sigrid/lib/features/if/definitions.thrift
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
exe 'vert 1resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 91 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 90 + 182) / 364)
tabedit sigrid/trainer/single/OpenContext.h
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
exe 'vert 1resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 91 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 90 + 182) / 364)
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
edit /data/users/hieup/fbsource/fbcode/sigrid/trainer/single/OpenContext.cpp
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
normal! 0
wincmd w
argglobal
edit sigrid/trainer/search/TrendingParserProcessor.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 36 - ((35 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 046|
wincmd w
argglobal
edit /data/users/hieup/fbsource/fbcode/sigrid/trainer/search/TrendingParserProcessor.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 117 - ((70 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
117
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 91 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 90 + 182) / 364)
tabedit sigrid/trainer/search/tests/TrendingParserProcessorTest.cpp
set splitbelow splitright
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
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
let s:l = 92 - ((75 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
92
normal! 0
tabnext 5
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
tabnext 5
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
