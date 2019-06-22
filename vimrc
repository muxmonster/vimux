syntax on
set t_Co=16
set number
set relativenumber
hi LineNr ctermbg=darkgreen ctermfg=darkred
hi CursorLineNr ctermfg=red
set colorcolumn=120
set tabstop=2
set softtabstop=2
set expandtab
set laststatus=2
set ruler
set backspace=indent,eol,start
hi ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/
set background=dark
filetype plugin indent on
