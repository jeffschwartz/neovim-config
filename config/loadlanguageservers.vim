""
" Load Language Servers
" The following language servers are provided by vscode-langservers-extracted
" which was installed globally via NPM - see npm ls -g --depth 0.
" See: https://github.com/hrsh7th/vscode-langservers-extracted.
""

lua << EOF
require'lspconfig'.tsserver.setup{}
require'lspconfig'.eslint.setup{}
EOF
