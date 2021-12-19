""
" Plugin: NERDTree
" File Manager
""

" Highlight The Current File
" Call NERDTreeFind if current window contains a modifiable
" file, and we're not in vimdiff else call NERDTree
" I modified the code that I found at
" https://stackoverflow.com/questions/7692233/nerdtree-reveal-file-in-tree
" to work my way!
function! SyncTree()
  if &modifiable && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
  else
    NERDTree
  endif
endfunction

" Sync the tree
nnoremap <silent> <leader>t :call SyncTree()<CR>

" Quit NERDTree after opening file
let g:NERDTreeQuitOnOpen = 1
