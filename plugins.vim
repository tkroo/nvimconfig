" PLUG
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'mgee/lightline-bufferline'

Plug 'tpope/vim-commentary'
Plug 'ap/vim-buftabline'

" git plugins
" Plug 'https://github.com/jreybert/vimagit.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/tpope/vim-fugitive.git'

Plug 'Yggdroot/indentLine'

Plug 'jiangmiao/auto-pairs'
Plug 'gangleri/vim-diffsaved'
Plug 'godlygeek/tabular'
" Plug 'junegunn/vader.vim'
" Plug 'mbbill/undotree'
" Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-unimpaired'
" Plug 'terryma/vim-multiple-cursors'
Plug 'ervandew/supertab'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'mattn/emmet-vim', { 'for': ['html','css'] }
Plug 'machakann/vim-highlightedyank'

" syntax highlighting
Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/google/vim-searchindex.git'

" JAVASCRIPT STUFF
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': ['javascript'] }
Plug 'pangloss/vim-javascript'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'othree/yajs.vim', { 'for': 'javascript' }

" colorschemes
Plug 'https://github.com/sainnhe/gruvbox-material.git'
Plug 'https://github.com/doums/darcula'
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'croaker/mustang-vim'


call plug#end()
