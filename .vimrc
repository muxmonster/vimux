set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Yggdroot/indentLine' " Plugin verticle line.
Plugin 'terryma/vim-multiple-cursors' " Plugin multiple cursor.
call vundle#end()
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set relativenumber
set t_Co=256
syntax on
set laststatus=2
set ruler
set backspace=indent,eol,start
hi ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/
let g:indentLine_char='┆'
let g:indentLine_color_term=40
