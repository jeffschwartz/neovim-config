""
" key bindings
""

" Scrolling in insert mode
inoremap <C-E> <C-X><C-E>

inoremap <C-Y> <C-X><C-Y>

" Make editing and sourcing ~/.config/nvim/init.vim easier
command! Config execute ":e ~/.config/nvim/init.vim"
command! Source execute ":source ~/.config/nvim/init.vim"

" Buffer Navigation
nmap <leader>bp :bprevious<CR>
nmap <leader>bn :bnext<CR>
nmap <leader>bd :bdelete<CR>
nmap <leader>ba :%bdelete<CR>
nmap <leader>bb <C-^>
nmap <leader>bl :ls<CR>
"delete all buffers except the current one
nmap <leader>bo :w <bar> %bd <bar> e# <bar> bd#<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>

" Paging
nmap <space>f <C-f>
nmap <space>b <C-b>

" Windows
" Split window
nnoremap <leader>ws :split<Return><C-w>w
nnoremap <leader>wv :vsplit<Return><C-w>w

" Move to window
nnoremap <leader>wn <C-w>w
nnoremap <leader>wh <C-w>h
nnoremap <leader>wk <C-w>k
nnoremap <leader>wj <C-w>j
nnoremap <leader>wl <C-w>l
nnoremap <leader>wr <C-w>r
nnoremap <leader>w= <C-w>=

" Close window
nnoremap <leader>wc :close<Return>

" Close<leader> all other windows
nnoremap <leader>wo <C-w>o

" Tabs
nnoremap <leader>tn :tabn<CR>
nnoremap <leader>tp :tabp<CR>

" Escape
imap jj <Esc>

" When shifting reselect the previous Visual area
vnoremap < <gv
vnoremap > >gv

" Spell Checking
map <silent> <leader>s :setlocal spell! spelllang=en_us<CR>

" Python Support
let g:python_host_prog = '/usr/local/bin/python2.7'
let g:python3_host_prog = '/usr/local/bin/python3.9'

" Change, Go Next The Current Word (i.e. CGN) without having to first do a search!
nnoremap <F6> :let @/= expand('<cword>')<cr>cgn
