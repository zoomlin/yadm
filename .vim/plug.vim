         "██
         "██
 "██████  ░██          █████ ░░
"░██░░░██ ░██ ██   ██ ██░░░██ ██ ███████   ██████
"░██  ░██ ░██░██  ░██░██  ░██░██░░██░░░██ ██░░░░
"░██████  ░██░██  ░██░░██████░██ ░██  ░██░░█████
"░██░░░   ░██░██  ░██ ░░░░░██░██ ░██  ░██ ░░░░░██
"░██      ███░░██████  █████ ░██ ███  ░██ ██████
"░░      ░░░  ░░░░░░  ░░░░░  ░░ ░░░   ░░ ░░░░░░
"█████ █████ █████ █████ █████ █████ █████ █████
"░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░
" Tagbar -----------------------------
" IndentLine {{
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
" }}
" autofocus on tagbar open
let g:tagbar_autofocus = 1

  " remove startup text
   set shortmess+=tToOI
   set guioptions+=e " включаем none-gui табы
   set guioptions-=r " отключаем правый scrollbar
   set guioptions-=R " отключаем правый scrollbar при вертикальном разделении окна
   set guioptions-=b " отключаем нижний scrollbar
   set guioptions-=l " отключаем левый scrollbar
   set guioptions-=L " отключаем левый scrollbar при вертикальном разделении окна
   set guioptions-=T " отключаем панель инструментов
   set guioptions-=m " отключаем меню
let g:sneak#streak = 1
let g:sneak#s_next = 1
let g:tagbar_width=20
" let g:ctrlp_cmdpalette_execute = 1


if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files -i -uu --color=never --glob ""'
    " rg is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
    let g:ctrlp_show_hidden = 1       " show me dotfiles
    let g:ctrlp_map                 = '<C-space>'
    let g:ctrlp_cmd = 'CtrlPMixed'
endif
"
" NERDTree -----------------------------
let g:NERDTreeWinSize = 31
let g:NERDTreeBookmarksFile = expand($HOME.'/.vim/.NERDTreeBookmarks')
  let g:NERDTreeWinPos = "right"
  let g:NERDTreeShowBookmarks = 1
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
"autocmd vimenter * NERDTree
" CtrlP ------------------------------
let g:ctrlp_mruf_max = 250 " number of recently opened files
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
" don't change working directory
let g:ctrlp_working_path_mode = 0
" ignore these files and folders on file finder
" let g:ctrlp_custom_ignore = {
  " \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  " \ 'file': '\.pyc$\|\.pyo$',
  " \ }

" Show hidden files, too
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
" Quit on opening files from the tree
let NERDTreeQuitOnOpen=1

" Highlight the selected entry in the tree
let NERDTreeHighlightCursorline=1

" Use a single click to fold/unfold directories and a double click to open
" files
let NERDTreeMouseMode=2
let NERDTreeIgnore=['\~$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.pyc$']
" Syntastic ------------------------------

" check also when just opened the file
let g:syntastic_check_on_open = 1
" don't put icons on the sign column (it hides the vcs status icons of signify)
let g:syntastic_enable_signs = 0
" custom icons (enable them if you use a patched font, and enable the previous
" setting)
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_style_error_symbol = '✗'
"let g:syntastic_style_warning_symbol = '⚠'

" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make
" it play nice)
"let g:acp_enableAtStartup = 0
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_ignore_case = 1
"let g:neocomplcache_enable_smart_case = 0
"let g:neocomplcache_enable_auto_select = 0
"let g:neocomplcache_enable_fuzzy_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_fuzzy_completion_start_length = 1
"let g:neocomplcache_auto_completion_start_length = 1
"let g:neocomplcache_manual_completion_start_length = 1
"let g:neocomplcache_min_keyword_length = 2
let g:neocomplcache_min_syntax_length = 2
"" complete with workds from any opened file
"let g:neocomplcache_same_filetype_lists = {}
"let g:neocomplcache_same_filetype_lists._ = '_'

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 1
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1
" complete with workds from any opened file
let g:neocomplcache_same_filetype_lists = {}
let g:neocomplcache_same_filetype_lists._ = '_'
" Autoclose ------------------------------

" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

" Signify ------------------------------

" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
let g:signify_vcs_list = [ 'git', 'hg' ]
" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" Airline ------------------------------

let g:airline_powerline_fonts = 0
"let g:airline_theme = 'bubblegum'
let g:airline#extensions#whitespace#enabled = 0

 " to use fancy symbols for airline, uncomment the following lines and use a
 " patched font (more info on the README.rst)
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'
let g:default_background_type = "dark"
" let g:dark_colorscheme = "gotham256"
" let g:light_colorscheme = "gruvbox"
" let g:dark_colorscheme = "base16-ocean"
" let g:dark_colorscheme = "ayumirage"
let g:dark_colorscheme = "tempus_future"
let g:light_colorscheme = "ayulight"

"------------------------------------------------------------------------------------------------------
" autoclose.vim ( insert and complete open-closing paires cleverly)
"------------------------------------------------------------------------------------------------------

" supported pairs
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '<': '>', '"': '"', "'": "'"}

""""""""""""""""""""
" GnuPG Extensions "
""""""""""""""""""""

" Tell the GnuPG plugin to armor new files.
let g:GPGPreferArmor=1

" Tell the GnuPG plugin to sign new files.
let g:GPGPreferSign=1

augroup GnuPGExtra
" Set extra file options.
    autocmd BufReadCmd,FileReadCmd *.\(gpg\|asc\|pgp\) call SetGPGOptions()
" Automatically close unmodified files after inactivity.
    autocmd CursorHold *.\(gpg\|asc\|pgp\) quit
augroup END

function SetGPGOptions()
" Set updatetime to 0.5 minute.
    set updatetime=30000
" Fold at markers.
    set foldmethod=marker
" Automatically close all folds.
    set foldclose=all
" Only open folds with insert commands.
    set foldopen=insert
endfunction
" Searching
let g:ctrlsf_winsize = '50%'
let g:ctrlsf_default_root = '/home/den'

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
nmap     <C-F>l <Plug>CtrlSFQuickfixPrompt
vmap     <C-F>l <Plug>CtrlSFQuickfixVwordPath
vmap     <C-F>L <Plug>CtrlSFQuickfixVwordExec

" --- EasyMotion config {{{
let g:EasyMotion_do_mapping = 0 " Disable default mappings

map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map ? <Plug>(easymotion-bd-jk)
map f <Plug>(easymotion-s2)
"map n <Plug>(easymotion-next)
"map N <Plug>(easymotion-prev)
" }}}
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'whatyouhide/vim-gotham'
Plug 'morhetz/gruvbox'
Plug 'jonathanfilip/vim-lucius'
Plug 'djjcast/mirodark'
Plug 'nanotech/jellybeans.vim'
Plug 'roman/golden-ratio'
Plug 'vim-scripts/IndexedSearch'
Plug 'chrisbra/NrrwRgn'
Plug 'LeafCage/yankround.vim'
Plug 'rking/ag.vim'
Plug 'vim-scripts/colorizer'
Plug 'saghul/vim-colortoggle'
Plug 'kassio/ctrlp-bufline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/neocomplcache.vim'
"Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtreescrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'kien/tabman.vim'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'Townk/vim-autoclose'
"Plug 'bling/vim-airline'
Plug 'fisadev/vim-ctrlp-cmdpalette'
Plug 'mhinz/vim-startify'
" Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'sgur/ctrlp-extensions.vim'
Plug 'Yggdroot/indentLine'
Plug 'myusuf3/numbers.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'tomtom/tcomment_vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'itchyny/landscape.vim'
Plug 'vim-scripts/SudoEdit.vim'
Plug 'trapd00r/vim-extendedcolors'
" Plug 'jamessan/vim-gnupg'
Plug 'easymotion/vim-easymotion'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'Chun-Yang/vim-action-ag'
Plug 'Yggdroot/indentLine'
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/neomru.vim'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
" Plug 'pbogut/fzf-mru.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'istib/vifm.vim'
Plug 'Alok/notational-fzf-vim'
call plug#end()

