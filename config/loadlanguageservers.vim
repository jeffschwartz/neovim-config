""
" Load Language Servers
""

lua << EOF
-- vscode-langservers-extracted installed globally via NPM - see npm ls -g --depth 0
-- and https://github.com/hrsh7th/vscode-langservers-extracted
require'lspconfig'.tsserver.setup{}
require'lspconfig'.eslint.setup{}
EOF
