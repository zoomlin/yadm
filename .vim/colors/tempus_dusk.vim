" Name: Tempus Dusk
" Author: Protesilaos Stavrou (https://protesilaos.com)
" Description: Dark theme with a deep blue-ish, slightly desaturated palette.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "tempus_dusk"

" General
" -----------------

" NOTE the ctermbg=none is for terminals with transparency
hi Normal guibg=#1f252d guifg=#a2a8ba ctermbg=none ctermfg=15
hi Visual guibg=#a2a8ba guifg=#1f252d ctermbg=15 ctermfg=0
hi Search gui=underline,bold,italic guibg=#8ba089 guifg=#1f252d cterm=underline,bold,italic ctermbg=2 ctermfg=0
hi IncSearch gui=underline,bold,italic guibg=#a29899 guifg=#1f252d term=none cterm=underline,bold,italic ctermbg=7 ctermfg=0

hi StatusLine gui=none,bold guibg=#a2a8ba guifg=#1f252d cterm=none,bold ctermbg=15 ctermfg=0
hi StatusLineNC gui=none guibg=#2c3150 guifg=#a29899 cterm=none ctermbg=8 ctermfg=7
hi StatusLineTerm gui=none,bold guibg=#8ba089 guifg=#1f252d cterm=none,bold ctermbg=2 ctermfg=0
hi StatusLineTermNC gui=none guibg=#2c3150 guifg=#8ba089 cterm=none ctermbg=8 ctermfg=2

hi VertSplit gui=none cterm=none
hi TabLine gui=none guibg=#2c3150 guifg=#a29899 cterm=none ctermbg=8 ctermfg=7
hi TabLineSel gui=none guibg=#a2a8ba guifg=#1f252d cterm=none ctermbg=15 ctermfg=0
hi TabLineFill gui=none cterm=none

hi Comment gui=italic guifg=#a29899 cterm=italic ctermfg=7
hi Todo gui=bold guibg=#2c3150 guifg=#bda75a cterm=bold ctermbg=8 ctermfg=11

hi Warning gui=none guibg=#a79c46 guifg=#1f252d cterm=none ctermbg=3 ctermfg=0
hi WarningMsg gui=none guibg=#a79c46 guifg=#1f252d cterm=none ctermbg=3 ctermfg=0
hi Error gui=none guibg=#cb8d56 guifg=#1f252d cterm=none ctermbg=1 ctermfg=0
hi ErrorMsg gui=none guibg=#cb8d56 guifg=#1f252d cterm=none ctermbg=1 ctermfg=0

hi MatchParen gui=underline,bold guibg=#c69ac6 guifg=#1f252d cterm=underline,bold ctermbg=13 ctermfg=0

hi ToolbarLine guibg=#a29899 guifg=#1f252d term=none ctermbg=7 ctermfg=0
hi ToolbarButton gui=bold guibg=#a29899 guifg=#1f252d term=none cterm=bold ctermbg=7 ctermfg=0

hi WildMenu guibg=#1f252d guifg=#a2a8ba term=standout ctermbg=0 ctermfg=15

hi Terminal guibg=#1f252d guifg=#a2a8ba term=none ctermbg=0 ctermfg=15

" Constructs
" -----------------
hi Constant guifg=#8c9abe ctermfg=4
hi Number guifg=#8c9abe ctermfg=4
hi Float guifg=#8c9abe ctermfg=4
hi String guifg=#9ca5de ctermfg=12

hi Function guifg=#b190af ctermfg=5
hi Identifier guifg=#c69ac6 term=none ctermfg=13
hi Label guifg=#b190af ctermfg=5
hi Tag guifg=#b190af ctermfg=5
hi Keyword gui=bold guifg=#c69ac6 gui=bold ctermfg=13

hi Character gui=bold guifg=#8caeb6 cterm=bold ctermfg=14

hi Type gui=none,bold guifg=#8e9aba term=none cterm=none,bold ctermfg=6
hi Boolean guifg=#8e9aba ctermfg=6
hi StorageClass guifg=#8e9aba ctermfg=6
hi Structure guifg=#8e9aba ctermfg=6
hi Typedef gui=bold guifg=#8caeb6 cterm=bold ctermfg=14

hi Conditional gui=bold guifg=#8ba089 cterm=bold ctermfg=2
hi Statement gui=none guifg=#80b48f cterm=none ctermfg=10
hi Repeat gui=bold guifg=#80b48f cterm=bold ctermfg=10
hi Operator gui=bold guifg=#a2a8ba cterm=bold ctermfg=15
hi Exception gui=bold guifg=#cb8d56 cterm=bold ctermfg=1

