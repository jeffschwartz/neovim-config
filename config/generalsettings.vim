""
" General Vim Settings
""

" Influence how Vim formats text
set formatoptions=tc

" Copy indent from current line when starting a new line (typing <CR>
" in Insert mode or when using the "o" or "O" command)
set autoindent

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

" A saner autocomplete option menu
"set completeopt=menuone,longest
" set completeopt=menuone,noinsert,noselect

" Make "find"ing work better
set path+=**
set wildmenu

" True color support
set termguicolors

" Colorscheme
" see https://github.com/folke/tokyonight.nvim for details
let g:tokyonight_style = "night"
let g:tokyonight_lualine_bold = 1
let g:tokyonight_italic_functions = 1
let g:tokyonight_italic_variables = 1
let g:tokyonight_terminal_colors = 1
let g:tokyonight_dark_sidebar = 1
let g:tokyonight_dark_float = 1
let g:tokyonight_hide_inactive_statusline = 1
let g:tokyonight_dark_float = 1

colorscheme tokyonight
set background=dark

" Automatic toggling between line number modes
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Display the ruler in the status bar
set ruler

" Hybrid cursor support
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
            \,sm:block-blinkwait175-blinkoff150-blinkon175

" Enable Auto Save
let g:auto_save = 0

" Status Line
set laststatus=2

" Spaces
set tabstop=4 expandtab shiftwidth=4 smarttab

" Copy & paste to the clipboard
set clipboard+=unnamedplus

" Syntax highlighting
syntax on

" Remove trailing white space from lines when writing the buffer
autocmd FileType c,cpp,java,javascript,json,ts,php,html,markdown,vim,lua autocmd BufWritePre <buffer> %s/\s\+$//e

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
" set timeoutlen=1500

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

" Use neovim's highligh yank
au TextYankPost * silent! lua vim.highlight.on_yank()
