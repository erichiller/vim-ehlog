
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:undo_ftplugin = "setl fo< com< cms<"

" setlocal formatoptions-=t

" setlocal comments=s1:/*,mb:*,ex:*/,://
" setlocal commentstring=//\ %s

" setlocal noexpandtab
setlocal nospell
setlocal ro " make these read only (by default)
" setlocal colorscheme ehlog

" noremap <F12> <Esc>:syntax sync fromstart<CR>
" inoremap <F12> <C-o>:syntax sync fromstart<CR>
" function! Sameids_repeat(mode)
"   let matches = getmatches()
"   if empty(matches)
"     return
"   endif
"   let cur_offset = go#util#OffsetCursor()
" endfunction

noremap <F12> <Esc>:call RefreshEhlog()<CR>
inoremap <F12> <C-o>:call RefreshEhlog()<CR>
function! RefreshEhlog()
  " force reload of syntax
  :doautocmd Syntax
  " force reload of colorscheme
  :set background=light
  :set background=dark
  " load ehlog colorscheme
  " which since it doesn't clear highlighting
  " will only append whatever colorscheme
  " was already loaded
  :colorscheme ehlog
endfunction

" Insert a newline after each specified string (or before if use '!').
" If no arguments, use previous search.
command! -bang -nargs=* -range LineBreakAt <line1>,<line2>call LineBreakAt('<bang>', <f-args>)
function! LineBreakAt(bang, ...) range
  let save_search = @/
  if empty(a:bang)
    let before = ''
    let after = '\ze.'
    let repl = '&\r'
  else
    let before = '.\zs'
    let after = ''
    let repl = '\r&'
  endif
  let pat_list = map(deepcopy(a:000), "escape(v:val, '/\\.*$^~[')")
  let find = empty(pat_list) ? @/ : join(pat_list, '\|')
  let find = before . '\%(' . find . '\)' . after
  " Example: 10,20s/\%(arg1\|arg2\|arg3\)\ze./&\r/ge
  execute a:firstline . ',' . a:lastline . 's/'. find . '/' . repl . '/ge'
  let @/ = save_search
endfunction
