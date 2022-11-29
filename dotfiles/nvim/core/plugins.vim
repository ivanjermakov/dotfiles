" plugins
call plug#begin()
    Plug 'haya14busa/incsearch.vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-file-browser.nvim'
    Plug 'smithbm2316/centerpad.nvim'
    Plug 'catppuccin/nvim', {'as': 'catppuccin'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'preservim/nerdtree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'Pocco81/AutoSave.nvim'
    Plug 'folke/which-key.nvim'
call plug#end()


" plugin settings

" incsearch
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

noremap <c-s-q> <nop>
lua <<EOF
# treesitter
require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<c-w>",
      node_incremental = "<c-w>",
      scope_incremental = "grc",
      node_decremental = "<c-s-q>",
    },
  },
}

require("telescope").load_extension "file_browser"
EOF

" coc https://github.com/neoclide/coc.nvim
"
set updatetime=300
set shortmess+=c
set signcolumn=number

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ CheckBackspace() ? "\<TAB>" :
    \ coc#refresh()
function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

inoremap <c-@> <c-space>
inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> <leader>d <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> <leader>u <Plug>(coc-implementation)
nmap <silent> <leader>b <Plug>(coc-references)

nnoremap <silent> <c-q> :call CocActionAsync('doHover')<CR>

nmap <leader>r <Plug>(coc-rename)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

nnoremap <f2> <Plug>(coc-diagnostic-prev)
nnoremap <f3> <Plug>(coc-diagnostic-next)
nnoremap <leader>i :CocDiagnostic<cr>

autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335
autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335

function! NerdTreeFocused() abort
    return matchstr(bufname(''), "NERD_tree_*") != ''
endfunction

" nerdtree
"
nnoremap <silent> <expr> <f1> NerdTreeFocused() ? "\:NERDTreeClose<cr>" : "\:NERDTreeFind<cr>"
let NERDTreeWinSize=40
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeMapOpenSplit = ''
map <leader>f :NERDTreeFind<cr>
nnoremap <silent> <esc> :wincmd l<cr>

" toggleterm
"
function! TermFocused() abort
    return matchstr(bufname(''), "*#toggleterm#*") != ''
endfunction

lua <<EOF
require("toggleterm").setup{
    size = 40
}
EOF
set hidden
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <f12> :ToggleTerm<cr>
tnoremap <f12> <c-\><c-n>:ToggleTerm<cr>
tnoremap <s-i> <c-\><c-n>:resize +10<cr>a
tnoremap <s-k> <c-\><c-n>:resize -10<cr>a
tnoremap <esc> <c-\><c-n>

" gitsigns
"
lua <<EOF
vim.wo.signcolumn = "yes"
require('gitsigns').setup()
EOF

" autosave
"
lua << EOF
require('autosave').setup({
    enabled = true,
    execution_message = ''
})
EOF

nnoremap <silent> <leader>l :%s/\s\+$//e<cr>

" which-key
"
lua << EOF
  require("which-key").setup {
    presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
    },
  }
EOF


lua << EOF
local catppuccin = require("catppuccin")
catppuccin.setup(
    {
		transparent_background = true
	}
)
catppuccin.load()
vim.cmd[[colorscheme catppuccin]]
EOF

