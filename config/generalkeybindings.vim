"";
 " key bindings
""

" inoremap <C-Y> <C-X><C-Y>
" inoremap <c-x><c-k> <c-x><c-k>

" Make editing and sourcing ~/.config/nvim/init.vim easier
command! Config execute ":e ~/.config/nvim/init.vim"
command! Source execute ":source ~/.config/nvim/init.vim"

" Buffers
"
" Buffer Navigation
noremap <leader>bp :bprevious<CR>
noremap <leader>bn :bnext<CR>
noremap <leader>bd :bdelete<CR>
noremap <leader>bb <C-^>
noremap <leader>bl :ls<CR>
"
" delete all buffers
noremap <leader>ba :%bdelete<CR>
"delete all buffers except the current one
noremap <leader>bo :w <bar> %bd <bar> e# <bar> bd#<CR>
"
" wipeout the current buffer
noremap <leader>bw :bwipe<CR>
" wipeout all buffers
noremap <leader>bwa %bwipeout
"
" select a buffer fro a list of all buffers
nnoremap <F5> :buffers<CR>:b<Space>

" Paging
" forward
noremap <leader>j <C-f>;
" backward
noremap <leader>k <C-b>;

"" Windows/Splits/Tabs
""
"" Split window
"nnoremap <leader>s :split<Return><C-w>w
"nnoremap <leader>v :vsplit<Return><C-w>w
""
"" Move to window
" nnoremap <leader>ww <C-w>w
" nnoremap <leader>wh <C-w>h
" nnoremap <leader>wk <C-w>k
" nnoremap <leader>wj <C-w>j
" nnoremap <leader>wl <C-w>l
" nnoremap <leader>wr <C-w>r
" nnoremap <leader>w= <C-w>=
""
"" Close the current window
"nnoremap <leader>c :close<Return>
"" Close all other window
"nnoremap <leader>a <C-w>o
""
"" Open and close the quickfix window
"nnoremap gq :copen<CR>
"nnoremap gqc :ccl<CR>

" Escape
imap jj <Esc>

" When shifting reselect the previous Visual area
vnoremap < <gv
vnoremap > >gv

" Spell Checking
map <silent> <leader>s :setlocal spell! spelllang=en_us<CR>

" Change, Go Next The Current Word (i.e. CGN) without having to first do a search!
nnoremap <F6> :let @/= expand('<cword>')<cr>cgnutoPairsReturn

" Quit NVIM/Vim
nnoremap <leader>qq :q<CR>
