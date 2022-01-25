""
" Lualine
""

lua << EON
local custom_gruvbox = require'lualine.themes.auto'
-- Change the background of lualine_c section for normal mode
-- custom_gruvbox.normal.c.bg = '#112233' -- rgb colors are supported
require'lualine'.setup{
    options = { theme  = custom_gruvbox },
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    sections = {
        lualine_z = {
            { 'location' },
            {
                'diagnostics',
                -- table of diagnostic sources, available sources:
                -- 'nvim_lsp', 'nvim_diagnostic', 'coc', 'ale', 'vim_lsp'
                -- Or a function that returns a table like
                --   {error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt}
                sources = {'nvim_diagnostic'},
                -- displays diagnostics from defined severity
                sections = {'error', 'warn', 'info', 'hint'},
                diagnostics_color = {
                    -- Same values like general color option can be used here.
                    error = 'DiagnosticError', -- changes diagnostic's error color
                    warn  = 'DiagnosticWarn',  -- changes diagnostic's warn color
                    info  = 'DiagnosticInfo',  -- changes diagnostic's info color
                    hint  = 'DiagnosticHint',  -- changes diagnostic's hint color
                },
                symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
                colored = true, -- displays diagnostics status in color if set to true
                update_in_insert = false, -- Update diagnostics in insert mode
                always_visible = false, -- Show diagnostics even if count is 0, boolean or function returning boolean
            }
        }
    }
}
EON

