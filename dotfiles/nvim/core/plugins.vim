" plugins
call plug#begin()
    Plug 'haya14busa/incsearch.vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'smithbm2316/centerpad.nvim'
    Plug 'catppuccin/nvim', {'as': 'catppuccin'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'kyazdani42/nvim-tree.lua'
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
nnoremap <c-n> <cmd>Telescope find_files<cr>
nnoremap <c-f> <cmd>Telescope live_grep<cr>
nnoremap <c-e> <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

noremap <c-q> <nop>
lua <<EOF
# treesitter
require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<c-w>",
      node_incremental = "<c-w>",
      scope_incremental = "grc",
      node_decremental = "<c-q>",
    },
  },
}

require("telescope").load_extension "file_browser"
require("nvim-tree").setup()
EOF
