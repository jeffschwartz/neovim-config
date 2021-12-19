""
" Load Language Servers
""

lua << EOF
require'lspconfig'.tsserver.setup{}
require'lspconfig'.eslint.setup{}
require'lualine'.setup()
EOF
