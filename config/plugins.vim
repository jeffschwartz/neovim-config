""
" This file loads plugins using 'vim-plug' which is autoloaded (i.e. located in)
" from '~/.nvim/autoload'. The individual plugins are loaded from
" '~/.local/share/nvim/plugged'.
"
" Plugins via vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory
"   names like 'plugin'
""
 packadd cfilter

call plug#begin()

" Neovim's builtin language server (client)
Plug 'neovim/nvim-lspconfig'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'
Plug 'ThePrimeagen/refactoring.nvim'
" Plug 'nvim-treesitter/nvim-treesitter-refactor'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Rust - See https://github.com/simrat39/rust-tools.nvim
Plug 'simrat39/rust-tools.nvim'

" Doge Documentation Generator
" Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

" An annotation generator, such as for JSDoc, that supports multiple languages and annotation conventions.
 Plug 'danymat/neogen'

" Todo Comments
Plug 'folke/todo-comments.nvim'

" lualine.nvim (replacement status line for vim-airline written in Lua)
Plug 'nvim-lualine/lualine.nvim'

" nvim-cmp Code Completion Providers
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'
Plug 'petertriho/cmp-git'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'octaltree/cmp-look'

" nvim-dap Debug Adapter Protocol
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap'

" Ultisnips
Plug 'SirVer/ultisnips'

" sass/css Colors
Plug 'gko/vim-coloresque'

" Color Picker
Plug 'KabbAmine/vCoolor.vim'

" Show Keybindings In Popup
" Plug 'liuchengxu/vim-which-key'

" VIM Repeat - Cosco dependency for repeat action
Plug 'tpope/vim-repeat'

" Colon and semicolon insertion
Plug 'lfilho/cosco.vim'
" Plug 'jeffschwartz/cosco.vim', {'branch': 'hotfix-comment'}

" Auto Pairs - insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Indent blankline - indent guides
Plug 'lukas-reineke/indent-blankline.nvim'

" Auto Save
Plug '907th/vim-auto-save'

" " Emmet
Plug 'mattn/emmet-vim'

" Surround
Plug 'tpope/vim-surround'

" Commentary
Plug 'tpope/vim-commentary'

" " NERDTree File System Manager
" Plug 'scrooloose/nerdtree'

" " NERDTree Git Integration
" Plug 'Xuyuanp/nerdtree-git-plugin'

" nvim-tree.lua
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Markdown With Math Support
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Gitgutter
Plug 'airblade/vim-gitgutter'

" fugitive
Plug 'tpope/vim-fugitive'

" umimpaired
Plug 'tpope/vim-unimpaired'

" " spell check
Plug 'inkarkat/vim-ingo-library' "required for vim-SpellCheck
Plug 'inkarkat/vim-SpellCheck'

" color schemes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'sainnhe/gruvbox-material'

" VimWiki
Plug 'vimwiki/vimwiki'

" Calendar
Plug 'mattn/calendar-vim'

" Targets - adds various additional text objects
Plug 'wellle/targets.vim'

" Diffview.nvim - a single tabpage interface to
" cycle through diffs for all modified files for
" any git rev - requires Neovim >= 0.5.0
" Plug 'sindrets/diffview.nvim'

" " Icons for your statusline
" Plug 'kyazdani42/nvim-web-devicons'

call plug#end()
