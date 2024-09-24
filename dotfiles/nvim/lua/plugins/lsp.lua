return {
    { "neovim/nvim-lspconfig", },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-nvim-lua" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "saadparwaiz1/cmp_luasnip" },
    { "L3MON4D3/LuaSnip" },
    { "rafamadriz/friendly-snippets" },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require('cmp')
            local luasnip = require('luasnip')
            require('luasnip.loaders.from_vscode').lazy_load({ exclude = { "all" } })
            luasnip.config.setup({})

            cmp.setup {
                completion = {
                    completeopt = 'menu,menuone,noinsert',
                },
                mapping = cmp.mapping.preset.insert({
                    ["<cr>"] = cmp.mapping(function(fallback)
                        local entry = cmp.get_selected_entry()
                        if not entry then
                            fallback()
                            return
                        end

                        local line = vim.api.nvim_get_current_line()
                        local col = vim.fn.col('.') - 1
                        local text_before_cursor = line:sub(1, col)
                        local text_after_cursor = line:sub(col + 1)

                        local text_comp = entry:get_insert_text()
                        local comp_offset = #string.sub(line, entry:get_offset(), col)

                        local text_before_comp = string.sub(text_before_cursor, 1, #text_before_cursor - comp_offset)
                        local first_word_after = string.match(text_after_cursor, "^[%w_]*")
                        local new_text = text_before_comp ..
                            text_comp .. string.sub(text_after_cursor, #first_word_after + 1)
                        vim.print(text_after_cursor, first_word_after)

                        vim.api.nvim_set_current_line(new_text)
                        vim.fn.cursor(0, #text_before_comp + #text_comp + 1)
                    end, { 'i', 's' }),
                    ["<m-cr>"] = cmp.mapping.complete({ reason = cmp.ContextReason.Auto }),
                }),
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'path' },
                },
            }
        end
    },
    {
        "nvimtools/none-ls.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.biome.with({
                        args = {
                            'check',
                            '--apply',
                            '--linter-enabled=true',
                            '--formatter-enabled=true',
                            '--organize-imports-enabled=true',
                            '--skip-errors',
                            '--stdin-file-path=$FILENAME',
                        },
                    }),
                }
            })
        end
    },
}
