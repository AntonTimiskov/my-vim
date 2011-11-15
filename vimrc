call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set foldmethod=indent
set foldlevel=99

let python_highlight_all = 1

set statusline =

source ~/.vim/bundle/bufexplorer/bufexplorer.vim

source ~/.vim/bundle/makegreen/makegreen.vim
autocmd BufNewFile,BufRead *.py compiler nose
let $DJANGO_SETTINGS_MODULE = "settings"

" F2 - quick save
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F5 - buffers list
nmap <F5> <esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - previous buffer
map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - next buffer
map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" NERDTree
map <C-o> <esc>:NERDTree<cr>
vmap <C-o> <esc>:NERDTree<cr>
imap <C-o> <esc><esc>:NERDTree<cr>
let NERDTreeIgnore = ['\.pyc$', '\.log$', '\.bat$', '\.sh$']

" TagList
nnoremap <C-F8> :TlistOpen<CR>
nnoremap <F8> :TlistToggle<CR>

map <C-F7> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
