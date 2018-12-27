"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Author: Gustavo Yokoyama Ribeiro <gyr AT protonmail DOT ch>
" File:   fixtermkeys.vim
" Update: 20100814 03:11:59
" (C) Copyright 2010 Gustavo Yokoyama Ribeiro
" Licensed under CreativeCommons Attribution-ShareAlike 3.0 Unsupported
" http://creativecommons.org/licenses/by-sa/3.0/ for more info.
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists('g:loaded_fixtermkeys') || &cp || !has("unix")
    finish
endif
let s:keep_cpo = &cpo
set cpo&vim

"===============================================================================
" [DISABLE] Fix up moves:{{{1
"map  OA <Up>
"map! OA <Up>
"map  OB <Down>
"map! OB <Down>
"map  OC <Right>
"map! OC <Right>
"map  OD <Left>
"map! OD <Left>

" }}}1
"===============================================================================
" [DISABLE] Fix up S-motion keys:{{{1
"""map  <Esc>[1;2A <S-Up>
"""map! <Esc>[1;2A <S-Up>
"""map  <Esc>[1;2B <S-Down>
"""map! <Esc>[1;2B <S-Down>
"""map  <Esc>[1;2C <S-Right>
"""map! <Esc>[1;2C <S-Right>
"""map  <Esc>[1;2D <S-Left>
"""map! <Esc>[1;2D <S-Left>
"map  <Esc>[1;2F <S-End>
"map! <Esc>[1;2F <S-End>
"map  <Esc>[1;2H <S-Home>
"map! <Esc>[1;2H <S-Home>
"map  <Esc>[2;2~ <S-Insert>
"map! <Esc>[2;2~ <S-Insert>
"map  <Esc>[3;2~ <S-Delete>
"map! <Esc>[3;2~ <S-Delete>
"""map  <Esc>[5;2~ <S-PageUp>
"""map! <Esc>[5;2~ <S-PageUp>
"""map  <Esc>[6;2~ <S-PageDown>
"""map! <Esc>[6;2~ <S-PageDown>

" }}}1
"===============================================================================
" [DISABLE] Fix up M-motion keys:{{{1
"map  <Esc>[1;3A <M-Up>
"map! <Esc>[1;3A <M-Up>
"map  <Esc>[1;3B <M-Down>
"map! <Esc>[1;3B <M-Down>
"map  <Esc>[1;3C <M-Right>
"map! <Esc>[1;3C <M-Right>
"map  <Esc>[1;3D <M-Left>
"map! <Esc>[1;3D <M-Left>
"map  <Esc>[1;3F <M-End>
"map! <Esc>[1;3F <M-End>
"map  <Esc>[1;3H <M-Home>
"map! <Esc>[1;3H <M-Home>
"map  <Esc>[2;3~ <M-Insert>
"map! <Esc>[2;3~ <M-Insert>
"map  <Esc>[3;3~ <M-Delete>
"map! <Esc>[3;3~ <M-Delete>
"map  <Esc>[5;3~ <M-PageUp>
"map! <Esc>[5;3~ <M-PageUp>
"map  <Esc>[6;3~ <M-PageDown>
"map! <Esc>[6;3~ <M-PageDown>

" }}}1
"===============================================================================
" [DISABLE] Fix up S-M-motion keys:{{{1
"""map  <Esc>[1;4A <S-M-Up>
"""map! <Esc>[1;4A <S-M-Up>
"""map  <Esc>[1;4B <S-M-Down>
"""map! <Esc>[1;4B <S-M-Down>
"""map  <Esc>[1;4C <S-M-Right>
"""map! <Esc>[1;4C <S-M-Right>
"""map  <Esc>[1;4D <S-M-Left>
"""map! <Esc>[1;4D <S-M-Left>
"map  <Esc>[1;4F <S-M-End>
"map! <Esc>[1;4F <S-M-End>
"map  <Esc>[1;4H <S-M-Home>
"map! <Esc>[1;4H <S-M-Home>
"map  <Esc>[2;4~ <S-M-Insert>
"map! <Esc>[2;4~ <S-M-Insert>
"map  <Esc>[3;4~ <S-M-Delete>
"map! <Esc>[3;4~ <S-M-Delete>
"""map  <Esc>[5;4~ <S-M-PageUp>
"""map! <Esc>[5;4~ <S-M-PageUp>
"""map  <Esc>[6;4~ <S-M-PageDown>
"""map! <Esc>[6;4~ <S-M-PageDown>

" }}}1
"===============================================================================
" Fix up C-motion keys:{{{1
"map  [92~ <C-Up>
"map! [92~ <C-Up>
"map  [93~ <C-Down>
"map! [93~ <C-Down>
"map  [91~ <C-Right>
"map! [91~ <C-Right>
"map  [90~ <C-Left>
"map! [90~ <C-Left>
map  <Esc>[1;5A <C-Up>
map! <Esc>[1;5A <C-Up>
map  <Esc>[1;5B <C-Down>
map! <Esc>[1;5B <C-Down>
map  <Esc>[1;5C <C-Right>
map! <Esc>[1;5C <C-Right>
map  <Esc>[1;5D <C-Left>
map! <Esc>[1;5D <C-Left>
"map  <Esc>[1;5F <C-End>
"map! <Esc>[1;5F <C-End>
"map  <Esc>[1;5H <C-Home>
"map! <Esc>[1;5H <C-Home>
"map  <Esc>[2;5~ <C-Insert>
"map! <Esc>[2;5~ <C-Insert>
"map  <Esc>[3;5~ <C-Delete>
"map! <Esc>[3;5~ <C-Delete>
"map  <Esc>[5;5~ <C-PageUp>
"map! <Esc>[5;5~ <C-PageUp>
"map  <Esc>[6;5~ <C-PageDown>
"map! <Esc>[6;5~ <C-PageDown>

" }}}1
"===============================================================================
" [DISABLE] Fix up S-C-motion keys:{{{1
"map  <Esc>[1;6A <S-C-Up>
"map! <Esc>[1;6A <S-C-Up>
"map  <Esc>[1;6B <S-C-Down>
"map! <Esc>[1;6B <S-C-Down>
"map  <Esc>[1;6C <S-C-Right>
"map! <Esc>[1;6C <S-C-Right>
"map  <Esc>[1;6D <S-C-Left>
"map! <Esc>[1;6D <S-C-Left>
"map  <Esc>[1;6F <S-C-End>
"map! <Esc>[1;6F <S-C-End>
"map  <Esc>[1;6H <S-C-Home>
"map! <Esc>[1;6H <S-C-Home>
"map  <Esc>[2;6~ <S-C-Insert>
"map! <Esc>[2;6~ <S-C-Insert>
"map  <Esc>[3;6~ <S-C-Delete>
"map! <Esc>[3;6~ <S-C-Delete>
"map  <Esc>[5;6~ <S-C-PageUp>
"map! <Esc>[5;6~ <S-C-PageUp>
"map  <Esc>[6;6~ <S-C-PageDown>
"map! <Esc>[6;6~ <S-C-PageDown>

" }}}1
"===============================================================================
" [DISABLE] Fix up M-C-motion keys:{{{1
"map  <Esc>[1;7A <M-C-Up>
"map! <Esc>[1;7A <M-C-Up>
"map  <Esc>[1;7B <M-C-Down>
"map! <Esc>[1;7B <M-C-Down>
"map  <Esc>[1;7C <M-C-Right>
"map! <Esc>[1;7C <M-C-Right>
"map  <Esc>[1;7D <M-C-Left>
"map! <Esc>[1;7D <M-C-Left>
"map  <Esc>[1;7F <M-C-End>
"map! <Esc>[1;7F <M-C-End>
"map  <Esc>[1;7H <M-C-Home>
"map! <Esc>[1;7H <M-C-Home>
"map  <Esc>[2;7~ <M-C-Insert>
"map! <Esc>[2;7~ <M-C-Insert>
"map  <Esc>[3;7~ <M-C-Delete>
"map! <Esc>[3;7~ <M-C-Delete>
"map  <Esc>[5;7~ <M-C-PageUp>
"map! <Esc>[5;7~ <M-C-PageUp>
"map  <Esc>[6;7~ <M-C-PageDown>
"map! <Esc>[6;7~ <M-C-PageDown>

" }}}1
"===============================================================================
" [DISABLE] Fix up S-M-C-motion keys:{{{1
"map  <Esc>[1;8A <S-M-C-Up>
"map! <Esc>[1;8A <S-M-C-Up>
"map  <Esc>[1;8B <S-M-C-Down>
"map! <Esc>[1;8B <S-M-C-Down>
"map  <Esc>[1;8C <S-M-C-Right>
"map! <Esc>[1;8C <S-M-C-Right>
"map  <Esc>[1;8D <S-M-C-Left>
"map! <Esc>[1;8D <S-M-C-Left>
"map  <Esc>[1;8F <S-M-C-End>
"map! <Esc>[1;8F <S-M-C-End>
"map  <Esc>[1;8H <S-M-C-Home>
"map! <Esc>[1;8H <S-M-C-Home>
"map  <Esc>[2;8~ <S-M-C-Insert>
"map! <Esc>[2;8~ <S-M-C-Insert>
"map  <Esc>[3;8~ <S-M-C-Delete>
"map! <Esc>[3;8~ <S-M-C-Delete>
"map  <Esc>[5;8~ <S-M-C-PageUp>
"map! <Esc>[5;8~ <S-M-C-PageUp>
"map  <Esc>[6;8~ <S-M-C-PageDown>
"map! <Esc>[6;8~ <S-M-C-PageDown>

" }}}1
"===============================================================================
" [DISABLE] M-[character]:{{{1
"map  <Esc>0 <A-0>
"map! <Esc>0 <A-0>
"map  <Esc>1 <A-1>
"map! <Esc>1 <A-1>
"map  <Esc>2 <A-2>
"map! <Esc>2 <A-2>
"map  <Esc>3 <A-3>
"map! <Esc>3 <A-3>
"map  <Esc>4 <A-4>
"map! <Esc>4 <A-4>
"map  <Esc>5 <A-5>
"map! <Esc>5 <A-5>
"map  <Esc>6 <A-6>
"map! <Esc>6 <A-6>
"map  <Esc>7 <A-7>
"map! <Esc>7 <A-7>
"map  <Esc>8 <A-8>
"map! <Esc>8 <A-8>
"map  <Esc>9 <A-9>
"map! <Esc>9 <A-9>
"map  <Esc>- <A-->
"map! <Esc>- <A-->
"map  <Esc>= <A-=>
"map! <Esc>= <A-=>

" }}}1
"===============================================================================
" [DISABLE] Fix up <BS>:{{{1
"if &term == "xterm"
"    set t_kb=
"    fixdel
"    set t_kD=[3~
"endif
map  <BS>
map!  <BS>
"map  <BS>
"map!  <BS>

" }}}1
"===============================================================================
" Fix up <S-Tab>:{{{1
map  <Esc>[Z <S-Tab>
map! <Esc>[Z <S-Tab>
ounmap <Esc>[Z

" }}}1
"===============================================================================
" Fix up <C-Tab>:{{{1
map  <Esc>[rC;TAB~ <C-Tab>
map! <Esc>[rC;TAB~ <C-Tab>
ounmap <Esc>[rC;TAB~

" }}}1
"===============================================================================
" Fix up <S-Space>:{{{1
if !has("gui_running")
    map  <Esc>[23$ <S-Space>
    map! <Esc>[23$ <S-Space>
    ounmap <Esc>[23$
endif

" }}}1
"===============================================================================
" Fix up <C-Space>:{{{1
map  <C-@> <C-Space>
map! <C-@> <C-Space>
ounmap <C-@>

" }}}1
"===============================================================================
" Fix up <S-CR>:{{{1
if !has("gui_running")
    map  <Esc>[24$ <S-CR>
    map! <Esc>[24$ <S-CR>
    ounmap <Esc>[24$
endif

" }}}1
"===============================================================================
" Fix up <C-BS>:{{{1
map  <Esc>[rC;BS~ <C-BS>
map! <Esc>[rC;BS~ <C-BS>
ounmap <Esc>[rC;BS~

" }}}1
"===============================================================================
" [DISABLE] Fix up motion in edit mode while in screen:{{{1
"if (&term != "screen")
"    imap OA <Up>
"    imap OB <Down>
"    imap OC <Right>
"    imap OD <Left>
"endif

" }}}1
"===============================================================================
" [DISABLE] Fix up <M-CR>:{{{1
"map   <M-CR>
"map!  <M-CR>

" }}}1
"===============================================================================

let g:loaded_fixtermkeys = 1
let &cpo = s:keep_cpo
unlet s:keep_cpo

" vim: set ft=vim ff=unix fdm=marker :
