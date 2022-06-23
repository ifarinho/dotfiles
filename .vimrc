set nocompatible
filetype off

set rtp+=~/.vim/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'bluz71/vim-moonfly-colors'

call vundle#end()
filetype plugin indent on

set laststatus=2
set ttimeout ttimeoutlen=30
set viminfo="NONE"
set noshowmode
set number
set hlsearch
set incsearch
set ignorecase
set smartcase
set title
set noswapfile
set nobackup
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set t_Co=256
set clipboard=unnamedplus
set mouse=nicr
syntax enable

colorscheme nord 
let g:lightline = {
            \ 'colorscheme': 'nord',
            \ }
