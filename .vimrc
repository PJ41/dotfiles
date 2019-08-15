set nocompatible                         " Required
filetype off                             " Required

" PLUGINS CONFIG
set rtp+=~/.vim/bundle/Vundle.vim        " Vundle begin
call vundle#begin()

Plugin 'gmarik/Vundle.vim'               " Vundle

Plugin 'jeetsukumaran/vim-filebeagle'    " File explorer

Plugin 'scrooloose/syntastic'            " Overall syntax

Plugin 'hdima/python-syntax'             " Python support
Plugin 'hynek/vim-python-pep8-indent' 

Plugin 'rust-lang/rust.vim'              " Rust syntax

Plugin 'urso/haskell_syntax.vim'         " Haskell support
Plugin 'itchyny/vim-haskell-indent'

Plugin 'stephpy/vim-yaml'                " Yaml syntax

Plugin 'cespare/vim-toml'                " Toml syntax

call vundle#end()                        " Vundle end
filetype plugin indent on
" END PLUGINS 

" THEME CONFIG
colorscheme slate
" END THEME CONFIG

" GENERAL CONFIG
set tabstop=4                            " Tabs to spaces
set shiftwidth=4
set expandtab

set hlsearch                             " Highlights for searches

set incsearch                            " Incremental search

set ignorecase                           " Ignore case
set smartcase

set number                               " Show number lines

syntax enable                            " Syntax enabled
" END GENERAL CONFIG
