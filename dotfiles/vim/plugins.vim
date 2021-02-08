" plugins
		call plug#begin('~/.vim/plugged')
			Plug 'haya14busa/incsearch.vim'
			Plug 'lervag/vimtex'
			Plug 'vim-syntastic/syntastic'
			Plug 'chrisbra/Colorizer'
			Plug 'terryma/vim-expand-region'
			Plug 'junegunn/fzf'
			Plug 'junegunn/fzf.vim'
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
		let g:syntastic_check_on_open = 0
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

		" fzf
		let $FZF_DEFAULT_COMMAND = 'find .'
