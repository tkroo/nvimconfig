"""""""""""""""""""""""""""
" KEY MAPPINGS
" """""""""""""""""""""""""""

" set leader to comma
let mapleader=','

" run commands with semicolon
nnoremap ; :


" Clear highlighting on escape in normal mode
"-----------------------------------------
" nnoremap <silent><esc> :noh<return><esc>
" nnoremap <esc>^[ <esc>^[
"-----------------------------------------
map <esc> :noh<cr>
"-----------------------------------------
" Clear highlighting
nnoremap <leader>c :nohl<CR>

" Pane navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>
noremap <Leader>c :<C-u>close<CR>


" move vertically by visual line
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" ctrl-p for fuzzy find
noremap <C-p> :FZF<CR>

" additional mapping for % (jump to matching tag or bracket)
nnoremap <C-m> %

" crtl - \ for NERDTreeToggle
noremap <C-\> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree

" toggle Commentary
nnoremap <C-_> :Commentary<CR>
vnoremap <C-_> :Commentary<CR>

" remap emmet leader key from <C-Z>
" inoremap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Mapping <Shift>-Arrows to selecting characters/lines
nnoremap <S-Up> v<Up>
nnoremap <S-Down> v<Down>
nnoremap <S-Left> v<Left>
nnoremap <S-Right> v<Right>
vnoremap <S-Up> <Up>
vnoremap <S-Down> <Down>
vnoremap <S-Left> <Left>
vnoremap <S-Right> <Right>

" move lines (or selections in visual mode) with ',' then arrow keys
" nnoremap ,<Down> :<C-u>silent! move+<CR>==
" nnoremap ,<Up>   :<C-u>silent! move-2<CR>==
" xnoremap ,<Up>   :<C-u>silent! '<,'>move-2<CR>gv=gv
" xnoremap ,<Down> :<C-u>silent! '<,'>move'>+<CR>gv=gv

nnoremap <C-Down> :<C-u>silent! move+<CR>==
nnoremap <C-Up>   :<C-u>silent! move-2<CR>==
xnoremap <C-Up>   :<C-u>silent! '<,'>move-2<CR>gv=gv
xnoremap <C-Down> :<C-u>silent! '<,'>move'>+<CR>gv=gv

" shortcut to config files ,ev
nnoremap <leader>ev :tabnew ~/.config/nvim/init.vim<CR><bar>:badd ~/.config/nvim/keymappings.vim<CR><bar>:badd ~/.config/nvim/general.vim<CR><bar>:badd ~/.config/nvim/plugins.vim<CR><bar>:badd ~/.config/nvim/lightline.vim<CR><bar>:Buffers<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

" move between buffers
" nnoremap <leader>n :bnext<CR>
" nnoremap <leader>b :bprev<CR>
nnoremap <leader>] :bnext<CR>
nnoremap <leader>[ :bprev<CR>

" list and select buffer
nnoremap <silent> <leader>bg :ls<CR>:buffer<Space>

set pastetoggle=<F5>

" remap escape
inoremap jk <esc>
vnoremap jk <esc>

"re-select visual block after indenting
vnoremap < <gv
vnoremap > >gv
