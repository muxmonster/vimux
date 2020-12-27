" Config vimrc file in macbook by muxmonster@gmail.com
" Clone Vundle from git clone https://github.com/VundleVim/Vundle.vim.git
" ~/.vim/bundle/Vundle.vim

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
" Plugin 'majutsushi/tagbar'

" Plugin 'valloric/youcompleteme'
Plugin 'mattn/emmet-vim'
Plugin 'Yggdroot/indentLine' " Plugin verticle line.
" Plugin 'alvan/vim-closetag'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'ludovicchabant/vim-gutentags'

" Auto Format
Plugin 'Chiel92/vim-autoformat'

" Toggle line
" Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" php v.7+
Plugin 'stanangeloff/php.vim'

" Presentation
Plugin 'sotte/presenting.vim'

"Themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'dikiaap/minimalist'
Plugin 'ParamagicDev/vim-medic_chalk'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

set tw=80
syntax on
set background=dark
set tags+=./tags,../tags
" colorscheme minimalist
" colorscheme medic_chalk
colorscheme gruvbox
set ffs=unix,dos,mac
set encoding=utf8
set number relativenumber
set nu!
set nobackup
set noswapfile
set cursorline
" set laststatus=2
set shiftwidth=2
set tabstop=4
set softtabstop=4
set nowrap
set backspace=indent,eol,start
set ruler
set scrolloff=3
set visualbell
set hidden
" set so=7

set expandtab
set smartindent
set autoindent
set smartcase
set ignorecase
set hlsearch
set foldmethod=manual
set foldcolumn=1 "defines 1 col at window left, to indicate folding
set foldlevelstart=99 "start file with all folds opened

" https://gist.github.com/ruda/b22ccd3b74228a1c64f8#file-listchars-vim
set list
set listchars=tab:→\ ,trail:␣,extends:…,eol:⏎

" set shortmess+=c
set cmdheight=2
" Show keystroke
set showcmd

" Set column Color && width
" Color table https://jonasjacek.github.io/colors/
set foldmethod=manual
set colorcolumn=80
highlight colorColumn ctermbg=234

" Config line number color
highlight lineNr ctermfg=white ctermbg=darkblue
highlight cursorLine cterm=bold ctermfg=NONE ctermbg=236
highlight cursorLineNr cterm=NONE ctermfg=160 ctermbg=16
highlight search cterm=NONE ctermfg=NONE ctermbg=237
" Whitespace color
highlight extraWhitespace ctermbg=red

" Set column
" highlight OverLength ctermbg=red ctermfg=white
" match OverLength /\%81v.\+/

" Multiple cursor from plugin
highlight multiple_cursors_cursor ctermfg=yellow ctermbg=red
highlight link multiple_cursors_visual Visual

" let g:airline_theme='powerlineish'
let g:airline_theme='simple'
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:indent_guides_enable_on_vim_startup = 1

let g:indentLine_char='┆'
let g:indentLine_color_term=88
let g:coc_global_extensions = ['coc-snippets', 'coc-tsserver', 'coc-eslint', 'coc-angular', 'coc-styled-components', 'coc-html', 'coc-phpls', 'coc-css']
let g:coc_snippet_next = '<tab>'

" autocmd CursorHold * silent call CocActionAsync('highlight')
" autocmd FileType js UltiSnipsAddFiletypes javascript-jasmine

"let g:closetag_filetypes = 'html,xhtml,phtml'

" Map keyboard if (type jj) then goto normal mode.
inoremap jj <Esc>k

" Not use arrow button
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

" Map move
inoremap gj j
inoremap gk k

" Map NERDTreeToggle
nnoremap <Leader>f :NERDTreeToggle<CR>

" Map Buffers if open another files
nnoremap ,l :ls<CR>
nnoremap ,b :bp<CR>
nnoremap ,f :bn<CR>
nnoremap ,d :bd<CR>
nnoremap ,1 :1b<CR>
nnoremap ,2 :2b<CR>
nnoremap ,3 :3b<CR>
nnoremap ,4 :4b<CR>
nnoremap ,5 :5b<CR>

" nnoremap ,,t :TagbarToggle<CR>

" Auto Format
"
" Save and Load Fold
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END
" Config Presentation
au FileType rst let b:presenting_slide_separator = '\v(^|\n)\~{4,}'
