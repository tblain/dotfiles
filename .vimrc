set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" ...
Plugin 'jiangmiao/auto-pairs'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'

" color scheme
Plugin 'DankNeon/vim'
Plugin 'sonjapeterson/1989.vim'
Plugin 'kiddos/malokai.vim'
Plugin 'connorholyday/vim-snazzy'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py:
			\ set tabstop=4
			\ set softtabstop=4
			\ set shiftwidth=4
			\ set textwidth=79
			\ set expandtab
			\ set autoindent
			\ set fileformat=unix

au BufNewFile,BufRead *.cpp:
			\ set tabstop=1
			\ set softtabstop=1
			\ set shiftwidth=1
			\ set textwidth=79
			\ set expandtab
			\ set autoindent
			\ set fileformat=unix


set encoding=utf-8

" at least two lines of context visible around the cursor at all times
set scrolloff=2

" Highlight matching search patterns
set hlsearch

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

" set background=dark
colorscheme  malokai

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set nu
set mouse=a

set clipboard=unnamed

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

" Nerd commenter config
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

let g:airline_powerline_fonts = 1

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" activer nerdtree en entrant dans vim
"autocmd vimenter * NERDTree

" desactivation des touches fleches
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" FZF
" map ; :Files<CR>
" escape remap to jj
:imap jj <Esc>

" indent-guide
" Vim
""let g:indentLine_color_term = 239
