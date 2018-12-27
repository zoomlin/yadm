 "████                            ██   ██
  "░██░                            ░██  ░░
 "██████ ██   ██ ███████   █████  ██████ ██  ██████  ███████   ██████
"░░░██░ ░██  ░██░░██░░░██ ██░░░██░░░██░ ░██ ██░░░░██░░██░░░██ ██░░░░
  "░██  ░██  ░██ ░██  ░██░██  ░░   ░██  ░██░██   ░██ ░██  ░██░░█████
  "░██  ░██  ░██ ░██  ░██░██   ██  ░██  ░██░██   ░██ ░██  ░██ ░░░░░██
  "░██  ░░██████ ███  ░██░░█████   ░░██ ░██░░██████  ███  ░██ ██████
  "░░    ░░░░░░ ░░░   ░░  ░░░░░     ░░  ░░  ░░░░░░  ░░░   ░░ ░░░░░░
"█████ █████ █████ █████ █████ █████ █████ █████ █████ █████ █████
"░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░
" Pulse ------------------------------------------------------------------- {{{

function! PulseCursorLine()
    let current_window = winnr()

    windo set nocursorline
    execute current_window . 'wincmd w'

    setlocal cursorline

    redir => old_hi
        silent execute 'hi CursorLine'
    redir END
    let old_hi = split(old_hi, '\n')[0]
    let old_hi = substitute(old_hi, 'xxx', '', '')

    hi CursorLine guibg=#98D1CE
    redraw
    sleep 20m

    hi CursorLine guibg=#98D1CE
    redraw
    sleep 30m

    hi CursorLine guibg=#98D1CE
    redraw
    sleep 30m

    hi CursorLine guibg=#98D1CE
    redraw
    sleep 20m

    execute 'hi ' . old_hi

    windo set cursorline
    execute current_window . 'wincmd w'
endfunction
function! PoorMultiCursor()
	let word = expand('<cword>')
	if strlen(word) > 0
		call inputsave()
		let repl = input('replace "'.word.'" with: ')
		call inputrestore()
		if strlen(repl) > 0
			execute '%s/\<'.word.'\>/'.repl.'/g'
		endif
	endif
endfunction
"
function! SmartHome(mode)
let curcol = col(".")
"gravitate towards beginning for wrapped lines
if curcol > indent(".") + 2
call cursor(0, curcol - 1)
endif
if curcol == 1 || curcol > indent(".") + 1
if &wrap
normal g^
else
normal ^
endif
else
if &wrap
normal g0
else
normal 0
endif
endif
if a:mode == "v"
normal msgv`s
endif
return ""
endfunction
function! FasterLargeFiles()
let f=expand("<afile>")
if exists("g:LargeFile") && getfsize(f) > g:LargeFile
set ei=FileType
setlocal noswf bh=unload bt=nowrite ro
let f=escape(substitute(f,'','/','g'),' ')
augroup LargeFile
au!
exe "au LargeFile BufEnter ". f ." set ul=-1 ei=FileType"
exe "au LargeFile BufLeave ". f ." set ul=1000 ei="
exe "au LargeFile BufUnload ". f ." au! LargeFile * ". f
augroup END
endif
endfunction
function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

function! s:rotate_colors()
  if !exists('s:colors_list')
    let s:colors_list =
    \ sort(map(
    \   filter(split(globpath(&rtp, "colors/*.vim"), "\n"), 'v:val !~ "^/usr/"'),
    \   "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"))
  endif
  if !exists('s:colors_index')
    let s:colors_index = index(s:colors_list, g:colors_name)
  endif
  let s:colors_index = (s:colors_index + 1) % len(s:colors_list)
  let name = s:colors_list[s:colors_index]
  execute 'colorscheme' name
  redraw
  echo name
endfunction
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=r
        set nonu
    else
        set mouse=a
        set nu
    endif
endfunction
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
" Go to last file(s) if invoked without arguments.
"autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
    "\ call mkdir($HOME . "/.vim") |
    "\ endif |
    "\ execute "mksession! " . $HOME . "/.vim/Session.vim"

"autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.vim/Session.vim") |
    "\ execute "source " . $HOME . "/.vim/Session.vim"
"With this tip the keys "Return" and "Delete" will work the same in normal mode and insert mode. For example, a blank line will be deleted. Pressing Return will insert a new line.
"Very useful before inserting some text via copy/paste. Or to clean up your code.
"function! Delete_key(...)
"let line=getline (".")
"if line=~'^\s*$'
  "execute "normal dd"
  "return
"endif
"let column = col(".")
"let line_len = strlen (line)
"let first_or_end=0
"if column == 1
  "let first_or_end=1
"else
  "if column == line_len
	"let first_or_end=1
  "endif
"endif
"execute "normal i\<DEL>\<Esc>"
"if first_or_end == 0
  "execute "normal l"
"endif
"endfunction
"nnoremap <silent> <DEL> :call Delete_key()<CR>
"nnoremap <silent> <CR> i<CR><Esc>
 "Reverse the number row characters
function! ReverseNumberRow()
	   " map each number to its shift-key character
	   inoremap 1 !
	   inoremap 2 @
	   inoremap 3 #
	   inoremap 4 $
	   inoremap 5 %
	   inoremap 6 ^
	   inoremap 7 &
	   inoremap 8 *
	   inoremap 9 (
	   inoremap 0 )
	   inoremap - _
	inoremap 90 ()<Left>
	   " and then the opposite
	   inoremap ! 1
	   inoremap @ 2
	   inoremap # 3
	   inoremap $ 4
	   inoremap % 5
	   inoremap ^ 6
	   inoremap & 7
	   inoremap * 8
	   inoremap ( 9
	   inoremap ) 0
	   inoremap _ -
endfunction

" DO the opposite to ReverseNumberRow -- give everything back
function! NormalizeNumberRow()
	   iunmap 1
	   iunmap 2
	   iunmap 3
	   iunmap 4
	   iunmap 5
	   iunmap 6
	   iunmap 7
	   iunmap 8
	   iunmap 9
	   iunmap 0
	   iunmap -
	   "------
	   iunmap !
	   iunmap @
	   iunmap #
	   iunmap $
	   iunmap %
	   iunmap ^
	   iunmap &
	   iunmap *
	   iunmap (
	   iunmap )
	   iunmap _
	   inoremap () ()<Left>
endfunction

fun! ToggleFold()
  if &foldmethod == 'marker'
    exe 'set foldmethod=indent'
  else
    exe 'set foldmethod=marker'
  endif
endfun
map <silent>tf :call ToggleFold()<cr>
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("Ag \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! NumberToggle1()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc


