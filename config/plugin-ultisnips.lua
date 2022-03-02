local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
require("cmp").setup({
    snippet = {
        expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body)
        end,
    },
    sources = {
        { name = "ultisnips" },
        -- more sources
    }
})
