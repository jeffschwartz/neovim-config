""
" init.vim
""

" Load Plugins
source $HOME/.config/nvim/config/plugins.vim

" Language Servers Management
source $HOME/.config/nvim/config/loadlanguageservers.vim

" General Vim Settings
source $HOME/.config/nvim/config/generalsettings.vim

" Plugins Configuration
source $HOME/.config/nvim/config/plugin-lualine.vim
source $HOME/.config/nvim/config/plugin-nerdtree.vim
source $HOME/.config/nvim/config/plugin-emmet.vim
source $HOME/.config/nvim/config/plugin-gitgutter.vim
source $HOME/.config/nvim/config/plugin-vimwiki.vim
source $HOME/.config/nvim/config/plugin-cosco.vim
source $HOME/.config/nvim/config/plugin-lspconfig.vim " Note: this should always be done after all other plugins have been configured
source $HOME/.config/nvim/config/plugin-treesitter.vim
source $HOME/.config/nvim/config/plugin-telescope.vim
source $HOME/.config/nvim/config/plugin-cmp.vim

" Key Binings (Mapping)
source $HOME/.config/nvim/config/generalkeybindings.vim
