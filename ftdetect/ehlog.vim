
" else use -> :set filetype=ehlog
" au BufRead,BufNewFile lgr_*\.(txt|log) set filetype=ehlog
au BufRead,BufNewFile lgr_* set filetype=ehlog
au BufRead,BufNewFile *.ehlog set filetype=ehlog

" http://vimdoc.sourceforge.net/htmldoc/autocmd.html#FocusGained
" detect filetype on focus gained; as this usually indicates a change in intention?
" au FocusGained * set filetype=ehlog



" au BufRead,BufNewFile lgr* set filetype=ehlog
" au BufRead,BufNewFile lgr_* set filetype=ehlog
" au BufRead,BufNewFile lgr* :echom "set ft to ehlog"
" au BufRead,BufNewFile lgr* setfiletype ehlog

" :echom "loaded ehlog ft"

" my filetype file
	" if exists("did_load_filetypes")
	"   finish
	" endif
	" augroup filetypedetect
	"   au! BufRead,BufNewFile *.mine		setfiletype mine
	"   au! BufRead,BufNewFile *.xyz		setfiletype drawing
	" augroup END

" detection script
" if getline(1) =~ '^#!.*\<mine\>'
" 	  setfiletype mine
" 	elseif getline(1) =~? '\<drawing\>'
" 	  setfiletype drawing
" 	endif


" would need a filetype update upon paste?

" http://vimdoc.sourceforge.net/htmldoc/filetype.html

