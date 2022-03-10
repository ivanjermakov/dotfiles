" plugins
		call plug#begin()
				Plug 'haya14busa/incsearch.vim'
				" telescope
				Plug 'nvim-lua/plenary.nvim'
				Plug 'nvim-telescope/telescope.nvim'
				Plug 'terryma/vim-expand-region'
				Plug 'smithbm2316/centerpad.nvim'
				Plug 'catppuccin/nvim', {'as': 'catppuccin'}
		call plug#end()

" plugin settings
		" search
		map / <Plug>(incsearch-forward)
		map ? <Plug>(incsearch-backward)
		map g/ <Plug>(incsearch-stay)
		nnoremap <silent> <leader>h :noh<cr><esc>
		set hlsearch
		set runtimepath^=~/.vim/bundle/vim-indexed-search

		" telescope
		nnoremap <c-N> <cmd>Telescope find_files<cr>
		nnoremap <c-F> <cmd>Telescope live_grep<cr>
		nnoremap <leader>fb <cmd>Telescope buffers<cr>
		nnoremap <leader>fh <cmd>Telescope help_tags<cr>

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
