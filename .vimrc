set runtimepath=~/.vim,$VIMRUNTIME,~/.vim/after

call pathogen#infect()

"
" appearance options
"
set bg=dark
let g:zenburn_high_Contrast = 1
let g:molokai_original = 1
set t_Co=256
colorscheme molokai

set modeline
set tabstop=2 " tab size = 2
set shiftwidth=2 " soft space = 2
set smarttab
set expandtab " expand tabs

set virtualedit=block
set clipboard+=unnamed  " Yanks go on clipboard instead.
set showmatch " Show matching braces.

" Line wrapping on by default
set wrap
set linebreak

set history=500 " keep track of last commands
set number ruler " show line numbers
set incsearch " incremental searching on
set hlsearch " highlight all matches
set showtabline=2 " show always for console version
set wildmenu " menu on statusbar for command autocomplete
" default to UTF-8 encoding
set encoding=utf8

" no beep
autocmd VimEnter * set vb t_vb= 

" Make sure taglist doesn't change the window size
let g:Tlist_Inc_Winwidth = 0

" language specific customizations:
let g:python_highlight_numbers = 1


syntax on " syntax hilight on
syntax sync fromstart 
filetype plugin indent on

" enable visible whitespace
set listchars=tab:»·,trail:·,precedes:<,extends:>
set list

"
" Configure syntax specific options
"
let python_highlight_all = 1

"
" Other stuff
"
"runtime 'macros/matchit.vim'


filetype plugin on
filetype indent on

set autowrite
set backspace=indent,eol,start
set completeopt=menu,longest,preview
set laststatus=2
set matchtime=2
set nrformats=octal,hex,alpha
set pastetoggle=<F10>
set scrolloff=5
set showcmd
set viminfo='20,\"50,:20,%,n~/.viminfo
set wildmode=list:longest,full

let mapleader = ","    " 
let g:mapleader = ","

map <Leader>q :q!<CR>
map <Leader>s :w<CR>
map <Leader>w :x<CR>
map <Leader>b :buffers<CR>

nmap <silent> <F6> :set number!<CR>
nmap <space> <PageDown>
set sts=2
set autoindent

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" store all of your vim swp files in one place, make sure this directory exists set backupdir=/Users/{YOUR_USERNAME}/vim_swp
set directory=~/.vim_swp

:nmap H ^
:nmap L $

set ignorecase

" Remove trailing white space
map <C-n> :%s/\s\+$//e<CR>

nmap <silent> <F4>
        \ :!ctags -f ./tags
        \ --langmap="php:+.inc"
        \ -h ".php.inc" -R --totals=yes
        \ --tag-relative=yes --PHP-kinds=+cf-v .<CR>
set tags=./tags,tags
