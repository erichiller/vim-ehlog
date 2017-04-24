
" else use -> :set filetype=ehlog
" au BufRead,BufNewFile lgr_*\.(txt|log) set filetype=ehlog
au BufRead,BufNewFile lgr_* set filetype=ehlog
au BufRead,BufNewFile *.ehlog set filetype=ehlog



" au BufRead,BufNewFile lgr* set filetype=ehlog
" au BufRead,BufNewFile lgr_* set filetype=ehlog
" au BufRead,BufNewFile lgr* :echom "set ft to ehlog"
" au BufRead,BufNewFile lgr* setfiletype ehlog

" :echom "loaded ehlog ft"

