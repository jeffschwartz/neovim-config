""
" key bindings
""

" Displays a pop up window of keybindings
" nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Scrolling in insert mode
inoremap <C-E> <C-X><C-E>
inoremap <C-Y> <C-X><C-Y>

" Make editing and sourcing ~/.config/nvim/init.vim easier
command! Config execute ":e ~/.config/nvim/init.vim"
command! Source execute ":source ~/.config/nvim/init.vim"

" Buffers
"
" Buffer Navigation
nmap <leader>bp :bprevious<CR>
nmap <leader>bn :bnext<CR>
nmap <leader>bw :bwipe<CR>
nmap <leader>bd :bdelete<CR>
nmap <leader>ba :%bdelete<CR>
nmap <leader>bb <C-^>
nmap <leader>bl :ls<CR>
"delete all buffers except the current one
nmap <leader>bo :w <bar> %bd <bar> e# <bar> bd#<CR>
nnoremap <F5> :buffers<CR>:b<Space>

" Paging
nmap <space>f <C-f>
nmap <space>b <C-b>

" Windows/Splits/Tabs
"
" Split window
nnoremap <leader>ws :split<Return><C-w>w
nnoremap <leader>wv :vsplit<Return><C-w>w
"
" Open and close the quickfix window
nnoremap gq :copen<CR>
nnoremap gqc :ccl<CR>
"
" Move to window
nnoremap <leader>wn <C-w>w
nnoremap <leader>wh <C-w>h
nnoremap <leader>wk <C-w>k
nnoremap <leader>wj <C-w>j
nnoremap <leader>wl <C-w>l
nnoremap <leader>wr <C-w>r
nnoremap <leader>w= <C-w>=
"
" Close the current split
nnoremap <leader>wc :close<Return>
" Close all other splits
nnoremap <leader>wo <C-w>o
"
" Next tab
nnoremap <leader>tn :tabn<CR>
" Previous tab
nnoremap <leader>tp :tabp<CR>

" Escape
imap jj <Esc>

" When shifting reselect the previous Visual area
vnoremap < <gv
vnoremap > >gv

" Spell Checking
map <silent> <leader>s :setlocal spell! spelllang=en_us<CR>

" Change, Go Next The Current Word (i.e. CGN) without having to first do a search!
nnoremap <F6> :let @/= expand('<cword>')<cr>cgnutoPairsReturn
