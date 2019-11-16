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
Plug 'ap/vim-buftabline'
" Plug 'universal-ctags/ctags'
" Plug 'majutsushi/tagbar'

" git plugins
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
" Plug 'https://github.com/jreybert/vimagit.git'

" display
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'gangleri/vim-diffsaved'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'ervandew/supertab'

" formatting
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim', { 'for': ['html','css'] }
" Plug 'godlygeek/tabular'
" Plug 'junegunn/vader.vim'
" Plug 'mbbill/undotree'
" Plug 'junegunn/goyo.vim'
" Plug 'tpope/vim-unimpaired'
" Plug 'terryma/vim-multiple-cursors'

" syntax highlighting
Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/google/vim-searchindex.git'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" JAVASCRIPT STUFF
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': ['javascript'] }
Plug '1995eaton/vim-better-javascript-completion'

" colorschemes
Plug 'https://github.com/sainnhe/gruvbox-material.git'
Plug 'https://github.com/doums/darcula'
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'whatyouhide/vim-gotham'
Plug 'croaker/mustang-vim'

call plug#end()
