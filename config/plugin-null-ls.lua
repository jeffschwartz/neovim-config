-- Note: Donot use this to configure language servers like those that provide diagnostics. It isn't meant for that. Use it to configure things that you might run from the command line.
local null_ls = require("null-ls")

-- -- code action sources
-- local code_actions = null_ls.builtins.code_actions

-- -- diagnostic sources
local diagnostics = null_ls.builtins.diagnostics

-- -- formatting sources
local formatting = null_ls.builtins.formatting

-- -- hover sources
-- local hover = null_ls.builtins.hover

-- -- completion sources
-- local completion = null_ls.builtins.completion

-- register any number of sources simultaneously
-- local sources = {
--                 formatting.stylua
--     -- null_ls.builtins.diagnostics.write_good,
--     -- null_ls.builtins.code_actions.gitsigns,
-- }

-- Note: stylua is a lua formatter that can run from the command line. I installed it using rust's cargo utliity.
local sources = {
    formatting.stylua.with({
        extra_args = { "--config-path", vim.fn.expand("~/.config/stylua.toml") },
    }),
    formatting.eslint,
}

-- null_ls.setup({
--     sources = sources
-- })
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
    sources = sources,
    -- you can reuse a shared lspconfig on_attach callback here
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})
vim.cmd('map <space>f :lua vim.lsp.buf.format(nil, 10000)<CR>')
