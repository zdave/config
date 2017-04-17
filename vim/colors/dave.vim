set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let colors_name = "dave"

highlight Normal        guifg=#f6f3e8 guibg=#242424 gui=none                    ctermfg=255  ctermbg=16   cterm=none

" Window elements
highlight StatusLine    guifg=#333333 guibg=#d6d3c8 gui=bold                    ctermfg=236  ctermbg=252  cterm=none
highlight StatusLineNC  guifg=#f6f3e8 guibg=#666666 gui=none                    ctermfg=255  ctermbg=241  cterm=none
highlight VertSplit     guifg=#d6d3c8 guibg=#666666 gui=none                    ctermfg=252  ctermbg=241  cterm=none
highlight FoldColumn    guifg=#f6f3e8 guibg=#000000 gui=none                    ctermfg=255  ctermbg=16   cterm=none
highlight SignColumn    guifg=#f6f3e8 guibg=#000000 gui=none                    ctermfg=255  ctermbg=16   cterm=none
highlight LineNr        guifg=#857b6f guibg=#000000 gui=none                    ctermfg=243  ctermbg=16   cterm=none
highlight Folded        guifg=#a0a8b0 guibg=#384048 gui=none                    ctermfg=248  ctermbg=238  cterm=none
highlight ColorColumn   guifg=NONE    guibg=#2d2d2d gui=none                    ctermfg=none ctermbg=236  cterm=none

" Menus
highlight Pmenu         guifg=#f6f3e8 guibg=#666666 gui=bold                    ctermfg=255  ctermbg=241  cterm=none
highlight PmenuSel      guifg=#333333 guibg=#d6d3c8 gui=none                    ctermfg=236  ctermbg=252  cterm=none
highlight WildMenu      guifg=#000000 guibg=#ffff00 gui=bold                    ctermfg=16   ctermbg=226  cterm=none

" Messages
highlight ErrorMsg      guifg=#ffffff guibg=#ff0000 gui=bold                    ctermfg=231  ctermbg=196  cterm=none
highlight WarningMsg    guifg=#000000 guibg=#ff7f00 gui=bold                    ctermfg=16   ctermbg=208  cterm=none
highlight ModeMsg       guifg=#000000 guibg=#ffff00 gui=bold                    ctermfg=16   ctermbg=226  cterm=none
highlight MoreMsg       guifg=#000000 guibg=#00ff00 gui=none                    ctermfg=16   ctermbg=46   cterm=none
highlight Question      guifg=#000000 guibg=#00ff00 gui=none                    ctermfg=16   ctermbg=46   cterm=none

" Cursor and selection
highlight Cursor        guifg=#000000 guibg=#ffffff gui=none                    ctermfg=16   ctermbg=231  cterm=none
highlight CursorIM      guifg=#000000 guibg=#ffffff gui=none                    ctermfg=16   ctermbg=231  cterm=none
highlight CursorColumn  guifg=NONE    guibg=#2d2d2d gui=none                    ctermfg=none ctermbg=236  cterm=none
highlight CursorLine    guifg=NONE    guibg=#3d3d3d gui=none                    ctermfg=none ctermbg=237  cterm=none
highlight CursorLineNr  guifg=#ffff00 guibg=NONE    gui=bold                    ctermfg=226  ctermbg=237  cterm=none
highlight Visual        guifg=NONE    guibg=#444444 gui=none                    ctermfg=none ctermbg=238  cterm=none
highlight VisualNOS     guifg=NONE    guibg=#2d2d2d gui=none                    ctermfg=none ctermbg=236  cterm=none