hi Preproc gui=none guifg=#d39d74 term=none cterm=none ctermfg=9
hi PreCondit gui=bold guifg=#d39d74 cterm=bold ctermfg=9
hi Macro gui=bold guifg=#d39d74 cterm=bold ctermfg=9
hi Include guifg=#d39d74 ctermfg=9
hi Define guifg=#d39d74 ctermfg=9

hi Title gui=bold guibg=#1f252d guifg=#8e9aba cterm=bold ctermbg=0 ctermfg=6

hi Special gui=bold guifg=#bda75a term=none cterm=bold ctermfg=11
hi SpecialKey guifg=#bda75a ctermfg=11
hi SpecialChar gui=bold guifg=#bda75a cterm=bold ctermfg=11

hi Delimeter gui=bold guifg=#b190af cterm=bold ctermfg=5
hi Delimiter gui=bold guifg=#b190af cterm=bold ctermfg=5
hi SpecialComment gui=bold guifg=#b190af cterm=bold ctermfg=5

hi Debug guifg=#c69ac6 ctermfg=13

" Other
" -----------------
hi LineNr guibg=#2c3150 guifg=#a29899 term=none ctermbg=8 ctermfg=7
hi Cursor guibg=#a2a8ba guifg=#1f252d ctermbg=15 ctermfg=0
hi CursorLine gui=none guibg=NONE term=none cterm=none ctermbg=none
hi CursorColumn gui=none guibg=#2c3150 term=none cterm=none ctermbg=8
hi CursorLineNr gui=bold guibg=#a29899 guifg=#1f252d cterm=bold ctermbg=7 ctermfg=0
hi ColorColumn guibg=#2c3150 guifg=#a2a8ba term=none ctermbg=8 ctermfg=15

hi Folded guibg=#2c3150 guifg=#a29899 ctermbg=8 ctermfg=7
hi FoldColumn guibg=#2c3150 guifg=#a29899 ctermbg=8 ctermfg=7

hi NonText gui=bold guibg=NONE guifg=#a29899 cterm=bold ctermbg=none ctermfg=7

hi Directory gui=none guifg=#8ba089 term=none cterm=none ctermfg=2
hi Question gui=bold guifg=#bda75a cterm=bold ctermfg=11
hi MoreMsg guifg=#80b48f ctermfg=10
hi ModeMsg gui=bold guifg=#8ba089 cterm=bold ctermfg=2

hi VimOption guifg=#b190af ctermfg=5
hi VimGroup guifg=#b190af ctermfg=5

hi Underlined gui=underline,bold guifg=#a2a8ba cterm=underline,bold ctermfg=15
hi Ignore guibg=#2c3150 guifg=#a29899 ctermbg=8 ctermfg=7
hi Conceal guibg=#a29899 guifg=#2c3150 ctermbg=7 ctermfg=8

hi SpellBad guibg=#cb8d56 guifg=#1f252d ctermbg=1 ctermfg=0
hi SpellCap guibg=#a79c46 guifg=#1f252d ctermbg=3 ctermfg=0
hi SpellRare guibg=#c69ac6 guifg=#1f252d ctermbg=13 ctermfg=0
hi SpellLocal guibg=#8caeb6 guifg=#1f252d ctermbg=14 ctermfg=0

hi Pmenu gui=italic guibg=#2c3150 guifg=#a2a8ba cterm=italic ctermbg=8 ctermfg=15
hi PmenuSel gui=none,bold guibg=#a29899 guifg=#1f252d cterm=none,bold ctermbg=7 ctermfg=0
hi PmenuSbar guibg=#2c3150 ctermbg=8
hi PmenuThumb guibg=#a29899 ctermbg=7

" Diffs
" -----------------
hi DiffAdd gui=bold guibg=#8ba089 guifg=#1f252d cterm=bold ctermbg=10 ctermfg=0
hi DiffDelete gui=none guibg=#cb8d56 guifg=#1f252d cterm=none ctermbg=9 ctermfg=0
hi DiffChange gui=bold guibg=#2c3150 guifg=#a29899 cterm=bold ctermbg=8 ctermfg=7
hi DiffText gui=bold guibg=#2c3150 guifg=#d39d74 cterm=bold ctermbg=8 ctermfg=1

hi diffAdded guifg=#8ba089 ctermfg=2
hi diffRemoved guifg=#cb8d56 ctermfg=1
hi diffNewFile gui=none guifg=#8c9abe ctermfg=4
hi diffFile gui=none guifg=#a79c46 cterm=none ctermfg=3
