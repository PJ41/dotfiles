" Required
set nocompatible
filetype off

" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" NERDTree plugin
Plugin 'scrooloose/nerdtree'

" GIT status for NERDTree
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Python pep8 indent
Plugin 'hynek/vim-python-pep8-indent'

" Python syntax
Plugin 'hdima/python-syntax'

" End plugins
call vundle#end()
filetype plugin indent on

" Open NERDTree mapping
map <C-n> :NERDTreeToggle<CR>

" NERDTree open automatically when opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]

" NERDTree UI config
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Delete
let NERDTreeAutoDeleteBuffer = 1

" NERDTree show hidden files by default
let NERDTreeShowHidden=1

" Change tabs to spaces
set tabstop=4 
set shiftwidth=4
set expandtab

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Ignore cases
set ignorecase
set smartcase

" Show number lines
set number
