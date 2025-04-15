set number
set relativenumber

" Yank/delete/change and paste to system clipboard register using space in all modes
nnoremap <Space>y "+y
nnoremap <Space>Y "+Y
nnoremap <Space>d "+d
nnoremap <Space>D "+D
nnoremap <Space>c "+c
nnoremap <Space>C "+C
nnoremap <Space>x "+x
nnoremap <Space>X "+X
nnoremap <Space>p "+p
nnoremap <Space>P "+P

nnoremap ( {
nnoremap ) }
nnoremap cgn *Ncgn // Allows for cgn to work without having searched for or used "*" beforehand.

set ignorecase smartcase
set nohlsearch

