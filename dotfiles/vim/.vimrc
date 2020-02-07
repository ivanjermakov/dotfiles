" remap h to insert and use ijkl for inverse T cursor movement
noremap h i
noremap i h

map i <up>
map j <left>
map k <down>
map l <right>

" enable syntax highlighting
filetype plugin on
syntax on

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
set clipboard=unnamedplus

" store swap files separately
set backupdir=/tmp//
set directory=/tmp//

" set tab to spaces
set tabstop=4

" left lines before/after cursor when scrolling
set scrolloff=8

" search
set runtimepath^=~/.vim/bundle/incsearch.vim
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map <silent> <esc><esc> :noh<cr>
set hlsearch
set runtimepath^=~/.vim/bundle/vim-indexed-search

highlight Search ctermbg=7*

" plugins
call plug#begin('~/.vim/plugged')
	Plug 'lervag/vimtex'
	Plug 'vim-syntastic/syntastic'
	Plug 'chrisbra/Colorizer'
	Plug 'jiangmiao/auto-pairs'
call plug#end()

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_w = 1

highlight SignColumn ctermbg=256

