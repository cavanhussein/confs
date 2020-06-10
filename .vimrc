filetype plugin indent on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'whatyouhide/vim-gotham'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
call plug#end()

set hidden
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set showcmd
set ruler
set t_Co=256
set nu
set rnu
set number
set hlsearch

colorscheme gotham256

let mapleader = "\<Space>"

"git commit message configuration
autocmd Filetype gitcommit setlocal spell textwidth=72

"Extra white space checker
highlight UnwanttedTab ctermbg=red guibg=darkred
highlight TrailSpace guibg=red ctermbg=darkred
match UnwanttedTab /\t/
match TrailSpace / \+$/

autocmd ColorScheme * highlight UnwanttedTab ctermbg=red guibg=red
autocmd ColorScheme * highlight TrailSpace guibg=red ctermbg=red

"Display status bar
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"Navigation and file shortcuts
nmap <leader>T :enew<cr>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>
nmap <leader>gd <Plug>(coc-definitions)
nmap <leader>gr <Plug>(coc-references)

"NERDTree commands.
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Ale commands.
nmap <silent> <leader>aj <Plug>(ale_previous_wrap)
nmap <silent> <leader>ak <Plug>(ale_next_wrap)

"fzf git files list.
nnoremap <C-p> :GFiles<CR>
