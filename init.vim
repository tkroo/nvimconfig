" plugins moved to separate file
source ~/.config/nvim/plugins.vim

source ~/.config/nvim/general.vim

" source key mappings
source ~/.config/nvim/keymappings.vim

" source lightline settings
source ~/.config/nvim/lightline.vim

" AFTER PLUGINS LOADED
" colorscheme
colorscheme gruvbox-material

" map ctrl-p to fzf
nnoremap <C-p> :Files<Cr>

:au VimEnter * :GitGutterLineNrHighlightsEnable
:au VimEnter * :GitGutterLineHighlightsEnable
