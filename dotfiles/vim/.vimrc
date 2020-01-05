" remap h to insert and use ijkl for inverse T cursor movement
map h <insert>
nnoremap H I
nnoremap I H

map i <Up>
map j <Left>
map k <Down>
map <caps> <esc>

" use line number for every file opened
set number

" remove annoyng warning of existing swap files
set shortmess+=A

" set current command combination
set showcmd

" disable c-z because habitly clicking it cause Vim to close
nnoremap <c-z> <nop>

" system clipboard configuration
set paste               " Paste from a windows or from vim
set clipboard=unnamedplus

" store swap files separately
set backupdir=/tmp//
set directory=/tmp//

" set tab to spaces
set tabstop=4

" search
set runtimepath^=~/.vim/bundle/incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

highlight Search ctermbg=7*

" vim manpager
"set runtimepath^=~/.vim/bundle/vim-manpager

" able to use russian layout in command mode
map C-х <Esc>

map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .

" shift mapping
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

"ctrl mapping
map C-й C-q
map C-ц C-w
map C-у C-e
map C-к C-r
map C-е C-t
map C-н C-y
map C-г C-u
map C-ш C-i
map C-щ C-o
map C-з C-p
map C-х C-[
map C-ъ C-]
map C-ф C-a
map C-ы C-s
map C-в C-d
map C-а C-f
map C-п C-g
map C-р C-h
map C-о C-j
map C-л C-k
map C-д C-l
map C-ж C-;
map C-э C-'
map C-я C-z
map C-ч C-x
map C-с C-c
map C-м C-v
map C-и C-b
map C-т C-n
map C-ь C-m
map C-б C-,
map C-ю C-.

" shift + ctrl mapping
map C-Й C-Q
map C-Ц C-W
map C-У C-E
map C-К C-R
map C-Е C-T
map C-Н C-Y
map C-Г C-U
map C-Ш C-I
map C-Щ C-O
map C-З C-P
map C-Х C-{
map C-Ъ C-}
map C-Ф C-A
map C-Ы C-S
map C-В C-D
map C-А C-F
map C-П C-G
map C-Р C-H
map C-О C-J
map C-Л C-K
map C-Д C-L
map C-Ж C-:
map C-Э C-"
map C-Я C-Z
map C-Ч C-X
map C-С C-C
map C-М C-V
map C-И C-B
map C-Т C-N
map C-Ь C-M
map C-Б C-<
map C-Ю C->

