" reduce delays
set ttimeoutlen=5
set timeoutlen=5

" enable syntax highlighting
filetype plugin on
syntax on

" use line number for every file opened
set number

" remove annoyng warning of existing swap files
set shortmess+=A

" set current command combination
set showcmd

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

" enable multiline edit
set virtualedit=all

" disable c-z because habitly clicking it cause Vim to close
nnoremap <c-z> <nop>

" remap h to insert and use ijkl for inverse T cursor movement
nnoremap h i
nnoremap i h

noremap i <up>
noremap j <left>
noremap k <down>
noremap l <right>

" use angle brackets to indent current line
nnoremap < <<
nnoremap > >>

" keep selection after indenting
vmap < <gv
vmap > >gv

" search
set runtimepath^=~/.vim/bundle/incsearch.vim
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nnoremap <silent> <esc> :noh<cr><esc>
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
