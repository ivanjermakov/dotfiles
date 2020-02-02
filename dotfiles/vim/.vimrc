" remap h to insert and use ijkl for inverse T cursor movement
noremap h i
noremap i h

map i <up>
map j <left>
map k <down>
map l <right>

" use line number for every file opened
set number

" remove annoyng warning of existing swap files
set shortmess+=A

" set current command combination
set showcmd

" disable c-z because habitly clicking it cause Vim to close
nnoremap <c-z> <nop>

" enable mouse wheel scrollin
set mouse=a

" system clipboard configuration
set paste               " Paste from a windows or from vim
set clipboard=unnamedplus

" store swap files separately
set backupdir=/tmp//
set directory=/tmp//

" set tab to spaces
set tabstop=4

" left lines before/after cursor when scrolling
set scrolloff=6

" search
set runtimepath^=~/.vim/bundle/incsearch.vim
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map <silent> <esc><esc> :noh<cr>
set hlsearch
set runtimepath^=~/.vim/bundle/vim-indexed-search

highlight Search ctermbg=7*

