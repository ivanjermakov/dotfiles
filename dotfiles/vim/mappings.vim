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

		" fzf
		nnoremap <c-n> :Files<cr>

		" open last file
		nnoremap <Tab> <c-^>

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
