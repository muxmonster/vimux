call plug#begin('~/.vim/plugged')
" General Plugin
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'

" Programming
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'moll/vim-node'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'soywod/typescript.vim'
Plug 'mattn/emmet-vim'
Plug 'nathanaelkane/vim-indent-guides'
" Match tag
Plug 'andymass/vim-matchup'
" Plug 'ctrlpvim/ctrlp.vim'		" Not work.

" Spotlight
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Theme & Color
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
filetype plugin on
colorscheme gruvbox
" colorscheme dracula
set exrc
set encoding=utf-8
set nobackup
set noswapfile
set formatoptions-=ro
set tw=80
set t_Co=256
set ffs=unix,dos,mac
set background=dark
set nu rnu
set backspace=indent,eol,start
set ruler
set colorcolumn=80
set scrolloff=5
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set nowrap
set hidden
set smartcase
set ignorecase
set hlsearch
set splitright
set splitbelow
set display=lastline
set autoread
set pastetoggle=<F2>
" https://gist.github.com/ruda/b22ccd3b74228a1c64f8#file-listchars-vim
set list
" set listchars=tab:→\ ,trail:␣,extends:…,eol:⏎
set listchars=tab:→\ ,trail:⇁,extends:…,eol:⤶
set cmdheight=2
" Show keystroke
set showcmd
set signcolumn=number
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set foldmethod=manual
set foldcolumn=1 "defines 1 col at window left, to indicate folding
set foldlevelstart=99 "start file with all folds opened
highlight Folded ctermbg=51 ctermfg=0 cterm=bold
highlight FoldColumn ctermbg=NONE ctermfg=124 cterm=bold

" Config line number color
" highlight lineNr ctermfg=white ctermbg=darkblue
highlight lineNr ctermfg=NONE ctermbg=NONE
highlight cursorLine cterm=bold ctermfg=NONE ctermbg=236
highlight cursorLineNr cterm=NONE ctermfg=160 ctermbg=16
highlight search cterm=NONE ctermfg=NONE ctermbg=237
" Whitespace color
highlight extraWhitespace ctermbg=red

" Config Theme
let g:airline_theme='base16_grayscale'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Map keyboard if (type jj) then goto normal mode.
inoremap jj <Esc>

" Not use arrow button
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

" Map move
nnoremap gj j
nnoremap gk k

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

" Save and Load Fold
" augroup remember_folds
    " autocmd BufRead * normal
    " autocmd!
    " autocmd BufWinLeave * mkview
    " autocmd BufWinEnter * silent! loadview
" augroup END

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=236

" hi IndentGuidesOdd  ctermbg=black
" hi IndentGuidesEven ctermbg=darkgrey
let g:vim_jsx_pretty_colorful_config = 1 " default 0
let g:vim_jsx_pretty_disable_js = 1
let g:vim_jsx_pretty_disable_tsx = 1
autocmd FileType javascript noremap <buffer> fm :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> fm :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> fm :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> fm :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> fm :call CSSBeautify()<cr>

let g:loaded_matchit=1

" Delete whitespace
" autocmd BufWritePre * :%s/\s\+$//
" Setup Coc
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Setup CtrlP
" let g:ctrlp_working_path_mode = 'cra'
" let g:ctrlp_map = '<C-p>' "Invoke CtrlP
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_custom_ignore = {
    " \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    " \ 'file': '\v\.(exe|so|dll)$',
    " \ 'link': 'some_bad_symbolic_links',
    " \ }

" Setup FZF

" Setup NERDComment
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"Setup fzf
function! s:fzf_statusline()
" Override statusline as you like
	highlight fzf1 ctermfg=161 ctermbg=251
	highlight fzf2 ctermfg=23 ctermbg=251
	highlight fzf3 ctermfg=237 ctermbg=251
	setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction
autocmd! User FzfStatusLine call <SID>fzf_statusline()
autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-g> :GFiles<CR>
nnoremap <silent> <C-o> :Buffers<CR>
nnoremap <silent> <C-f> :Rg!<CR>
let g:fzf_buffers_jump = 1
