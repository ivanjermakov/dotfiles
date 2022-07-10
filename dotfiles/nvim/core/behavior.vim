" appearance & behavior
" reduce delays
set ttimeoutlen=5

" autoread
set autoread
autocmd CursorHold * checktime

" allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

imap х <esc>

" enable syntax highlighting
filetype plugin on
syntax on

" use line number for every file opened
set number

" remove annoying warning of existing swap files
set shortmess+=A

" set current command combination
set showcmd

" enable mouse wheel scrolling
set mouse=a

" system clipboard configuration
set clipboard=unnamedplus

" do not yank selection on put
vnoremap p "_dP

" store swap files separately
set backupdir=/tmp//
set directory=/tmp//

set showbreak=^

" tabs config
set tabstop=4
set shiftwidth=4
set expandtab

" left lines before/after cursor when scrolling
set scrolloff=8

" enable multiline edit
set virtualedit=all

highlight Search ctermbg=7*

" hide statusline
set laststatus=0

filetype plugin on

set list
set lcs+=space:·
