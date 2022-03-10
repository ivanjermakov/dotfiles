let g:config_files = [
      \ 'behavior.vim',
      \ 'mappings.vim',
      \ 'plugins.vim',
      \ 'autocmds.vim',
      \ 'functions.vim',
      \ 'gvim.vim'
      \ ]

for s:fname in g:config_files
  execute printf('source %s/core/%s', stdpath('config'), s:fname)
endfor

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
