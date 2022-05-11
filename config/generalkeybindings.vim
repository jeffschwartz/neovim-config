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

" Escape
imap jj <Esc>
tnoremap <A-[> <C-\><C-n>

" When shifting reselect the previous Visual area
vnoremap < <gv
vnoremap > >gv

" Spell Checking
map <silent> <leader>s :setlocal spell! spelllang=en_us<CR>

" Change, Go Next The Current Word (i.e. CGN) without having to first do a search!
nnoremap <F6> :let @/= expand('<cword>')<cr>cgnutoPairsReturn

" Quit NVIM/Vim
nnoremap <leader>qq :q<CR>

" Yank all the content of the current buffer.
nnoremap <leader>sa ggVG

" Yank all the content of the current buffer.
nnoremap <leader>ya ggVGy<C-O>

" Window management
" Use `ALT+{h,j,k,l}` to navigate windows from any mode including terminal:
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
tnoremap <A-=> <C-\><C-N><C-w>=
tnoremap <leader>ws <C-\><C-N><C-w><C-s> "split window"
tnoremap <leader>wv <C-\><C-N><C-w><C-v> "vsplit window"
"
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-=> <C-\><C-N><C-w>=
inoremap <leader>ws <C-\><C-N><C-w><C-s> "split window"
inoremap <leader>wv <C-\><C-N><C-w><C-v> "vsplit window"
"
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <A-=> <C-w>=
nnoremap <A-r> <C-w>r
nnoremap <leader>ws <C-w>s "split window"
nnoremap <leader>wv <C-w>v "vsplit window"
nnoremap <leader>ww <C-w>w "next split"
nnoremap <leader>wo <C-w>o "only this split"
