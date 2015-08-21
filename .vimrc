set nocompatible

scriptencoding utf-8
set encoding=utf-8

let mapleader = ","
let maplocalleader = ","

" Make tab completion act like bash.

set wildmenu

set wildignore+=*/tmp/*
let g:ctrlp_show_hidden = 1

set nowritebackup
set nobackup
set noswapfile
set history=500
set ruler
set showcmd
set incsearch
set laststatus=2
set shiftwidth=2
set backspace=2
set tabstop=2
set shiftround
set expandtab
set textwidth=80
set colorcolumn=+1

set clipboard=unnamed

" Highlight search

set hls

" Show whitespace

set list listchars=tab:\ \ ,trail:·

execute pathogen#infect()
syntax on
filetype plugin indent on

" Color scheme.

color nori

" Show line numbers with gutter.

set number
set numberwidth=5

" Open new split panes to right and bottom, which feels more natural.

set splitbelow
set splitright

if has("autocmd")
  autocmd BufRead,BufNewFile *.md,*.markdown set filetype=md         autoread
  autocmd BufRead,BufNewFile *.html,*.erb    set filetype=html       autoread
  autocmd BufRead,BufNewFile *.scss          set filetype=scss       autoread
  autocmd BufRead,BufNewFile *.coffee        set filetype=coffee     autoread
  autocmd BufRead,BufNewFile *.js            set filetype=javascript autoread
  autocmd BufRead,BufNewFile *.es6           set filetype=javascript autoread

  " Automatically remove all trailing whitespace before saving.

  autocmd BufWritePre * :%s/\s\+$//e
endif

" Quicker window movement.

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Get off my lawn

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Up>    <nop>
inoremap <Down>  <nop>
inoremap <Left>  <nop>
inoremap <Right> <nop>

" Clear the search buffer.

nnoremap <Space>h :nohlsearch<cr>
nnoremap W :%s/ *$//g<cr><c-o><cr>:nohlsearch<cr>

