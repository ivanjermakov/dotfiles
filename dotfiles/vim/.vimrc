" appearance & behavior
		" reduce delays
		set ttimeoutlen=5
		
	    " allow us to use Ctrl-s and Ctrl-q as keybinds
		silent !stty -ixon

		set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyukop[]asdfgihjl\\;'zxcvbnm\\,.~QWERTYUKOP{}ASDFGIHJL:\\"ZXCVBNM<>
		imap х <esc>

		" enable syntax highlighting
		filetype plugin on
		syntax on

        " spell check
		set spelllang=en_us,ru 
		
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

		" set tab to spaces
		set tabstop=4

		" left lines before/after cursor when scrolling
		set scrolloff=8

		" enable multiline edit
		set virtualedit=all

		highlight Search ctermbg=7*

" mappings
		" make space leader key
		let mapleader=" "
		map <space> <nop>

		" disable c-z because habitly clicking it cause Vim to close
		nnoremap <c-z> <nop>

        " redo
		nnoremap U <c-r>
		
		" remap h to insert and use ijkl for inverse T cursor movement
		noremap h i
		noremap i h
		noremap H I
		noremap I H

		" remap arrow keys
		noremap i gk
		noremap j h
		noremap k gj

		" navigation
        map I <c-u>zz
        map K <c-d>zz
		map J gg
		map L G

		" use angle brackets to indent current line
		nnoremap < <<
		nnoremap > >>

		" keep selection after indenting
		vmap < <gv
		vmap > >gv

		" apply macros
		nnoremap Q @q
		vnoremap Q :norm @q<cr>

" leader mappings
		" save
		noremap <leader>w :w<cr>

		" quit
		noremap <leader>q :q<cr>
 
		" select all text in buffer
		noremap <leader>a ggVG

		" visual block
        noremap <leader>v <c-v>
        
		" move line or selection by line
        nmap <leader><up> mTddiP`Tii
        nmap <leader><down> mTddp`Tk
		vmap <leader><up> diP`[v`]
        vmap <leader><down> dp`[v`]

		" toggle spell check
		map <leader>c :call ToggleSpellCheck()<cr> 

" plugins
		call plug#begin('~/.vim/plugged')
			Plug 'haya14busa/incsearch.vim'
			Plug 'lervag/vimtex'
			Plug 'vim-syntastic/syntastic'
			Plug 'chrisbra/Colorizer'
			Plug 'jiangmiao/auto-pairs'
			Plug 'terryma/vim-expand-region'
			Plug 'Chiel92/vim-autoformat'
		call plug#end()

" plugin settings
		" search
		map / <Plug>(incsearch-forward)
		map ? <Plug>(incsearch-backward)
		map g/ <Plug>(incsearch-stay)
		nnoremap <silent> <leader>h :noh<cr><esc>
		set hlsearch
		set runtimepath^=~/.vim/bundle/vim-indexed-search

		" syntastic
		set statusline+=%#warningmsg#
		set statusline+=%{SyntasticStatuslineFlag()}
		set statusline+=%*
		let g:syntastic_check_on_open = 1
		let g:syntastic_check_on_w = 1
		highlight SignColumn ctermbg=256
		nnoremap <leader>s :SyntasticToggleMode<cr>

		" expand-region
		map <c-w> <Plug>(expand_region_expand)
		vmap <c-q> <Plug>(expand_region_shrink)
		let g:expand_region_text_objects = {
			  \ 'hw'  :0,
			  \ 'hW'  :0,
			  \ 'h"'  :0,
			  \ 'h''' :0,
			  \ 'h]'  :1,
			  \ 'hb'  :1,
			  \ 'hB'  :1,
			  \ 'hl'  :0,
			  \ 'hp'  :0,
			  \ 'he'  :0,
			  \ }

		" autoformat
		map <c-l> :Autoformat<cr>

" functions
		" toggle spellchecking
		function! ToggleSpellCheck()
		  set spell!
		  if &spell
			echo "Spellcheck ON"
		  else
			echo "Spellcheck OFF"
		  endif
		endfunction

" autocmds
	" autopdf tex
	autocmd BufWritePost *.tex !pl %
