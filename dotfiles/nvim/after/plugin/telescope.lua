local builtin = require('telescope.builtin')
vim.keymap.set('n', '<c-n>', builtin.find_files, {})
vim.keymap.set('n', '<leader>f', builtin.git_files, {})
vim.keymap.set('n', '<c-f>', builtin.live_grep, {})
vim.keymap.set('n', '<c-e>', builtin.buffers, {})

require('telescope').setup{
    defaults = {
        mappings = {
            n = {
                ['<s-del>'] = require('telescope.actions').delete_buffer
            },
            i = {
                ["<c-h>"] = "which_key",
                ['<s-del>'] = require('telescope.actions').delete_buffer
            }
        }
    }
}
