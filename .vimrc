" vundle set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rakr/vim-two-firewatch'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'AutoComplPop'
Plugin 'henrik/vim-indexed-search'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'honza/vim-snippets'
Plugin 'sirver/ultisnips'
Plugin 'awk.vim'
call vundle#end()

syntax on
filetype plugin indent on
set number relativenumber
set cursorline
syntax enable

" format
set autoindent smartindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set backspace=2

" search
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

set termguicolors

set runtimepath^=~/.vim/bundle/ctrlp.vim
set background=dark " or light if you prefer the light version
colo two-firewatch
let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme
"set mouse=a

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" key mappings
noremap k gk
noremap j gj

let mapleader=","
let localmapleader=","

noremap <Leader>y "*y
noremap <Leader>p "*p

vnoremap . :normal .<CR>
vnoremap @ :normal! @

" save and quit
noremap <C-w> :w<cr>

" auto append closing characters
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap {<CR> {<CR>}<Esc>O

" Movement across splits
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l

" Resize window splits
nnoremap <Up>    3<C-w>-
nnoremap <Down>  3<C-w>+
nnoremap <Left>  3<C-w><
nnoremap <Right> 3<C-w>>

nnoremap _ :split<cr>
nnoremap \| :vsplit<cr>

nnoremap <Leader>/ :nohlsearch<CR>

vmap s :!sort<CR>
vmap u :!sort -u<CR>

noremap <C-a> :Ag<CR>
noremap <C-h> :History:<CR>

" Write file when you forget to use sudo
nnoremap <C-b> :CtrlPBuffer<cr>

" TODO Merge the NERDTreeFind with Toggle inteilligently.
nnoremap <C-g> :NERDTreeToggle<cr>

let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$',
                   \ '\.so$', '\.egg$', '^\.git$', '\.cmi', '\.cmo' ]
let NERDTreeHighlightCursorline=1
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>

noremap <Leader>s :%s/
noremap <Leader>g :Ggrep -i 
noremap <Leader>p :%w !pbcopy<CR>
noremap <Leader>a :%!awk 

set noswapfile

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