" Syntax highlighting
highlight Comment       guifg=#99968b guibg=NONE    gui=italic                  ctermfg=246  ctermbg=none cterm=none
highlight Constant      guifg=#e5786d guibg=NONE    gui=none                    ctermfg=173  ctermbg=none cterm=none
highlight String        guifg=#e5a04d guibg=NONE    gui=italic                  ctermfg=179  ctermbg=none cterm=none
highlight Identifier    guifg=NONE    guibg=NONE    gui=bold,italic             ctermfg=none ctermbg=none cterm=underline
highlight Statement     guifg=#8ac6f2 guibg=NONE    gui=bold                    ctermfg=117  ctermbg=none cterm=none
highlight Label         guifg=#ba86f2 guibg=NONE    gui=bold                    ctermfg=141  ctermbg=none cterm=none
highlight Operator      guifg=#aad6ff guibg=NONE    gui=none                    ctermfg=153  ctermbg=none cterm=none
highlight Keyword       guifg=#aad6ff guibg=NONE    gui=none                    ctermfg=153  ctermbg=none cterm=none
highlight Exception     guifg=#ff50ff guibg=NONE    gui=bold                    ctermfg=207  ctermbg=none cterm=none
highlight PreProc       guifg=#95e454 guibg=NONE    gui=bold                    ctermfg=113  ctermbg=none cterm=none
highlight Type          guifg=NONE    guibg=NONE    gui=bold,italic             ctermfg=none ctermbg=none cterm=underline
highlight Special       guifg=#a0e0ef guibg=NONE    gui=none                    ctermfg=153  ctermbg=none cterm=none
highlight SpecialChar   guifg=#ff4444 guibg=NONE    gui=none                    ctermfg=203  ctermbg=none cterm=none
highlight Tag           guifg=NONE    guibg=NONE    gui=underline               ctermfg=none ctermbg=none cterm=underline
highlight Delimiter     guifg=NONE    guibg=NONE    gui=none                    ctermfg=none ctermbg=none cterm=none
highlight Debug         guifg=#ff0000 guibg=NONE    gui=none                    ctermfg=196  ctermbg=none cterm=none
highlight Underlined    guifg=#80a0ff guibg=NONE    gui=underline               ctermfg=111  ctermbg=none cterm=underline
highlight Error         guifg=#ffffff guibg=#ff0000 gui=bold                    ctermfg=231  ctermbg=196  cterm=none
highlight Todo          guifg=#000000 guibg=#ff00ff gui=italic                  ctermfg=16   ctermbg=201  cterm=none
highlight HeaderComment guifg=#ffff00 guibg=NONE    gui=bold,italic,underline   ctermfg=226  ctermbg=none cterm=underline
highlight Title         guifg=#ffff00 guibg=NONE    gui=bold,italic,underline   ctermfg=226  ctermbg=none cterm=underline
highlight SpecialKey    guifg=#808080 guibg=#343434 gui=none                    ctermfg=244  ctermbg=236  cterm=none

" Diff
highlight DiffAdd       guifg=NONE    guibg=#545494 gui=none                    ctermfg=none ctermbg=60   cterm=none
highlight DiffChange    guifg=NONE    guibg=#343454 gui=none                    ctermfg=none ctermbg=237  cterm=none
highlight DiffDelete    guifg=#040404 guibg=#141414 gui=none                    ctermfg=16   ctermbg=233  cterm=none
highlight DiffText      guifg=NONE    guibg=#545494 gui=none                    ctermfg=none ctermbg=60   cterm=none

" Search highlighting
highlight IncSearch     guifg=#000000 guibg=#00ff00 gui=none                    ctermfg=16   ctermbg=46   cterm=none
highlight Search        guifg=#000000 guibg=#ffff00 gui=none                    ctermfg=16   ctermbg=226  cterm=none

" Spell checker
highlight SpellBad      guifg=NONE    guibg=NONE    gui=undercurl guisp=#ff0000 ctermfg=none ctermbg=none cterm=underline
highlight SpellCap      guifg=NONE    guibg=NONE    gui=none                    ctermfg=none ctermbg=none cterm=none
highlight SpellLocal    guifg=NONE    guibg=NONE    gui=undercurl guisp=NONE    ctermfg=none ctermbg=none cterm=underline
highlight SpellRare     guifg=NONE    guibg=NONE    gui=undercurl guisp=NONE    ctermfg=none ctermbg=none cterm=underline

" Misc
highlight MatchParen    guifg=NONE    guibg=#757575 gui=bold                    ctermfg=none ctermbg=243  cterm=none
highlight Directory     guifg=#8ac6f2 guibg=NONE    gui=none                    ctermfg=117  ctermbg=none cterm=none
highlight NonText       guifg=#333333 guibg=#000000 gui=none                    ctermfg=236  ctermbg=16   cterm=none
