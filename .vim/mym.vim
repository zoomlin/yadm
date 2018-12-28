                                      "██
                       "████  █████ ░░            █████
 "██████████   ██████  ░██░░░██░██░░░██ ██ ███████  ██░░░██  ██████
"░░██░░██░░██ ░░░░░░██ ░██  ░██░██  ░██░██░░██░░░██░██  ░██ ██░░░░
 "░██ ░██ ░██  ███████ ░██████ ░██████ ░██ ░██  ░██░░██████░░█████
 "░██ ░██ ░██ ██░░░░██ ░██░░░  ░██░░░  ░██ ░██  ░██ ░░░░░██ ░░░░░██
 "███ ░██ ░██░░████████░██     ░██     ░██ ███  ░██  █████  ██████
"░░░  ░░  ░░  ░░░░░░░░ ░░      ░░      ░░ ░░░   ░░  ░░░░░  ░░░░░░
"█████ █████ █████ █████ █████ █████ █████ █████ █████ █████ █████
"░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░
  " nice copypaste
vmap <C-Insert> "+y
vmap <S-Insert> "+p
nmap <S-Insert> "+p
" nmap pp "+p
nmap cc ciw
imap <S-Insert> <Esc>"+pi
menu Exec.Leafpad  :!leafpad % <CR>
"map <F9> :emenu Exec.Leafpad<CR>
nnoremap <F9> :!gvim % <CR>
nnoremap <S-F9> :!sudo gvim % <CR>
" Quickly edit/reload the vimrc file
 nmap <silent> ee :edit $MYVIMRC<CR>
 nmap <silent> ez :edit /home/den/.zshrc<CR>
 nmap <silent> er :edit /home/den/.config/openbox/rc.xml<CR>
 nmap <silent> ed :edit /home/den/.vim/plug.vim<CR>
 nmap <silent> ew :edit /home/den/.vim/func.vim<CR>
 nmap <silent> ef :edit /home/den/.zsh/functions.sh<CR>
 nmap <silent> ea :edit /home/den/.zsh/aliases.sh<CR>
 nmap <silent> ex :edit /home/den/.xinitrc<CR>
 nmap <silent> ek :edit /home/den/.config/awesome/blue/keys-config.lua<CR>
 nmap <silent> es :edit /home/den/.config/sxhkd/sxhkdrc<CR>
 nmap <silent> et :edit /home/den/.config/tym/config.lua<CR>
 nmap <silent> gt :cd /home/den/.config/tdf<CR>
 nmap <silent> gh :cd /home/den<CR>
 nmap <silent> gv :cd /home/den/.vim<CR>
 nmap <silent> gz :cd /home/den/.zsh<CR>
 nmap <silent> sv :so $MYVIMRC<CR>
