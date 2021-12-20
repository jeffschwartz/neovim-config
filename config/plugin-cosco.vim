""
" Plugin: Cosco
" Colon and Semicolon insertion
""

autocmd FileType javascript,css,scss,json nmap <silent> <Leader>c <Plug>(cosco-commaOrSemiColon)
autocmd FileType javascript,css,scss,json imap <silent> <Leader>c <c-o><Plug>(cosco-commaOrSemiColon)
let g:cosco_ignore_comment_lines = 1     " Default : 0
let g:auto_comma_or_semicolon = 0     " Default : 0
