" see :help nvim-defaults
set termguicolors     " enable true colors support
syntax enable " Enable syntax highlighting
set omnifunc=syntaxcomplete#Complete
set cursorline " highlight current line
set path+=**
set hidden
set mouse=a
set number relativenumber
" open help on right in vertical split
cnoreabbrev H vert bo h
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
set colorcolumn=80
" set clipboard+=unnamedplus
set clipboard=unnamed,unnamedplus
set title " show title in terminal title bar
set tabstop=2 " set tab spaces
set softtabstop=2
set expandtab shiftwidth=2
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
set list listchars=tab:▸▸,trail:·
set ignorecase
set smartcase

" prevent hiding in JSON and markdown
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" change foldmethod for pug
autocmd Filetype pug setlocal foldmethod=indent
autocmd BufNewFile,BufRead *.js set ft=javascript
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.js.liquid set ft=javascript

" prevent auto insertion of comments on insert new line
" autocmd BufNewFile,BufRead * setlocal formatoptions+=cqn
augroup Format-Options
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" This can be done as well instead of the previous line, for setting formatoptions as you choose:
  autocmd BufEnter * setlocal formatoptions=crqn2l1j
  augroup END

" abbreviations
cabbrev PI PlugInstall
cabbrev PU PlugUpdate

" set python paths
let g:python_host_prog="/usr/bin/python"
let g:python3_host_prog="/usr/bin/python3"
" let g:python3_host_prog="/home/david/.pyenv/shims/python3"


" The Silver Searcher
if executable('ag')
  " map ctrl-p to FZF
  let $FZF_DEFAULT_COMMAND = 'ag -g ""'
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif
