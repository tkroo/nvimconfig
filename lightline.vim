" LIGHTLINE CONFIG
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {
    \ 'colorscheme': 'darcula',
    \ }
let g:lightline.separator = {
    \ 'left': '', 'right': ''
    \ }
let g:lightline.subseparator = {
    \ 'left': '|', 'right': '|'
    \ }

" let g:lightline = {
"   \   'colorscheme': 'molokai',
"   \   'active': {
"   \     'left':[ [ 'mode', 'paste' ],
"   \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
"   \     ],
"   \     'right': [ [ 'lineinfo' ],
"   \              [ 'percent' ],
"   \              [ 'filetype' ] ]
"   \   },
"   \   'component_function': {
"   \     'gitbranch': 'fugitive#head',
"   \   }
"   \ }
" let g:lightline.separator = {
"   \   'left': '', 'right': ''
"   \}
" let g:lightline.subseparator = {
"   \   'left': '|', 'right': '|'
"   \}
" " \   'left': '', 'right': ''


" let g:lightline.tabline = {
"   \   'left': [ ['tabs'] ],
"   \   'right': [ ['relativepath'] ]
"   \ }
