filetype plugin indent on
set background=dark
set termguicolors     " enable true colors support
syntax enable " Enable syntax highlighting
set omnifunc=syntaxcomplete#Complete
set number " show line numbers
set relativenumber " show relative line numbers

let g:python_host_prog="/usr/bin/python"
let g:python3_host_prog="/usr/bin/python3"

set encoding=utf-8
set clipboard=unnamedplus
set autoindent
set cursorline " highlight current line
set path+=**
set showmode
set hidden
set wildmenu	" visual autocomplete for command menu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
set mouse=a

set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

set title " show title in terminal title bar
set tabstop=2 " set tab spaces
set shiftwidth=2
set softtabstop=2
set expandtab " use spaces instead of tabs.
set smarttab " let tab key insert 'tab stops', and bksp deletes tabs.
set smartindent

set showmatch " highlight matching [{()}]
set hlsearch " highlight search matches

set splitbelow " open new splits to right and bottom
set splitright " open new splits to right and bottom

" set initial foldlevel to open on read file
set foldlevel=99

set showcmd
set noswapfile " Do not create .swp files

set cmdheight=2

" Centralize backups, swapfiles and undo history
set backupdir=~/.config/nvim/sub/backups
set directory=~/.config/nvim/sub/swaps
set undodir=~/.config/nvim/sub/undo
set undofile


" change foldmethod for pug
autocmd Filetype pug setlocal foldmethod=indent

autocmd BufNewFile,BufRead *.js set ft=javascript
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.js.liquid set ft=javascript



" abbreviations
cabbrev PI PlugInstall
cabbrev PU PlugUpdate
