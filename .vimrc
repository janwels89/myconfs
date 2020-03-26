" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" colorschemes
Plugin 'morhetz/gruvbox'
" snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'mschwan/vim-snippets'
" languages
Plugin 'tpope/vim-haml'
Plugin 'tikhomirov/vim-glsl'
Plugin 'igankevich/mesonic'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'mschwan/vim-bitbake'
Plugin 'artoj/qmake-syntax-vim'
Plugin 'peterhoeg/vim-qml'
" others
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'

call vundle#end()
filetype plugin indent on

" miscellaneous
set swapfile
set directory=~/.vim/swapfiles//
set undofile
set undodir=~/.vim/undofiles//
set wildmode=longest,list,full
set scrolloff=8
set ttimeoutlen=0

" line numbers and indention
set number
set relativenumber
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set cino=g0,:0
set listchars=tab:▸·

" text wrapping
set wrap
set linebreak
set nolist
set textwidth=80
set colorcolumn=+1

" colorscheme
syntax on
set background=dark
set t_Co=256
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox

" statusline
set laststatus=2
set noshowmode
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline_left_sep=''
let g:airline_right_sep=''

if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_symbols.linenr=''
let g:airline_symbols.paste=''
let g:airline_symbols.crypt=''
let g:airline_symbols.maxlinenr=''
let g:airline_symbols.branch=''
let g:airline_symbols.spell=''
let g:airline_symbols.notexists=''
let g:airline_symbols.whitespace=''
let g:airline_section_z='%3l/%L : %2v'

" ignore arrow keys (pro mode!)
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"
"inoremap <left> <nop>
"inoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>

" key mappings
" switching buffers
map <F5> :bd!<CR>
map <F6> :b!#<CR>
map <F7> :bp!<CR>
map <F8> :bn!<CR>

" ctags
set tags=./tags,tags;$HOME
