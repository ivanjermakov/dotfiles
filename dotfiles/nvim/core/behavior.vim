" appearance & behavior
" reduce delays
set ttimeoutlen=5

" allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

imap х <esc>

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

