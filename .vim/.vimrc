:"	          █e
"	         ░░
"	 ██    ██ ██ ██████████  ██████  █████
"	░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██
"	░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░
"	 ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██
"	  ░░██   ░██ ███ ░██ ░██░███   ░░█████
"	   ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░
"█████ █████ █████ █████ █████ █████ █████
"░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░░
" ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

"S_T_A_R_T_I_F_Y"{{{
"
    let g:startify_custom_header = [
        \ '           ______________________________________           ',
        \ '  ________|                                      |_______   ',
        \ '  \       |         VIM ' . v:version . ' - www.vim.org        |      /   ',
        \ '   \      |                                      |     /    ',
        \ '   /      |______________________________________|     \    ',
        \ '  /__________)                                (_________\   ',
        \ '']
let g:startify_bookmarks = [
                \ '=============B_O_O_K_M_A_R_K_S============',
                \ '~/.xinitrc',
                \ '~/.tmux.conf',
                \ '~/.config/bspwm/bspwmrc',
                \ '~/.config/sxhkd/sxhkdrc',
                \ '~/.config/awesome/rc.lua',
                \ '~/.zshrc',
                \ '~/.vimrc',
                \ '~/.conky/lucius',
                \ '~/.zsh/aliases.sh',
                \ '~/.vim/mym.vim',
                \ '~/.vim/plug.vim',
                \ '/home/den/.themes/Gotham/gtk-2.0/gtkrc',
                \ '=============_O_T_H_E_R=============',
                \ '~/.vifm/vifmrc',
                \ '~/bin/scripts/abp',
                \ '~/.mpd/playlists/now.m3u',
                \ '~/.mpd/mpd.conf',
                \ '~/.ncmpcpp/config',
                \ '~/.config/mpv/mpv.conf',
                \ '~/dotfiles/root/etc/ushare/ushare.conf',
                \ '=============Z_S_H---============',
                \ '~/.zshrc',
                \ '~/.config/zsh/functions.zsh',
                \ '/home/den/.zsh/plugins/infinality.zsh',
                \ '============S Y S T E M---===================',
                \ '/etc/pacman.conf',
                \ '/etc/pacman.d/mirrorlist',
                \ '/etc/fstab',
                \ '/home/den/dotfiles/root/etc/mkinitcpio.conf',
                \ '/home/den/dotfiles/root/boot/grub/grub.cfg',
                \ '============A W E S O M E==============',
                \ '~/.config/awesome/rc.lua',
                \ '~/.config/awesome/themes/pro-gotham/theme.lua',
                \ '===============F L U X B O X=================',
                \ '~/.fluxbox/keys',
                \ '~/.fluxbox/apps',
                \ '~/.fluxbox/startup',
                \ '=============V I M=============',
                \ '~/.vimrc',
                \ '~/.vim/plug.vim',
                \ '~/.vim/mym.vim',
                \ '~/.vim/func.vim',
                \ '=============T E R M I N A L S==========',
                \ '~/.config/terminator/config',
                \ '~/.config/termite/config',
                \ '====================================',
                \ ]



"F_O_N_T_S"{{{
" set gfn=Hurmit\ 14
set gfn=PragmataPro\ Mono\ Liga\ Regular\ 10
"set gfn=Monaco\ 13
"set gfn=PT\ Mono\ 13
" set gfn=Inconsolata-dz\ for\ Powerline\ 13
" set gfn=ttyp0\ 14
" set gfn=luculent\ 14
" set gfn=Terminus
" set gfn=Fira\ Code\ Regular\ 10
" set gfn=Fantasque\ Sans\ Mono\ 14
" set gfn=Hermit\ Medium\ 14
" set gfn=Dejavu\ Sans\ Mono\ 13
" set gfn=Hack\ 10
" set gfn=CamingoCode\ Regular\ 14
" set gfn=M+1mn\ Regular\ 14
" set gfn=iosevka\ 14
" set gfn=dina\ 14
"set gfn=M+\ 1mn\ regular\ for\ Powerline\ 13
"set gfn=Anonymous\ Pro\ Minus\ 14
" set gfn=Source\ Code\ Pro\ Regular\ 13
" set gfn=Roboto\ Mono\ for\ Powerline\ Regular\ 13
" set gfn=Aix\ 14
" set gfn=Iosevka\ 14
" set gfn=Consolas\ for\ Powerline\ 10
" set gfn=SauceCodePro\ Nerd\ font\ Regular\ 10
" set gfn=PragmataPro\ 10
" set gfn=Inconsolata\ LGC\ 10
" set gfn=Roboto\ Mono\ Regular\ 10
"
"
"
"set gfn=Hack\ Regular\ 10
" set gfn=Fira\ Code\ Regular\ 10
" set gfn=Office\ Code\ Pro\ D\ Regular\ 10
" set gfn=Operator\ Mono\ Book\ 10
" set gfn=Iosevka\ Slab\ Regular\ 10
" set gfn=Input\ Mono\ Regular\ 13
"
"
" set gfn=Input\ Mono\ Condensed\ 10
" set gfn=Meslo\ LG\ M\ DZ\ Regular\ 9
" set gfn=Iosevka\ Regular\ 10
" set gfn=mplus\ Nerd\ Font\ Mono\ Regular\ 10
" set gfn=IBM\ Plex\ Mono\ Regular\ 10
"set gfn=Inconsolata\ LGC\ Regular\ 13
" set gfn=Hasklig\ Medium\ 12
" set gfn=M+1mn\ Medium\ 14
" set gfn=Dina\ Regular\ 10
" set gfn=Terminus\ Re33\ 14
" set gfn=gohu\ font\ 16
" set gfn=Meslo\ LG\ S\ for\ Powerline\ 13
" set gfn=Oxygen\ Mono\ Regular\ 13
"set gfn=Meslo\ LG\ M\ DZ\ for\ Powerline\ 13
" set gfn=Menlo\ for\ Powerline\ 13
"set gfn=Envy\ Code\ R\ VS\ 13
"set gfn=Mbb\ Bold\ 13
"set gfn=Luxi\ Mono\ 12
"set gfn=TeX\ Gyre\ Cursor\ Bold\ 12
"set gfn=PT\ Mono\ 13
"set gfn=Terminus\ 11
"set gfn=Fantasque\ Sans\ Mono\ 13
"set gfn=CPMono_v07\ 12
"set gfn=PT\ Mono\ 13
"set gfn=Anonymous\ for\ Powerline:h12 linespace=2
" set gfn=Droid\ Sans\ Mono:h14 linespace=0
" set gfn=Mensch\ for\ Powerline:h14 linespace=0
" set gfn=saxMono:h14 linespace=3
" set gfn=Ubuntu\ Mono:h18 linespace=3

"}}}
"S_E_T"{{{
" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set nocompatible
set wildignore+=*/.git/*,*/tmp/*,*.swp
" set clipboard=unnamedplus
set linespace=2
set viewoptions=cursor,folds,slash,unix
behave mswin
set keymodel=startsel,stopsel
" set keymodel-=stopsel
" set keymap=russian-jcukenwin
set encoding=utf-8
set ignorecase " ics - поиск без учёта регистра символов
set smartcase " - если искомое выражения содержит символы в верхнем регистре - ищет с учётом регистра, иначе - без учёта
set nohlsearch " (не)подсветка результатов поиска (после того, как поиск закончен и закрыт)
set incsearch " поиск фрагмента по мере его набора
set foldlevelstart=10   " open most folds by defaul
" set foldnestmax=10      " 10 nested fold max
"set foldcolumn=3 " показать полосу для управления сворачиванием
" set foldlevel=1 " Первый уровень вложенности открыт, остальные закрыты
" set foldmethod=manual
set foldclose=all
set guioptions=i
"set foldopen=all
set cursorline
set termencoding=utf-8
set timeout timeoutlen=200
" setlocal spell spelllang=ru_ru,en_us
set helplang=ru
set selection=inclusive
set nofoldenable    " disable folding
" set foldenable
"set colorcolumn=81
set autoindent
set nostartofline
let g:sierra_Day = 1
set nowrap
set hidden
set noequalalways
set nojoinspaces
set showmode
set showcmd
set ruler
set ttyfast
set backspace=indent,eol,start
" enable mouse support
set nobackup
set nowritebackup
set noswapfile
set wildmenu
set noerrorbells
set lines=50 columns=96 linespace=0
set wildmode=list,longest,full
set list            " Подсвечивать некоторые символы
" Установка символов для подсветки
set list listchars=tab:▹·,eol:¬,trail:·,extends:»,precedes:«,nbsp:×
set linebreak
set history=1000
set undolevels=1000
set rtp+=~/.vim/bundle/vundle/
set t_Co=256
set mouse=a
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set title"}}}
"L_E_T"{{{
let s:us_linewrap       = 1     " Перенос длинных строк
let g:startify_disable_at_vimenter = 1
"let g:ConqueTerm_StartMessages = 0
let g:mirodark_disable_color_approximation=1
let g:tagbar_width=20
let g:enable_numbers = 0
let g:sneak#streak = 1
let g:sneak#s_next = 1
let g:gruvbox_italic=0
let g:switch_mapping = "-"
"let g:mirodark_enable_higher_contrast_mode=1
let g:session_autoload="yes"
let g:session_default_overwrite="1"
let g:session_autosave="yes"
let mapleader = "\<Space>"
let g:clipbrdDefaultReg = '+'
let g:gruvbox_termcolors=256
" let base16colorspace=256
let g:startify_list_order = ['files', 'bookmarks', 'dir', 'sessions']"
let g:startify_files_number = 10
"let g:session_lock_enabled = 0
source ~/.vim/mym.vim
source ~/.vim/func.vim
source ~/.vim/plug.vim
" always show tab line to avoid annoying resize
" set showtabline=2
" Включить подсветку невидимых символов
setlocal list
" Настройка подсветки невидимых символов

" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on

" tabs and spaces handling
" tab length exceptions on some file types
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2

" always show status bar
"set ls= 2
set statusline=%f%=\ %Y\ %c%V,%l/%L\ %P\ [%M%n%W]:%{tabpagenr()}/%{tabpagenr('$')}

" syntax highlight on
syntax on

" show line numbers
"set nu

" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)"}}}
" Disabled by default because preview makes the window flicker
set completeopt-=preview

" simple recursive grep
" both recursive grep commands with internal or external (fast) grep
command! -nargs=1 RecurGrep lvimgrep /<args>/gj ./**/*.* | lopen | set nowrap
command! -nargs=1 RecurGrepFast silent exec 'lgrep! <q-args> ./**/*.*' | lopen
" mappings to call them
" when scrolling, keep cursor 5 lines away from screen border
set scrolloff=5

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp     " directory to place swap files in
" set backup                        " make backup files
" set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo
" store yankring history file there too
let g:yankring_history_dir = '~/.vim/dirs/'

" create needed directories if they don't exist
" if !isdirectory(&backupdir)
"     call mkdir(&backupdir, "p")
" endif
" if !isdirectory(&directory)
"     call mkdir(&directory, "p")
" endif
" if !isdirectory(&undodir)
"     call mkdir(&undodir, "p")
" endif

" Автоматически перечитывать конфигурацию VIM после сохранения
"autocmd! bufwritepost $MYVIMRC source $MYVIMRC
set autoread " перечитывать изменённые файлы автоматически
""" Ускоренное открытие больших файлов
let g:LargeFile = "3000000"
autocmd BufReadPre * call FasterLargeFiles()
let g:airline_theme = 'base16'

au FocusLost * :wa

"map <silent> <CR> :exe "!wmctrl -r ".v:servername." -b toggle,fullscreen"<CR><CR>
"let g:session_directory = "~/.vim/tmp/session"
"let g:session_autoload = "yes"
"let g:session_autosave = "yes"
"let g:session_command_aliases = 1
" Creates a session
"
" Vim
let g:indentLine_color_term = 239

"GVim
   let g:indentline_color_gui = '#888ba5'
 " Automatically r emoving all trailing whitespace
  autocmd BufWritePre * :call StripTrailingWhitespace()

function! Autostart()
  if argc() == 0 "vim called without arguments
    execute 'CtrlPMRUFiles'
  end
endfunction
" autocmd VimEnter * call Autostart()
" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30
set wrap
" Strip the newline from the end of a string
function! Chomp(str)
  return substitute(a:str, '\n$', '', '')
endfunction

" Find a file and pass it to cmd
function! DmenuOpen(cmd)
  let fname = Chomp(system("yadm ls-files | dmenu -fn 'Iosevka-14'  -nb '#212733' -nf '#58698c' -sb '#58698c' -sf '#212733' -i -l 20 -p " . a:cmd))
  if empty(fname)
    return
  endif
  execute a:cmd . " " . fname
endfunction
map <c-t> :call DmenuOpen("tabe")<cr>
map <c-f> :call DmenuOpen("e")<cr>

" set foldmethod for files with syntax hiliting
if has("syntax")
set foldmethod=syntax
else
" set foldmethod for files without syntax hiliting
set foldmethod=indent
endif

autocmd BufNewFile,BufRead sxhkdrc,*.sxhkdrc set ft=sxhkdrc

au BufNewFile,BufRead *conkyrc set filetype=conkyrc
au BufNewFile,BufRead conky.conf set filetype=conkyrc
autocmd BufNewFile,BufRead *.txt source ~/.vim/syntax/txt.vim
set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
" if has('gui_running')
"     set lines=999 columns=999
" endif
let g:nv_search_paths = ['~/notes']
