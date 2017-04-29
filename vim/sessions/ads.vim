" ~/.vim/sessions/ads.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 29 March 2016 at 08:15:16.
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
badd +41 sigrid/trainer/ads/data_forwarder/AdsDataForwarder.cpp
badd +38 /data/users/hieup/fbsource/fbcode/sigrid/trainer/ads/data_forwarder/AdsDataForwarder.h
badd +50 sigrid/trainer/ads/DataForwarderProcessor.cpp
badd +21 /data/users/hieup/fbsource/fbcode/sigrid/trainer/ads/DataForwarderProcessor.h
badd +40 sigrid/trainer/ads/DataPipelineProcessor.cpp
badd +1 /data/users/hieup/fbsource/fbcode/sigrid/trainer/ads/DataPipelineProcessor.h
badd +84 configerator/structs/sigrid/trainer/ads/data_pipeline/data_pipeline.thrift
badd +67 sigrid/trainer/ads/data_forwarder/ServerHandler.cpp
badd +1 /data/users/hieup/fbsource/fbcode/sigrid/trainer/ads/data_forwarder/ServerHandler.h
badd +1 sigrid/trainer/ads/data_forwarder/Main.cpp
badd +7 ./sigrid/trainer/ads/if/data_forwarder_config.thrift
badd +37 sigrid/trainer/ads/data_forwarder/AdsDataForwarderTransform.h
badd +58 sigrid/trainer/ads/data_forwarder/AdsDataForwarderTransform.cpp
badd +0 sigrid/trainer/ads/data_forwarder/Processor.h
badd +59 /data/users/hieup/fbsource/fbcode/sigrid/trainer/ads/data_forwarder/Processor.cpp
badd +0 sigrid/trainer/ads/data_pipeline/Pipeline.h
badd +0 /data/users/hieup/fbsource/fbcode/sigrid/trainer/ads/data_pipeline/Pipeline.cpp
argglobal
silent! argdel *
argadd sigrid/trainer/ads/data_forwarder/AdsDataForwarder.cpp
set stal=2
edit sigrid/trainer/ads/data_forwarder/AdsDataForwarder.cpp
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
let s:l = 49 - ((28 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 0
wincmd w
argglobal
edit /data/users/hieup/fbsource/fbcode/sigrid/trainer/ads/data_forwarder/AdsDataForwarder.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 42 - ((28 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 021|
wincmd w
argglobal
edit sigrid/trainer/ads/data_forwarder/AdsDataForwarderTransform.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 18 - ((10 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 09|
wincmd w
argglobal
edit sigrid/trainer/ads/data_forwarder/AdsDataForwarderTransform.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 56 - ((25 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 028|
wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 91 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 90 + 182) / 364)
tabedit sigrid/trainer/ads/data_forwarder/Processor.h
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
let s:l = 26 - ((25 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0
tabedit sigrid/trainer/ads/DataPipelineProcessor.cpp
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
exe 'vert 3resize ' . ((&columns * 88 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 93 + 182) / 364)
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
let s:l = 44 - ((43 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 08|
wincmd w
argglobal
edit /data/users/hieup/fbsource/fbcode/sigrid/trainer/ads/DataPipelineProcessor.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 33 - ((32 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 04|
wincmd w
argglobal
edit sigrid/trainer/ads/data_forwarder/ServerHandler.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 65 - ((63 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
65
normal! 0
wincmd w
argglobal
edit /data/users/hieup/fbsource/fbcode/sigrid/trainer/ads/data_forwarder/ServerHandler.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 26 - ((25 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 045|
wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 88 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 93 + 182) / 364)
tabedit configerator/structs/sigrid/trainer/ads/data_pipeline/data_pipeline.thrift
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
let s:l = 56 - ((55 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 0
wincmd w
argglobal
edit sigrid/trainer/ads/data_pipeline/Pipeline.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 39) / 79)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit /data/users/hieup/fbsource/fbcode/sigrid/trainer/ads/data_pipeline/Pipeline.cpp
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
normal! 0
wincmd w
argglobal
edit sigrid/trainer/ads/data_forwarder/Main.cpp
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
normal! 07|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 90 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 91 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 90 + 182) / 364)
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

2wincmd w
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
