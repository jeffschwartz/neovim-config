lua << EOF
require("indent_blankline").setup {
    -- the context is off by default, use this to turn it on
    show_current_context = false,
    show_current_context_start = false
}
EOF
