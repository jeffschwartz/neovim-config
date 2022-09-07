""
" General Vim Settings
""

" Path where swap files will reside
set directory=$HOME/.config/nvim/swapfiles/

" Influence how Vim formats text
" set formatoptions=tcj

" Copy indent from current line when starting a new line (typing <CR>
" in Insert mode or when using the "o" or "O" command)
" set autoindent
"" Do smart autoindenting when starting a new line.
"" Works for C-like programs, but can also be used for other languages.
set smartindent

" A comma separated list of options for Insert mode completion
set completeopt=menu,menuone,noselect

" Enable file type detectio:autocmd
filetype on

" Gutter width
set numberwidth=5

" Leader
nnoremap <SPACE> <Nop>
let mapleader = "\<space>"

" Lua syntax highlighting inside .vim files
let g:vimsyn_embed = 'l'

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=4

" Show white space as '•' which is useful to spot if a line has trailing white space
set list
set listchars=tab:>\ ,trail:•

" Don't want to be prompted when not having saved the current file before editing a new file.
set hidden

" Confirm unsaved changes when abandoning a buffer
set confirm

" Disable backup files
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Don't give |ins-completion-menu| messages.
set shortmess+=c

" Cause Vim to treat all numerals as decimal, regardless of whether they are
" octal (i.e. have leading zeros)
set nrformats=

" Make "find"ing work better
set path+=**
set wildmenu
set wildmode=longest:full,full

" True color support
set termguicolors

" Colorscheme
"
" TokyoNight
" see https://github.com/folke/tokyonight.nvim for details
let g:tokyonight_style = "storm"
let g:tokyonight_terminal_colors = 1
let g:tokyonight_lualine_bold = 1
let g:tokyonight_italic_comments = 1
let g:tokyonight_italic_keywords = 1
let g:tokyonight_italic_functions = 1
let g:tokyonight_italic_variableis = 1
let g:tokyonight_transparent = 1
let g:tokyonight_transparent_sidebar = 0
let g:tokyonight_dark_sidebar = 0
let g:tokyonight_dark_float = 0
let g:tokyonight_hide_inactive_statusline = 0
colorscheme tokyonight
"
"Gruvbox
" Available values: 'hard', 'medium'(default), 'soft'
" let g:gruvbox_material_background = 'hard'
" let g:gruvbox_material_better_performance = 1
" let g:gruvbox_material_diagnostic_virtual_text = 'colored'
" colorscheme gruvbox-material
"
set background=dark

" Auto Commands
" Automatic toggling between line number modes
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" augroup Format-Options
"     autocmd!
"     autocmd BufEnter * setlocal formatoptions=t,c,r,o,q,w,a,n,j
" augroup END

" Remove trailing white space from lines when writing the buffer
augroup Remove-Trailong-White-Space-From-
    autocmd!
    autocmd FileType c,cpp,java,javascript,json,ts,php,html,markdown,vim,lua,rs autocmd BufWritePre <buffer> %s/\s\+$//e
augroup END

" Highlight yank
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

augroup nvim_tree
    autocmd!
    autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
augroup END

augroup delete_trailing_blank_lines_on_save
    autocmd!
    autocmd BufWritePre * :%s#\($\n\s*\)\+\%$##e
augroup END

augroup jsoncFtdetect
    autocmd!

    " Recognize some extensions known to have JSON with comments
    " Note: If conflicts are found, please report them.
    " See: https://github.com/kevinoid/vim-jsonc/blob/master/ftdetect/jsonc.vim

    " https://github.com/mohae/cjson
    autocmd BufNewFile,BufRead *.cjsn setfiletype jsonc
    " https://github.com/mohae/cjson
    autocmd BufNewFile,BufRead *.cjson setfiletype jsonc
    " https://github.com/Microsoft/vscode/issues/48969
    " https://komkom.github.io/
    " https://github.com/mochajs/mocha/issues/3753
    autocmd BufNewFile,BufRead *.jsonc setfiletype jsonc

    " Recognize some files known to support JSON with comments
    " Entries sorted by pattern

    " https://eslint.org/docs/user-guide/configuring
    autocmd BufNewFile,BufRead .eslintrc.json setlocal filetype=jsonc
    " https://jshint.com/docs/
    autocmd BufNewFile,BufRead .jshintrc setlocal filetype=jsonc
    " https://mochajs.org/#configuring-mocha-nodejs
    autocmd BufNewFile,BufRead .mocharc.json setlocal filetype=jsonc
    autocmd BufNewFile,BufRead .mocharc.jsonc setlocal filetype=jsonc
    " https://github.com/neoclide/coc.nvim
    autocmd BufNewFile,BufRead coc-settings.json setlocal filetype=jsonc
    " https://github.com/clutchski/coffeelint/pull/407
    autocmd BufNewFile,BufRead coffeelint.json setlocal filetype=jsonc
    " https://github.com/microsoft/TypeScript/pull/5450
    autocmd BufNewFile,BufRead tsconfig.json setlocal filetype=jsonc
    " https://github.com/Alexays/Waybar/wiki/Configuration
    autocmd BufNewFile,BufRead */waybar/config setlocal filetype=jsonc
augroup END

" Display the ruler in the status bar
set ruler

" Hybrid cursor support
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
            \,sm:block-blinkwait175-blinkoff150-blinkon175

" Enable Auto Save
let g:auto_save = 0

"  Statplit" Line
" set laststatus=2

" Spaces
set tabstop=4 expandtab shiftwidth=4 smarttab

" Copy & paste to the clipboard
set clipboard+=unnamedplus

" Syntax highlighting
syntax on

" Ignored Files
set wildignore=*/node_modules/*

" No New Line At End Of File;
set nofixeol

" Have Vim wrap (wrap) lines longer than the width of the window and
" have Vim break (linebreak) long lines at word boundaries when wrap
" is turned on
set wrap linebreak

"Display The File Name In The Terminal Tab
set title

" If this many milliseconds (default=400) nothing is typed the swap file will be
" written to disk (see |crash-recovery|).  Also used for the
" CursorHold autocommand event.
" set updatetime=100

" Time in milliseconds to wait (defaults to 1000) for a mapped sequence to complete.
" set timeoutlen=500

" Mouse Support
set mouse=a

" Higlight Cursor Line In The Current Window
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Better Window Splitting
 set splitright
 set splitbelow

" Better Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set inccommand=nosplit "see http://vimcasts.org/episodes/neovim-eyecandy/ for desciption

nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>l :NvimTreeFindFile<CR>
" More available functions:
" NvimTreeOpen
" NvimTreeClose
" NvimTreeFocus
" NvimTreeFindFileToggle
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers

" a list of groups can be found at `:help nvim_tree_highlight`
" highlight NvimTreeFolderIcon guibg=blue
