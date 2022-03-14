""
" Plugin: cmp.vim
" Autocompletion - See https://github.com/hrsh7th/nvim-cmp
""

set completeopt="menu,menuone,noinsert"

lua <<EOF
    -- Setup nvim-cmp.
    local cmp = require'cmp'
    cmp.setup({
        snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
                -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
                vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
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
        sources = cmp.config.sources({
            -- { name = 'vsnip' }, -- For vsnip users.
            -- { name = 'snippy' }, -- For snippy users.
            -- { name = 'luasnip' }, -- For luasnip users.
            -- { name = 'ultisnips' }, -- For ultisnips users.
            { name = 'nvim_lsp' },
            { name = 'treesitter' },
            { name = 'tsserver' },
            { name = 'eslint' },
            { name = 'lua' },
            { name = 'ultisnips' },
            { name = 'path' },
            { name = 'look' },
            { name = 'buffer' },
            { name = 'spell' },
            }),
        formatting = {
            format = function(entry, vim_item)
                -- Kind icons
                -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
                -- Source
                vim_item.menu = ({
                    ultisnips = "[Ultisnips]",
                    buffer = "[Buffer]",
                    nvim_lsp = "[LSP]",
                    treesitter = "[treesitter]",
                    nvim_lua = "[Lua]",
                    path = "[Path]",
                    look = "[Look]",
                    spell= "[Spell]",
                })[entry.source.name]
                return vim_item
            end
        },
    })

  -- Set configuration for specific filetype.

    cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
          { name = 'buffer' },
        })
    })

    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline('/', {
        sources = {
            { name = 'buffer' }
        }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' }
        }, {
        { name = 'cmdline' }
        })
    })

    -- Setup lskpkind
    local lspkind = require('lspkind')
    cmp.setup {
      formatting = {
          format = lspkind.cmp_format({
              mode = 'text', -- show only text
              maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
          })
      }
    }
EOF
