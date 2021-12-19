""
" Load Language Servers
""

" TypeScript Server
lua << EOF
require'lspconfig'.tsserver.setup{}
EOF

" Eslint Server
lua << EOF
require'lspconfig'.eslint.setup{}
EOF

" Lualine Server
lua << END
require'lualine'.setup()
END
