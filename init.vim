""
" init.vim
""

" Load Plugins
source $HOME/.config/nvim/config/plugins.vim

" Language Servers Management
source $HOME/.config/nvim/config/lspconfig.lua
source $HOME/.config/nvim/config/lua-lsp.lua
source $HOME/.config/nvim/config/plugin-neogen.lua

" General Vim Settings
source $HOME/.config/nvim/config/generalsettings.vim

" Key Binings (Mapping)
source $HOME/.config/nvim/config/generalkeybindings.vim

" Plugins Configuration
source $HOME/.config/nvim/config/plugin-nvim-web-devicons.lua
source $HOME/.config/nvim/config/plugin-todo-comments.lua
source $HOME/.config/nvim/config/plugin-indentblankline.lua
source $HOME/.config/nvim/config/plugin-nvim-tree.lua
source $HOME/.config/nvim/config/plugin-gitgutter.vim
source $HOME/.config/nvim/config/plugin-vimwiki.vim
source $HOME/.config/nvim/config/plugin-cosco.vim
source $HOME/.config/nvim/config/plugin-treesitter.lua
" source $HOME/.config/nvim/config/plugin-nvim-treesitter-refactor.lua
source $HOME/.config/nvim/config/plugin-refactoring.lua
source $HOME/.config/nvim/config/plugin-telescope.vim
source $HOME/.config/nvim/config/plugin-cmp-nvim-ultisnips.lua
source $HOME/.config/nvim/config/plugin-cmp-look.lua
source $HOME/.config/nvim/config/plugin-cmp-git.lua
source $HOME/.config/nvim/config/plugin-cmp.lua
source $HOME/.config/nvim/config/plugin-lualine.lua
source $HOME/.config/nvim/config/plugin-rust-tools.lua
source $HOME/.config/nvim/config/plugin-markdown-preview.vim
" source $HOME/.config/nvim/config/plugin-doge.vim

"
" Line separator between window splits
" See https://www.youtube.com/watch?v=jH5PNvJIa6o&t=2s for info
set laststatus=3
highlight WinSeparator guibg=None

"
" Winbar - currently not supported
" See https://www.youtube.com/watch?v=LKW_SUucO-k
set winbar=%=%m=\ %f

" Languages
"
" Perl Not Supported
let g:loaded_perl_provider = 0
" Python Support
let g:loaded_python_provider= 0
let g:python3_host_prog ="/opt/homebrew/bin/python3"
