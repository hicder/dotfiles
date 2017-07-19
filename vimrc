source ~/stuff/master.vimrc

" don't bother with vi compatibility
set nocompatible

" enable syntax highlighting
syntax enable

" configure Vundle
filetype on " without this vim emits a zero exit status, later, because of :ft off
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
  source ~/.vimrc.bundles.local
endif

call vundle#end()

" ensure ftdetect et al work by including this after the Vundle stuff
filetype plugin indent on

set autoindent
set smartindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set ignorecase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=2                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full

" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" keyboard shortcuts
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <leader>a :Ag<space>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
"nnoremap <leader>f :NERDTreeFind<CR>
" nnoremap <leader>t :CtrlP<CR>
" nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>t :YcmCompleter GoTo<CR>
nnoremap <leader><space> :call whitespace#strip_trailing()<CR>
nnoremap <leader>g :GitGutterToggle<CR>
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
" noremap <C-o> <Esc>:vs<Space>
noremap <leader>q <Esc>:AV<CR>

" tab shortcut
noremap <leader>1 <Esc>1gt
noremap <leader>2 <Esc>2gt
noremap <leader>3 <Esc>3gt
noremap <leader>4 <Esc>4gt
noremap <leader>5 <Esc>5gt
noremap <leader>6 <Esc>6gt
noremap <leader>mt1 <Esc>:tabm 0<CR>
noremap <leader>mt2 <Esc>:tabm 1<CR>
noremap <leader>mt3 <Esc>:tabm 2<CR>
noremap <leader>mt4 <Esc>:tabm 3<CR>
noremap <leader>mtl <Esc>:tabm<CR>

" folding shortcuts
noremap <leader>fa <Esc>za<CR>
noremap <leader>fm <Esc>zM<CR>
noremap <leader>fo <Esc>zo<CR>
noremap <leader>fc <Esc>zc<CR>
noremap <leader>fr <Esc>zr<CR>
noremap <leader>fR <Esc>zR<CR>


"map <leader>1 :1wincmd w<CR>
"map <leader>2 :2wincmd w<CR>
"map <leader>3 :3wincmd w<CR>
"map <leader>4 :4wincmd w<CR>
"map <leader>5 :5wincmd w<CR>
"map <leader>6 :6wincmd w<CR>
"map <leader>7 :7wincmd w<CR>
"map <leader>8 :8wincmd w<CR>
"map <leader>9 :9wincmd w<CR>
"map <leader>v :set paste<CR>


" in case you forgot to sudo
cnoremap w!! %!sudo tee > /dev/null %

" plugin settings
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" fdoc is yaml
" autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
" md is markdown
" autocmd BufRead,BufNewFile *.md set filetype=markdown
" autocmd BufRead,BufNewFile *.md set spell
" extra rails.vim help
" autocmd User Rails silent! Rnavcommand decorator      app/decorators            -glob=**/* -suffix=_decorator.rb
" autocmd User Rails silent! Rnavcommand observer       app/observers             -glob=**/* -suffix=_observer.rb
" autocmd User Rails silent! Rnavcommand feature        features                  -glob=**/* -suffix=.feature
" autocmd User Rails silent! Rnavcommand job            app/jobs                  -glob=**/* -suffix=_job.rb
" autocmd User Rails silent! Rnavcommand mediator       app/mediators             -glob=**/* -suffix=_mediator.rb
" autocmd User Rails silent! Rnavcommand stepdefinition features/step_definitions -glob=**/* -suffix=_steps.rb
" automatically rebalance windows on vim resize
" autocmd VimResized * :wincmd =

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Don't copy the contents of an overwritten selection.
vnoremap p "_dP

" Go crazy!
if filereadable(expand("~/.vimrc.local"))
  " In your .vimrc.local, you might like:
  "
  " set autowrite
  " set nocursorline
  " set nowritebackup
  " set whichwrap+=<,>,h,l,[,] " Wrap arrow keys between lines
  "
  " autocmd! bufwritepost .vimrc source ~/.vimrc
  " noremap! jj <ESC>
  source ~/.vimrc.local
endif

set tags=./tags;/
" YCM must use the same Python version it's linked against
let g:ycm_path_to_python_interpreter = '/home/hieup/fbsource/fbcode/third-party-buck/gcc-5-glibc-2.23/build/python/2.7/bin/python2.7'
" Default ycm_extra_conf.py for fbcode
let g:ycm_global_ycm_extra_conf = '/home/hieup/.vim/bundle/YouCompleteMe/ycm_extra_conf_fbcode.py'

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_error_symbol = 'x'
let g:ycm_warning_symbol = '!'
let g:cpp_member_variable_highlight = 1

nnoremap <leader>y :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>pg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>pd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>pc :YcmCompleter GoToDeclaration<CR>
