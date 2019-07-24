set nocompatible                         " Required
filetype off                             " Required

" PLUGINS CONFIG
set rtp+=~/.vim/bundle/Vundle.vim        " Vundle begin
call vundle#begin()

Plugin 'gmarik/Vundle.vim'               " Vundle

Plugin 'scrooloose/nerdtree'             " NERDTree

Plugin 'Xuyuanp/nerdtree-git-plugin'     " GIT Status for NERDTree

Plugin 'hynek/vim-python-pep8-indent'    " Python pep8 indent

Plugin 'hdima/python-syntax'             " Python syntax

Plugin 'stephpy/vim-yaml'                " Yaml syntax

Plugin 'joshdick/onedark.vim'            " Theme

call vundle#end()                        " Vundle end
filetype plugin indent on
" END PLUGINS 

" NERDTree CONFIG
map <C-n> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1    " Open automatically on directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]

let NERDTreeDirArrows = 1                " Directional arrows

let NERDTreeAutoDeleteBuffer = 1         " Auto delete

let NERDTreeShowHidden=1                 " Show hidden files
" END NERDTree CONFIG

" GENERAL CONFIG
set tabstop=4                            " Tabs to spaces
set shiftwidth=4
set expandtab

set hlsearch                             " Highlights for searches

set incsearch                            " Incremental search

set ignorecase                           " Ignore case
set smartcase

set number                               " Show number lines

syntax on                                " Syntax on
"END GENERAL CONFIG
