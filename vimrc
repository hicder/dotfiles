" source ~/stuff/master.vimrc

" don't bother with vi compatibility
set nocompatible

" enable syntax highlighting
" syntax enable

" configure Vundle
filetype on " without this vim emits a zero exit status, later, because of :ft off
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
set rtp+=/usr/local/share/myc/vim
" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
  source ~/.vimrc.bundles.local
endif

call vundle#end()
call glaive#Install()

call plug#begin('~/.vim/plugged')
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

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
set noexpandtab                                                " expand tabs to spaces
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
set splitright

" Enable basic mouse behavior such as resizing buffers.
set mouse=a
" if exists('$TMUX')  " Support resizing in tmux
  " set ttymouse=xterm2
" endif

" keyboard shortcuts
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <leader>a :Ag<space>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>ft :NERDTreeFind<CR>
nnoremap <leader><space> :call whitespace#strip_trailing()<CR>
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
noremap <leader>q <Esc>:AV<CR>
noremap <leader>o <Esc>:tabo<CR>
inoremap <C-j> <Esc>

" tab shortcut
nnoremap <leader>1 <Esc>1gt
nnoremap <leader>2 <Esc>2gt
nnoremap <leader>3 <Esc>3gt
nnoremap <leader>4 <Esc>4gt
nnoremap <leader>5 <Esc>5gt
nnoremap <leader>6 <Esc>6gt
nnoremap <leader>7 <Esc>7gt
nnoremap <leader>8 <Esc>8gt
nnoremap <C-m> <Esc>:tabnext<CR>
nnoremap <C-n> <Esc>:tabprev<CR>
nnoremap <leader>mt1 <Esc>:tabm 0<CR>
nnoremap <leader>mt2 <Esc>:tabm 1<CR>
nnoremap <leader>mt3 <Esc>:tabm 2<CR>
nnoremap <leader>mt4 <Esc>:tabm 3<CR>
nnoremap <leader>mtl <Esc>:tabm<CR>
nnoremap <leader>= <C-W>=

" folding shortcuts
nnoremap <leader>fa <Esc>za<CR>
nnoremap <leader>fm <Esc>zM<CR>
nnoremap <leader>fo <Esc>zo<CR>
nnoremap <leader>fc <Esc>zc<CR>
nnoremap <leader>fr <Esc>zr<CR>
nnoremap <leader>fR <Esc>zR<CR>
nnoremap <leader>t <Esc>:FZF<CR>

" ctags
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

" paste
nnoremap <leader>p <Esc>:set paste<CR>
nnoremap <leader>np <Esc>:set nopaste<CR>

" in case you forgot to sudo
cnoremap w!! %!sudo tee > /dev/null %

" plugin settings
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

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
  source ~/.vimrc.local
endif

set tags=./tags;/
