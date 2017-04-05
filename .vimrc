set nocompatible              " be iMproved, required
filetype off
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'whatyouhide/vim-gotham'
Plugin 'justinmk/vim-sneak'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'

call vundle#end()

filetype plugin indent on

set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set showcmd
set ruler
set nu
set t_Co=256
set relativenumber
set number

let python_highlight_all=1
syntax on

let mapleader = "\<Space>"

"git commit message configuration.
autocmd Filetype gitcommit setlocal spell textwidth=72

"no expandtab for Makefiles
autocmd BufNewFile,BufRead makefile,Makefile set noexpandtab

"Extra white space checker
highlight UnwanttedTab ctermbg=red guibg=darkred
highlight TrailSpace guibg=red ctermbg=darkred
match UnwanttedTab /\t/
match TrailSpace / \+$/

autocmd ColorScheme * highlight UnwanttedTab ctermbg=red guibg=red
autocmd ColorScheme * highlight TrailSpace guibg=red ctermbg=red

colorscheme gotham256

"excute pathogen plugin manager
"execute pathogen#infect()

"part of vim airline
"set nocompatible ruler laststatus=2 showcmd showmode number
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

set runtimepath^=~/.vim/bundle/ctrlp.vim

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>
