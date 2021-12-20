""
" Plugin: Emmet
""

" Expand 'html:5' to an html5 template
let g:user_emmet_settings = {
\'html': {
\    'snippets': {
\        'html:5': '!!!+html>(head>(meta[charset=${charset}]+meta[name="viewport" content="width=device-width,initial-scale=1.0"]+meta[http-equiv="X-UA-Compatible" content="ie=edge"]+title^body>main'
        \}
    \}
\}
