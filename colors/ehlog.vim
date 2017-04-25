"these lines are suggested to be at the top of every colorscheme
" hi clear
" if exists("syntax_on")
"   syntax reset
" endif

"Override the name of the base colorscheme with the name of this custom one
let g:colors_name = "ehlog"

"Clear the colors for any items that you don't like
" hi clear StatusLine
" hi clear StatusLineNC

"Set up your new & improved colors
" hi StatusLine guifg=black guibg=white
" hi StatusLineNC guifg=LightCyan guibg=blue gui=bold


hi clang guifg=fg guibg=bg gui=bold " simply bold any C lines
" gui=(bold | underline ... 
hi base         guifg=black guibg=#00ffff gui=NONE " cyan
hi render       guifg=black     guibg=#20b261	gui=NONE " dark sea green
hi browser      guifg=black     guibg=#0000ff	gui=NONE " blue
hi app          guifg=black     guibg=#20b2aa   gui=NONE " light sea green
hi object       guifg=black   guibg=#ffc0cb	gui=NONE " pink

hi errors       guifg=black     guibg=#ff0000 gui=BOLD "bright red
hi event       guifg=green     guibg=purple gui=BOLD "bright red

hi functionalBlock guifg=blue guibg=bg gui=NONE

" always make "c" the heaver color
" hi base_go          guifg=white     guibg=#00ffff	gui=underline " cyan
" hi base_c           guifg=black     guibg=#00ffff	gui=NONE

" hi render_go        guifg=white     guibg=#b30000	gui=underline " light
" hi render_c         guifg=black     guibg=#b30000	gui=NONE

" hi browser_go       guifg=white     guibg=#0000ff	gui=NONE
" hi browser_c        guifg=black     guibg=#0000ff	gui=NONE " blue


" hi app_go           guifg=white     guibg=#20b2aa   gui=NONE 
" hi app_c            guifg=black     guibg=#20b2aa   gui=NONE " light sea green

" hi object           guifg=#489000	guibg=#ffc0cb	gui=NONE " pink





" 00cccc " cool cyan
" 0050a0 " light blue


