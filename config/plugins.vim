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

call plug#begin()

" Neovim's builtin language server (client)
Plug 'neovim/nvim-lspconfig'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Todo Comments
Plug 'folke/todo-comments.nvim'

" lualine.nvim (replacement status line for vim-airline written in Lua)
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" nvim-cmp Code Completion Providers
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'octaltree/cmp-look'

" LuaSnip
" Plug 'rafamadriz/friendly-snippets'
Plug 'L3MON4D3/LuaSnip'

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

" Auto Pairs - insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Indent blankline - line indentation
Plug 'lukas-reineke/indent-blankline.nvim'

" Auto Save
Plug '907th/vim-auto-save'

" Emmet
Plug 'mattn/emmet-vim'

" Surround
Plug 'tpope/vim-surround'

" Commentary
Plug 'tpope/vim-commentary'

" NERDTree File System Manager
Plug 'scrooloose/nerdtree'

" NERDTree Git Integration
Plug 'Xuyuanp/nerdtree-git-plugin'

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

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

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

call plug#end()
