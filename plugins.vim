" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'universal-ctags/ctags'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
" Plug 'neomake/neomake', { 'on': 'Neomake' }

"Javascript Plugins
Plug 'pangloss/vim-javascript'
Plug 'carlitux/deoplete-ternjs'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug '1995eaton/vim-better-javascript-completion'

"Typescript Plugins
" Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Plug 'Quramy/tsuquyomi'
" Plug 'mhartington/deoplete-typescript'
"Plug 'leafgarland/typescript-vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'mgee/lightline-bufferline'
Plug 'ap/vim-buftabline'
"Plug 'majutsushi/tagbar'

" git
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
" Plug 'https://github.com/jreybert/vimagit.git'

" utility
Plug 'mbbill/undotree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'gangleri/vim-diffsaved'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
Plug 'ervandew/supertab'
" Plug 'tpope/vim-unimpaired'
" Plug 'terryma/vim-multiple-cursors'
"Plug 'mhinz/vim-startify'

" formatting
Plug 'mattn/emmet-vim', { 'for': ['html','css'] }
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/google/vim-searchindex.git'

" colorschemes
Plug 'https://github.com/sainnhe/gruvbox-material.git'
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
"call deoplete#custom#set('_', 'matchers', ['matcher_full_fuzzy'])

let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
let g:deoplete#sources#tss#javascript_support = 1
let g:tsuquyomi_javascript_support = 1
let g:tsuquyomi_auto_open = 1
let g:tsuquyomi_disable_quickfix = 1

" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
" config project root markers.
let g:gutentags_project_root = ['.root']
" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')
" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

" autocmd! BufWritePost * Neomake
" let g:neomake_warning_sign = { 'text': '?', 'texthl': 'WarningMsg' }
" let g:neomake_error_sign = { 'text': 'X', 'texthl': 'ErrorMsg' }

let g:NERDTreeStatusline = '%#NonText#'
