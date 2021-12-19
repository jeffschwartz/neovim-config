""
" Plugin: Vimwiki
" See: https://github.com/vimwiki/vimwiki
""

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
                      " \ 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_global_ext = 0

:nmap gwq <Plug>VimwikiUISelect

:map gww <Plug>VimwikiIndex
