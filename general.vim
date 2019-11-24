set termguicolors     " enable true colors support
syntax enable " Enable syntax highlighting
set omnifunc=syntaxcomplete#Complete
" set number " show line numbers
" set relativenumber " show relative line numbers
" set clipboard=unnamedplus
" set mouse=a
" set expandtab " use spaces instead of tabs.
" set shiftwidth=2
" set showmode " handled by statusline
set cursorline " highlight current line
set path+=**
set hidden
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
set title " show title in terminal title bar
set tabstop=2 " set tab spaces
set softtabstop=2
set smartindent
set showmatch " highlight matching [{()}]
set splitbelow " open new splits to right and bottom
set splitright " open new splits to right and bottom
" set initial foldlevel to open on read file
set foldlevel=99
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

let g:python_host_prog="/usr/bin/python"
let g:python3_host_prog="/usr/bin/python3"
