""
" Plugin: Airline
" Auto colon and semicolon insertion
""

function! AirlineInit()
    let g:airline_section_b = airline#section#create(['branch',' ','hunks'])
    let airline#extensions#coc#error_symbol = 'E:'
    let airline#extensions#coc#warning_symbol = 'W:'
    let g:airline#extensions#coc#enabled = 1
    " g:airline#extensions#coc#show_coc_status = 1
endfunction

autocmd VimEnter * call AirlineInit()

let g:airline_powerline_fonts = 1

" Airline shows modes so there is no need to show the mode on the last line
"
set noshowmode
