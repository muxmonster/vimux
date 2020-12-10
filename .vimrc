set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'

" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'    " JavaScript support
Plugin 'leafgarland/typescript-vim' " TypeScript syntax
Plugin 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plugin 'jparise/vim-graphql'        " GraphQL syntax
Plugin 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plugin 'neoclide/coc-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'

" Plugin 'valloric/youcompleteme'
Plugin 'mattn/emmet-vim'
Plugin 'Yggdroot/indentLine' " Plugin verticle line.
Plugin 'alvan/vim-closetag'
Plugin 'terryma/vim-multiple-cursors'

" Toggle line
" Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" php v.7+
Plugin 'stanangeloff/php.vim'

"Themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'dikiaap/minimalist'
Plugin 'ParamagicDev/vim-medic_chalk'

call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
set tw=80
syntax on
set background=dark
" colorscheme minimalist
colorscheme medic_chalk
set number relativenumber
set nu!
set cursorline 
set laststatus=2
set shiftwidth=2
set tabstop=2
set softtabstop=2
set nowrap
set backspace=indent,eol,start
set ruler
set scrolloff=3

set expandtab
set smartindent
set autoindent
set smartcase
set ignorecase
set hlsearch

" https://gist.github.com/ruda/b22ccd3b74228a1c64f8#file-listchars-vim
set list
set listchars=tab:→\ ,trail:␣,extends:…,eol:⏎

" set shortmess+=c
set cmdheight=2
" Show Keystroke
set showcmd

" Set Column Color && width
" Color table https://jonasjacek.github.io/colors/
set colorcolumn=80
highlight ColorColumn ctermbg=232

" Config line number color
highlight LineNr ctermfg=white ctermbg=darkblue
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE
highlight CursorLineNr cterm=NONE ctermfg=160 ctermbg=16
" Whitespace color
highlight ExtraWhitespace ctermbg=red

" Set column
highlight OverLength ctermbg=red ctermfg=white

" Multiple cursor from plugin
highlight multiple_cursors_cursor ctermfg=yellow ctermbg=red
highlight link multiple_cursors_visual Visual

match OverLength /\%81v.\+/

let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:indent_guides_enable_on_vim_startup = 1

let g:indentLine_char='┆'
let g:indentLine_color_term=88
let g:coc_global_extensions = ['coc-snippets', 'coc-tsserver', 'coc-eslint', 'coc-angular', 'coc-styled-components', 'coc-html', 'coc-phpls', 'coc-css']
let g:coc_snippet_next = '<tab>'

" autocmd CursorHold * silent call CocActionAsync('highlight')
" autocmd FileType js UltiSnipsAddFiletypes javascript-jasmine

let g:closetag_filetypes = 'html,xhtml,phtml'

"Map keyboard if (type jj) then goto normal mode.
inoremap jj <Esc>k
