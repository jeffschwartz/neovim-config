---n-
-- Plugin: cmp.lua
-- Autocompletion - See https://github.com/hrsh7th/nvim-cmp
----

local cmp = require 'cmp'
local lspkind = require 'lspkind'

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' }
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs( -4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer',   keywork_length = 5 },
        { name = 'ultisnips' },
        { name = 'emmet_ls' },
    }, {
        { name = 'look' },
        { name = 'path' },
        { name = 'cmdline' },
        { name = 'git' },
    }),
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol_text', -- show only symbol annotations
            maxwidth = 50,
            menu = {
                nvim_lsp = "[lsp]",
                ultisnips = "[snp]",
                look = "[look]",
                path = "[path]",
                cmdline = "[cmdline]",
                emmet = "[emmet]",
                git = "[git]",
                buffer = "[buf]",
            }
        })
    }
})


-- Set configuration for specific filetype.

cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    }),
    formatting = {
        format = lspkind.cmp_format({
            mode = "symbol_text",
            menu = ({
                mvim_lsp = '[LSP]',
                ultisnips = '[UltiSnips]',
                look = '[look]',
                path = '[path]',
                cmdline = '[cmdline]',
                emmet_ls = '[emmet]',
                git = '[git]',
                buffer = '[buf]',
            }),
        }),
    },
})