nmap <Tab> <C-w>w
"vmap <S-F3> <Leader>nr
"nmap \ <Plug>Sneak_s
"nmap \\ <Plug>Sneak_S
"nmap <Space> /
"nmap <C-Space>  ?
nnoremap <F7> :ToggleBg<CR>
noremap <F11> :call ToggleGUICruft()<CR>
map <Leader>i :CtrlPYankRound<CR>
"map <Home><Home> I
"map <End><End> A
map <C-Delete> dd
map ''' ci'<Esc>
map >>> ci><Esc>
map ))) ci)<Esc>
map ]]] ci]<Esc>
map }}} ci}<Esc>
map """ ci"<Esc>
nnoremap <c-f> :CtrlPBufLine<CR>
nnoremap <Leader>: :CtrlPCmdPalette<CR>
nnoremap <F6> :CtrlPChange<CR>

" Nice paste
nnoremap <Leader>p :set paste<cr><esc>"*]p :set nopaste<cr>
"nnoremap <cr> I
vnoremap <Leader>e :NR<CR>
noremap <F3> :NERDTreeFind<CR>
nnoremap <F4> :NumbersToggle<CR>
nnoremap <C-a> ggVG
"nnoremap gO :!open <cfile><CR>
set pastetoggle=<S-F4>
" toggle last two buffers
nnoremap <silent> <Tab><Tab> <c-^>
"noremap <F3> :CtrlPMixed<CR>
nnoremap <S-F2> :UndotreeToggle<cr>
""" Сохранение: <C-s>
nnoremap <silent> <c-s> :NV<CR>
" nmap <C-s> :w!<CR>
" vmap <C-s> <ESC>:w!<CR>
" imap <C-s> <C-O>:w!<CR>
" nmap <Esc><Esc>:w<CR>

" Quick yanking to the end of the line
noremap <Leader>y "+y$
noremap <Leader>c V"+y
nnoremap <F5> :Undot reeToggle<cr>
" Use ,d (or ,dd or ,dj or 20,dd) to delete a line without adding it to the
" yanked stack (also, in visual mode)
"nnoremap <silent> <leader>d "_d
"vnoremap <silent> <leader>d "_d


" Reselect text that was just pasted with ,v
nnoremap <leader>v V`]

" Quick access to command history
nnoremap <leader>q q:
"nnoremap <Down><Down> G
"nnoremap <BS> gg
nnoremap <C-BS> cc<Esc>
nnoremap <A-BS> dw<Esc>

" qq to record, Q to rreplayeplay
nmap Q @q
nmap QQ ZQ
nmap bb G
" Easy redo
nnoremap U <C-r>

" Change current word - kill
noremap <S-Delete> ciw
noremap <S-Left> viw
"noremap pp :let @@=expand('<cword>')<CR>p
" Force saving files that require root permission
cmap : :CtrlPCmdline<CR>
" old autocomplete keyboard shortcut
" Keep search matches in the middle of the window and pulse the line when moving
" to them.
nnoremap n n:call PulseCursorLine()<cr>
nnoremap N N:call PulseCursorLine()<cr>
"noremap <leader>m :call ToggleMouse()<CR>
nnoremap <A-l> :Startify<CR>
nmap pp ZZ
imap pp <Esc>ZZ
"noremap <Leader>y V"+y
" Duplicate a line
map  <A-Down> :t.<cr>
imap  <A-Down> <Esc>:t.<cr><Insert>
" nnoremap <A-Down> yyp
map <C-J> <C-X><C-O>
" ----------------------------------------------------------------------------
" <S-F8> | Color scheme selector
" ----------------------------------------------------------------------------
vmap v <Plug>(expand_region_expand)
"vmap <C-v> <Plug>(expand_region_shrink)

nnoremap <Leader>b :CtrlPBuffer<CR>

" Умный home
nmap <silent><Home> :call SmartHome("n")<CR>
imap <silent><Home> <C-r>=SmartHome("i")<CR>
vmap <silent><Home> <Esc>:call SmartHome("v")<CR>

map <F11> <Esc>:call ToggleGUICruft()<cr>
" поиск выделенного текста (начинать искать фрагмент при его выделении)
vnoremap <silent>* <ESC>:call VisualSearch()<CR>/<C-R>/<CR>
vnoremap <silent># <ESC>:call VisualSearch()<CR>?<C-R>/<CR>

 " sublime text's ctrl+d / ctrl+alt+d (find all)
inoremap <C-d> <C-o>:call PoorMultiCursor()<cr>
nnoremap <C-d> :call PoorMultiCursor()<cr>

 "recent files finder mapping
" nmap <Leader>m :CtrlPMRUFiles<CR>
" nmap <Leader>m :Unite file_mru<CR>
nmap <Leader>m :CtrlPMRUFiles<CR>
" nmap <Leader>m :FZFMru<CR>
nmap <Leader>d :CtrlPDir<CR>
" commands finder mapping
"nmap <Leader>c :CtrlPCmdPalette<CR>
" toggle nerdtree display
" open nerdtree with the current file selected
nmap <Leader>t :tabnew<CR>
" toggle tagbar display
map <F5> :TagbarToggle<CR>

" tab navigation mappings
map tp :tabp<CR>
map tm :tabm
map tt :tabnew<CR>
map <A-Right> :tabn<CR>
map <C-S-Delete> :tabc<CR>
map <C-S-Insert> :tab split<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <A-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" Bind <F1> to show the keyword under cursor
" general help can still be entered manually, with :h
autocmd filetype vim noremap <buffer> <F1> <Esc>:help <C-r><C-w><CR>
autocmd filetype vim noremap! <buffer> <F1> <Esc>:help <C-r><C-w><CR>
augroup end "}}}

" Fixing the copy & paste madness
" ================================
"vmap <C-y> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
"nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
"imap <C-v> <Esc><C-v>a
nnoremap yf :call system("xclip -i -selection clipboard", expand("%:p"))<CR>
nnoremap <Leader>3 I#<esc>j
nnoremap <Leader>5 A,<esc>
nnoremap <Leader>2 I"<esc>
nnoremap <Leader>7 A &<esc>
nnoremap <Leader> ' i"<esc>
"nnoremap <Leader>j a<CR><Esc>k$
nnoremap <BS> X
nnoremap <S-BS> kJ
map OF $
map OH ^

" Split previously opened file ('#') in a split windo
nnoremap <leader>, :execute "leftabove vsplit" bufname('#')<cr>
nnoremap <leader>. :execute "rightbelow vsplit" bufname('#')<cr>
"nnoremap <leader>, :bprev<CR>
"nnoremap <leader>. :bnext<CR>
" Quote words under cursor
nnoremap <leader>0 viW<esc>a)<esc>gvo<esc>i(<esc>gvo<esc>3l
nnoremap '' viW<esc>a'<esc>gvo<esc>i'<esc>gvo<esc>3l
nnoremap "" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
nnoremap >> viW<esc>a><esc>gvo<esc>i<<esc>gvo<esc>3l

" C-U in insert/normal mode, to uppercase the word under cursor
inoremap <Leader>u <Esc>viwUea
nnoremap <Leader>u viwUe

nnoremap <Del> x
nnoremap <A-Delete> C<Esc>
nnoremap <A-Insert> "*y$
"nnoremap <Insert> a
inoremap <Insert> <Esc>
inoremap uu <Esc>u

" Delete line
inoremap <Leader>dd <C-o>dd

"Marks

map <F11> mA
map <S-F11> `A

" поиск и замена слова под курсором
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/
" nmap ; <Leader>vr
" vim-unimpaired
" переместить строку вверх/вниз
" nmap <C-PageUp> [e
" nmap <C-PageDown> ]e
nmap <C-S-Up> O<Insert>
nmap <C-S-Down> ZZ
imap <C-S-Down> <Esc>ZZ
nmap <C-S-PageUp> ZQ
nmap <C-S-End> A
nmap <C-S-Home> I
" переместить выделенные строки вверх/вниз
vmap <C-PageUp> [egv
vmap <C-PageDown> ]egv
" copy paste, using xclip
" vmap <C-Insert> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
" map <S-Insert> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
" imap <S-Insert> <Esc><S-Insert>
" imap <S-Insert> <Esc><S-Insert>A
" inoremap <S-Insert> <c-r>1<esc>k$Jxi
"call ToggleNumberRow()
"nnoremap <Leader>n :call ToggleNumberRow()<CR>
function! s:toggle_neocomplcache() "{{{
    if !exists(':NeoComplCacheDisable')
        NeoComplCacheEnable
        echo 'neocomplcache enabled.'
    else
        NeoComplCacheDisable
        echo 'neocomplcache disabled.'
    endif
endfunction "}}}
nnoremap <Leader>n :<C-u>call <SID>toggle_neocomplcache()<CR>
inoremap <Leader>n <Esc>:<C-u>call <SID>toggle_neocomplcache()<CR>i
" map cc <leader>c<space>j
map <Leader>c :TComment<cr>j
vmap <Leader>c :TComment<cr>j
map <leader>o O<Esc>
" select last paste in visual mode
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'
nnoremap <CR> a<CR><Esc>
nnoremap <Leader><Leader> i<space><esc>
nnoremap <Leader> za
nnoremap zz zi
"nnoremap v viw
nnoremap <S-Down> V
nnoremap <S-Right> v
nnoremap O O<Esc>
nnoremap o o<Esc>
nnoremap <Leader>o :only<cr>
" cmap ws %!sudo tee > /dev/null %<cr>
" noremap <leader>w :w !sudo tee %<CR>
noremap <leader>s :SudoWrite<CR>
cmap pi :PlugInstall<cr>
cmap pc :PlugClean<cr>
"nnoremap <F8> :call StripTrailingWhitespace()<CR>
"inoremap <F8> :call StripTrailingWhitespace()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>
" undotree
  nmap <silent>U :UndotreeToggle<CR>
  " If undotree is opened, it is likely one wants to interact with it.
  let g:undotree_SetFocusWhenToggle=1
" Make the current file executable
nmap <Leader>e :w<cr>:!chmod 755 %<cr>:e<cr>
nmap <Leader>g :Goyo 120<cr>
"nnoremap <S-F7> :MirodarkToggleHigherContrastMode<CR>
nnoremap <S-F7> :colo ayudark<CR>
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>
 "When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>
"Basically you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>
vnoremap <silent> gv :call VisualSearch('gv')<CR>
nnoremap <S-F4> :set nu<cr>
" Insert timestamp
nnoremap <S-F5> "=strftime("%A, %d %B %Y %H:%M %Z")<C-M>p
" }}}
"" Make a simple "search" text object.
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
" Remove trailing whitespaces
" nnoremap <silent> <Leader><BS> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:w<CR>

" Panic Button
" nnoremap <F8> mzggg?G`z

" Faster Esc
inoremap // <esc>
vnoremap ii <esc>

" Strip trailing whitespace (,$)
noremap <leader><BS> :call StripTrailingWhitespace()<CR>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
nnoremap D ^d$
nmap <Leader>e :.w !zsh<cr><cr>
nmap <c-c> ciw
nmap <c-l> gf
nmap * <Plug>AgActionWord
vmap * <Plug>AgActionVisual

" Move a line   up/down with Alt+↑ or Alt+↓ (gvim only)
nmap <A-.> mz:m+<cr>`z
nmap <A-,> mz:m-2<cr>`z
vmap <C-PageUp> :m'<-2<cr>`>my`<mzgv`yo`z
vmap <C-PageDown> :m'>+<cr>`<my`>mzgv`yo`z
imap <C-PageUp> <Esc>mz:m-2<cr>`z<Insert>
imap <C-PageDown> <Esc>mz:m+<cr>`z<Insert>
nmap      cv           yy:silent .w !xclip&lt;<CR>
nnoremap <silent> <F2> :NERDTreeFind<CR>
" nnoremap <silent> <Leader>g :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
" if executable('ag')
" let g:unite_source_grep_command = 'ag'
" let g:unite_source_grep_default_opts =
"       \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
"       \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''..moonchild productions'''
" let g:unite_source_grep_recursive_opt = ''
" endif

nnoremap <silent> <Leader>f :Find<Space>
nnoremap <silent> <Leader>l :Lines<Space>
nnoremap <silent> <A-c> :Commands<CR>
nnoremap <silent> <Leader>g :Rg<Space>
nnoremap <leader>o :Files<cr>
nnoremap <silent> <c-\> :Unite -auto-resize file file_mru file_rec<cr>
vmap <Leader>r :NarrowRegion<CR>
nnoremap <Leader>ws :ToggleWorkspace<CR>
map  / <Plug>(easymotion-sn)
nmap n <Plug>(easymotion-next)
nmap N <Plug>(easymotion-prev)
map  / <Plug>(easymotion-sn)
