set number
set relativenumber
set ignorecase smartcase
set nohlsearch
set smartindent
set autoindent
set incsearch
set scrolloff=5 " Not inherited by VsCode's neovim plugin

" Keep cursor centered when scrolling pages at a time. Does not work in VsCode
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

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
xnoremap ( {
xnoremap ) }
nnoremap cgn *Ncgn " Allows for cgn to work without having searched for or used "*" beforehand.

