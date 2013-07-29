call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
filetype off
filetype plugin indent on

runtime macros/matchit.vim

autocmd BufNewFile,BufRead *.md set filetype=markdown

let mapleader = ","

set nocompatible
set pastetoggle=<F2>
set number
set foldmethod=syntax
set foldlevel=100
set hidden
set ruler

"
" Colorscheme
"
set t_Co=256
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

"
" Show trailing spaces
"
set listchars=tab:»·,trail:·
set list

"
" Tabs
"
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set autoindent

"Incremental search
set incsearch
set hlsearch

"
" Backup files
"
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

"No noise
set noerrorbells

set wildmenu

set scrolloff=10

" /g when searching and replacing
set gdefault

" disable autoload of session
let g:session_autoload="no"

"
" Remaps
"

" Toggle number
nnoremap <F3> :set nonumber!<CR>

map <leader>m :BufExplorer<CR>
map <Leader>a :Ack 
map <Leader><Space> :noh<CR>
nnoremap <F5> :GundoToggle<CR>

" Tabs
map <c-w>t :tabnew<CR>
map <Leader>p :tabnext<CR>
map <Leader>o :tabprev<CR>

nnoremap K <Nop>
vnoremap K <Nop>

" Splits
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" CamelCaseMotion
map <S-W> <Plug>CamelCaseMotion_w
map <S-B> <Plug>CamelCaseMotion_b
map <S-E> <Plug>CamelCaseMotion_e

" Kill help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Easy substitution
nnoremap <Leader>s :s//c<left><left>
vnoremap <Leader>s :s//c<left><left>
nnoremap <Leader>d :s///c<left><left><left>
vnoremap <Leader>d :s///c<left><left><left>

" Source vimrc
nnoremap <Leader>` :source $MYVIMRC<CR>

" Remove trailing whitespace
nnoremap <Leader>ts :%s/\s\+$//<CR>

" re-indent xml
map <F4> :%s/>\s*</>\r</g<CR>:set ft=xml<CR>gg=G
