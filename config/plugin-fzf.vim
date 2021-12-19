""
" Plugin: FZF (Fuzzy Find)
""

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"

command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <C-p> :Files<CR>

nnoremap <C-h> :Files ~<CR>
