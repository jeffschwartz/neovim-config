local neogen = require('neogen')

neogen.setup {
    enabled = true,             --if you want to disable Neogen
    input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
    -- jump_map = "<C-e>"       -- (DROPPED SUPPORT, see [here](#cycle-between-annotations) !) The keymap in order to jump in the annotation fields (in insert mode)
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "gnm", ":lua require('neogen').generate({ type = 'file' })<CR>", opts)
vim.api.nvim_set_keymap("n", "gnc", ":lua require('neogen').generate({ type = 'class' })<CR>", opts)
vim.api.nvim_set_keymap("n", "gnf", ":lua require('neogen').generate({ type = 'func' })<CR>", opts)
vim.api.nvim_set_keymap("n", "gnt", ":lua require('neogen').generate({ type = 'type' })<CR>", opts)
