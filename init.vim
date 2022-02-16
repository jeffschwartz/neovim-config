""
" init.vim
""

" Load Plugins
source $HOME/.config/nvim/config/plugins.vim

" Language Servers Management
source $HOME/.config/nvim/config/lua-lsp.vim
source $HOME/.config/nvim/config/loadlanguageservers.vim
source $HOME/.config/nvim/config/lspconfig.vim

" General Vim Settings
source $HOME/.config/nvim/config/generalsettings.vim

" " Key Binings (Mapping)
source $HOME/.config/nvim/config/generalkeybindings.vim

" Plugins Configuration
source $HOME/.config/nvim/config/plugin-todo-comments.vim
source $HOME/.config/nvim/config/plugin-indentblankline.vim
source $HOME/.config/nvim/config/plugin-nerdtree.vim
source $HOME/.config/nvim/config/plugin-emmet.vim
source $HOME/.config/nvim/config/plugin-gitgutter.vim
source $HOME/.config/nvim/config/plugin-vimwiki.vim
source $HOME/.config/nvim/config/plugin-cosco.vim
source $HOME/.config/nvim/config/plugin-treesitter.vim
source $HOME/.config/nvim/config/plugin-telescope.vim
source $HOME/.config/nvim/config/plugin-cmp.vim
" source $HOME/.config/nvim/config/plugin-cmp-nvim-ultisnips.vim - not currently used
source $HOME/.config/nvim/config/plugin-ultisnips.vim
source $HOME/.config/nvim/config/plugin-lualine.vim
source $HOME/.config/nvim/config/emmet-ls.vim

:let g:loaded_perl_provider = 0
let g:python3_host_prog ="/opt/homebrew/bin/python3"
