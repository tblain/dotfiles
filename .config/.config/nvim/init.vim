call plug#begin('~/.local/share/nvim/plugged')

" Completion
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Colorscheme
Plug 'kiddos/malokai.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'nanotech/jellybeans.vim'
Plug 'jacoborus/tender.vim'
Plug 'sts10/vim-pink-moon'
Plug 'AlessandroYorba/Sierra'
Plug 'danilo-augusto/vim-afterglow'
Plug 'sainnhe/archived-colors'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'sainnhe/gruvbox-material'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/eleline.vim'

" Comments
Plug 'scrooloose/nerdcommenter'

" Autoformat
Plug 'sbdchd/neoformat'

" Code jump
Plug 'davidhalter/jedi-vim'

" File exploration/managing
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'francoiscabrol/ranger.vim'

" Code checker
Plug 'neomake/neomake'

" Yank aera highlight
Plug 'machakann/vim-highlightedyank'

" Code folding
Plug 'tmhedberg/SimpylFold'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Surround management
Plug 'tpope/vim-surround'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Syntax checking highlighting
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'jaxbot/semantic-highlight.vim'

" Better rainbow parentheses
Plug 'kien/rainbow_parentheses.vim'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'JamshedVesuna/vim-markdown-preview'

" Indentation guide
Plug 'thaerkh/vim-indentguides'

" Indentation for python conforme to PEP8
Plug 'vim-scripts/indentpython.vim'

" R
Plug 'jalvesaq/Nvim-R'

" Pythonsense: motion for python
Plug 'jeetsukumaran/vim-pythonsense'

call plug#end()

"===============================================================================
" Nvim core config {{{
set mouse
set number
set relativenumber
set cursorline
set mouse=a
set showmatch
set ignorecase
set shiftwidth=4

au BufNewFile,BufRead *.py
    \| set tabstop=4
    \| set softtabstop=4
    \| set shiftwidth=4
    \| set textwidth=79
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix

" <leader> is comma
let mapleader = ','

" allow moving cursor just after the last chraracter of the line
set virtualedit=onemore
set foldmethod=marker


:imap jj <Esc>
:imap jk <Esc>
:imap kj <Esc>
:imap kk <Esc>

" open okular on the current file
nnoremap <leader>n :!okular % & <Esc><Esc>
nnoremap <leader>p :!python % <Esc>

" faciliter la navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remap de '.' sur espace
nnoremap <Space> .

"}}}


"===============================================================================
" Colorscheme
syntax enable
set termguicolors

let g:gruvbox_material_background = 'soft'
set background=dark
colorscheme gruvbox-material


"===============================================================================
" Deoplete config

 let g:deoplete#enable_at_startup = 1
 autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"===============================================================================
" Airlines
"let g:airline_theme='light'
"let g:airline_powerline_fonts = 1
"let g:airline_solarized_bg='dark'

"===============================================================================
" Jedi vim
 " disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

    "  <leader>d: go to definition
    " K: check documentation of class or method
    " <leader>n: show the usage of a name in current file
    " <leader>r: rename a name

"===============================================================================
 "Neomake : code checker TODO  rajouter un vrai syntax checker
let g:neomake_python_enabled_makers = ['pylint']

"===============================================================================
" Code folding
    "zo： Open fold in current cursor postion
    "zO： Open fold and sub-fold in current cursor postion recursively
    "zc： Close the fold in current cursor position
    "zC： Close the fold and sub-fold in current cursor position recursively


"===============================================================================
" Nerd Commenter
" <leader>cc => commenter
" <leader>cu => uncomment

"===============================================================================
" Nerdtree

" lancer NT automatiquement quand aucun fichier n'est specifie
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" lancer NT automatiquement quand on ouvre un ficher
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" NERDTree toggle
map <C-n> :NERDTreeToggle<CR>

"===============================================================================
" Coc
call coc#add_extension('coc-snippets')

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

"===============================================================================
" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"===============================================================================
" Syntax checking/highlighting
let python_highlight_all=1
syntax on


"===============================================================================
" Jaxbot: semantic highlight
nnoremap <Leader>s :SemanticHighlightToggle<cr>


"===============================================================================
" Better rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"===============================================================================
" Markdown
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Firefox'
let vim_markdown_preview_github=1

"===============================================================================
" Flag des espaces inutiles
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match ExtraWhitespace /\s\+$/
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$\| \+\ze\t/
"autocmd InsertLeave * match ExtraWhitespace /^\t*\zs \+/
autocmd BufWinLeave * call clearmatches()

"===============================================================================
" Semshi: semantic highlight pour python
let g:deoplete#auto_complete_delay = 100

"===============================================================================
" Eleline: status line
set laststatus=2
let g:eleline_powerline_fonts = 1
