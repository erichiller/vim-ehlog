" Vim syntax file
" Language: Eric's Logging Highlighter
" Maintainer: Eric Hiller
" Latest Revision: 22 April 2017

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "ehlog"

" reload with
"   :syntax sync fromstart
"   :colorscheme ehlog





syn match clang ".*\[C\].*$"
syn match clang ".*C\..*$"


syn match base ".*base.*$" 
syn match render ".*render.*$" 
syn match browser ".*browser.*$" 
syn match app ".*app.*$" 
syn match object ".*object.*$" 

syn keyword initialize initialize

syn match errors ".*WARN.*$"
syn match errors ".*ERROR.*$"
syn match errors ".*CRITICAL.*$"

" CAN KEYWORD BE A MORE THAN ONE CONSECUTIVE?
" ADD README?
syn match event ".*EVENT.*$"


" syn region functionalBlock start=".*START.*$" end=".*END.*$" contains=base keepend



" syn match ehComment "#.*$" contains=ehTodo
" syn match TypeB ".*q.*$"

" hi def link ehTodo          WarningMsg
" hi def link ehComment       Comment
" hi def link typeB           special
" hi def link typeA           Keyword


" hi goStatusLineColor cterm=bold ctermbg=76 ctermfg=22


" echom "Our syntax highlighting code will go here."

" syn keyword ehTodo contained TODO FIXME XXX NOTE
" syn match ehComment "#.*$" contains=ehTodo
" syn match TypeB ".*q.*$"


" syn keyword typeA Eric
" syn keyword typeB Mesh Texture world


" hi def link ehTodo          WarningMsg
" hi def link ehComment       Comment
" hi def link typeB           special
" hi def link typeA           Keyword
