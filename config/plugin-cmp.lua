----
-- Plugin: cmp.lua
-- Autocompletion - See https://github.com/hrsh7th/nvim-cmp
----

local cmp = require'cmp'
cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
    },
    diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'}
    },
    mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-k>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-j>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-y>'] = cmp.config.disable,
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'ultisnips' },
        { name = 'look' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'cmdline' },
        { name = 'git' },
    },
    formatting = {
        format = function(entry, vim_item)
            -- Kind icons
            -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
            vim_item.kind = require'lspkind'.presets.default[vim_item.kind]
            -- Source
            vim_item.menu = ({
                ultisnips = "[Ultisnips]",
                nvim_lsp = "[LSP]",
                buffer = "[Buffer]",
                look = "[Dict]",
                treesitter = "[treesitter]",
                nvim_lua = "[Lua]",
                path = "[Path]",
                spell= "[Spell]",
            })[entry.source.name]
            return vim_item
        end
    },
})

-- Set configuration for specific filetype.

-- cmp.setup.filetype('gitcommit', {
--     sources = {
--         { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
--     }, {
--         { name = 'buffer' },
--     }
-- })

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    }
})

-- -- Setup lskpkind
-- local lspkind = require('lspkind')
-- cmp.setup {
--     formatting = {
--         format = lspkind.cmp_format({
--             mode = 'symbol', -- show only symbol annotations
--             maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

--             -- The function below will be called before any actual modifications from lspkind
--             -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
--             before = function (entry, vim_item)
--                 -- ...
--                 return vim_item
--             end
--         })
--     }
-- }
