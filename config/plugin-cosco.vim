""
" Plugin: Cosco
" Colon and Semicolon insertion
""

augroup cosco
    autocmd FileType javascript,css,json nmap <silent> <Leader>; <Plug>(cosco-commaOrSemiColon)
    autocmd FileType javascript,css,json imap <silent> <Leader>; <c-o><Plug>(cosco-commaOrSemiColon)
augroup END

let g:cosco_ignore_comment_lines = 1     " Default : 0
let g:auto_comma_or_semicolon = 1     " Default : 0
" let g:cosco_filetype_whitelist = ['php', 'javascript']
let g:cosco_filetype_blacklist = ['vim', 'bash', 'lua']
