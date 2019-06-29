"""
.vimrc for muxmonster
+ Install Vundle Plugin
"""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Yggdroot/indentLine'  ""Plugin indent vertical line
call vundle#end()
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set relativenumber
hi LineNr ctermbg=darkgreen ctermfg=darkred
hi CursorLineNr ctermfg=red
set t_Co=16
syntax on
set laststatus=2
set ruler
set backspace=indent,eol,start
hi ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/
