"";
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

" Auto Commands
" Automatic toggling between line number modes
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

augroup Format-Options
    autocmd!
    autocmd BufEnter * setlocal formatoptions=t,c,r,j
augroup END

" Remove trailing white space from lines when writing the buffer
augroup Remove-Trailong-White-Space-From-Lines
    autocmd!
    autocmd FileType c,cpp,java,javascript,json,ts,php,html,markdown,vim,lua autocmd BufWritePre <buffer> %s/\s\+$//e
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
set updatetime=100

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

" nvim-tree" vimrc
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 1 "0 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
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
