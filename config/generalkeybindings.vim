"";
 " key bindings
""

" inoremap <C-Y> <C-X><C-Y>
" inoremap <c-x><c-k> <c-x><c-k>

" fugitive (git)
noremap <leader>g :G<CR>
noremap <leader>gl :G log --decorate<CR>
noremap <leader>gc :G commit<CR>
noremap <leader>gi :G rebase -i

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
" select a buffer from a list of all buffers
nnoremap <F5> :buffers<CR>:b<Space>

" Paging
" forward
noremap <leader>j <C-f>;
" backward
noremap <leader>k <C-b>;

" Escape
inoremap jj <Esc>
vnoremap vv <Esc>

" When shifting reselect the previous Visual area
vnoremap < <gv
vnoremap > >gv

" Spell Checking
map <silent> <leader>s :setlocal spell! spelllang=en_us<CR>

" Change, Go Next The Current Word (i.e. CGN) without having to first do a search!
nnoremap <F6> :let @/= expand('<cword>')<cr>cgnutoPairsReturn

" Quit NVIM/Vim
nnoremap gq :q<CR>

" Select all the content of the current buffer.
nnoremap <leader>sa ggVG

" Yank all the content of the current buffer.
nnoremap <leader>ya ggVGy<C-O>

" Window management
" Use `ALT+{h,j,k,l}` to navigate windows from any mode including terminal:
" Note: For the ALT key to work in mapping, iTerm must be configured to treat
" it as the Esc+ key in profile > keys
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
tnoremap <A-=> <C-\><C-N><C-w>=
"
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-=> <C-\><C-N><C-w>=
"
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <A-=> <C-w>=
nnoremap <A-r> <C-w>r
nnoremap <A-o> <C-w>o
nnoremap <A-s> :split<CR>
nnoremap <A-v> :vsplit<CR>
"
" tnoremap <A-[> <C-\><C-n>

"Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" nnoremap geh <cmd>Telescope find_files hidden=true<cr>
