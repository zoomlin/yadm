#	               ░██
#	 ██████  ██████░██      ██████  █████
#	░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#	   ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#	  ██    ░░░░░██░██  ░██ ░██   ░██   ██
#	 ██████ ██████ ░██  ░██░███   ░░█████
#	░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░
#▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
#█████ █████ █████ █████ █████ █████ █████
#░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░
# C O N F I G U R A T I O N  F O R  Z S H
#
# User configuration sourced by interactive shells
#
# Source zim
# if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  # source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
# fi
#
    # echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
# . /home/den/.zsh/git.zsh
#zmodload zsh/zprof
_fzf_compgen_path() {
  ag -g "" "$1"
}
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('os_icon' 'user' 'dir_writable' 'dir')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time battery)
# POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='black'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='black'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='cyan'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='black'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='green'
POWERLEVEL9K_TIME_BACKGROUND='clear'
POWERLEVEL9K_USER_BACKGROUND='cyan'
POWERLEVEL9K_TIME_FOREGROUND='magenta'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='black'
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='yellow'
POWERLEVEL9K_SHORTEN_DIR_LENGTH='4'
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# POWERLEVEL9K_CUSTOM_FIRST='echo " >_ "'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%b%f%k%F{blue}%} %{%f%}"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
export FZF_COMPLETION_TRIGGER='~~'
export FZF_COMPLETION_OPTS='+c -x'
export TERM='screen-256color'
export editor='gvim'
export USERNAME='den'
export ALSA_CARD=Device
export VIEW=/usr/bin/elinks
if [ `which most` ]; then
export PAGER=most
export CM_LAUNCHER=rofi
else
echo "most not found, falling back to $PAGER"
fi
#export PAGER="/bin/sh -c "col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -""
export LC_ALL='en_US.UTF-8'
#export LANG="en_US.utf8"
export LANG='ru_RU.UTF-8'
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export LC_CTYPE=C
export BLOCKSIZE='Mb'
export GREP_COLOR='1;33'
export LESSCHARSET='UTF-8'
export OOO_FORCE_DESKTOP='gnome'
export LESS_TERMCAP_mb=$'[01;31m'
export LESS_TERMCAP_md=$'[01;38;5;74m'
export LESS_TERMCAP_me=$'[0m'
export LESS_TERMCAP_so=$'[38;5;246m'
export LESS_TERMCAP_se=$'[0m'
export LESS_TERMCAP_us=$'[04;38;5;146m'
export LESS_TERMCAP_ue=$'[0m'
export BIN_HOME="$HOME/bin"
# export DISPLAY=:0.0
export SHELL='/bin/zsh'
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/bin/scripts:$PATH
export PATH=$HOME/bin/Scripts:$PATH
export EDITOR=gedit
# export LIBVA_DRIVER_NAME=vdpau
# export VDPAU_DRIVER=i965
export BROWSER="waterfox"
export SUDO_EDITOR=gvim
export SYSTEMD_LESS=FRXMK
# setup default dirs
[ "$XDG_CACHE_HOME" ] || export XDG_CACHE_HOME="$HOME/.cache"
[ "$XDG_CONFIG_HOME" ] || export XDG_CONFIG_HOME="$HOME/.config"
[ "$XDG_DATA_HOME" ] || export XDG_DATA_HOME="$HOME/.config"

#For tmux in linux
export EVENT_NOEPOLL=1
# ANTIGEN

# directory to store cloned antigen repositories
export ADOTDIR=/home/den/.zsh

# load antigen
# S O U R C E
#source /home/den/.zsh/plugins/antigen/antigen.zsh
. /home/den/.zsh/aliases.sh
# . /home/den/.zsh/plugins/k/k.plugin.zsh
# . /home/den/.zsh/infinality.zsh
# . /home/den/.zsh/ctrl-zsh/ctrl-zsh.plugin.zsh
# . /home/den/.zsh/vim.plugin.zsh
# autoload zkbd
# [[ ! -d ~/.zkbd ]] && mkdir ~/.zkbd
# [[ ! -f ~/.zkbd/$TERM ]] && zkbd
# source ~/.zkbd/$TERM
# [[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
# [[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
# [[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
# [[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" up-line-or-history
# [[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
# [[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
# [[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" down-line-or-history
# [[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search
# [[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
# [[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
# [[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char
eval "$(fasd --init auto)"

# BASICS
# umask
umask 022

# editor/visual
export EDITOR=vim
export VISUAL=vim

# zsh will not beep
setopt no_beep
setopt promptsubst
# make cd push the old directory onto the directory stack
setopt auto_pushd

# Report the status of background jobs immediately, rather than waiting until just before printing a prompt.
setopt notify

# Turn off terminal driver flow control (CTRL+S/CTRL+Q)
setopt noflowcontrol
stty -ixon -ixoff

# Do not kill background processes when closing the shell.
setopt nohup

# colored grep
export GREP_COLOR='31'
#export GREP_OPTIONS='--color=auto'

# htop
if [[ -x `which htop` ]]; then alias top="htop"; fi

# ack
if [[ -x `which ack-grep` ]]; then alias ack='ack-grep'; fi

# diff
if [[ -x `which colordiff` ]]; then alias diff='colordiff -u'; fi

# HISTORY

# zsh history
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=${HISTSIZE}

# make some commands not show up in history
export HISTIGNORE="rc0:rc:gg:pp:yy:ls:ll:cd:cd -:pwd:exit:date:* --help"

setopt interactive_comments
# multiple zsh sessions will append to the same history file (incrementally, after each command is executed)
setopt inc_append_history

# purge duplicates first
setopt hist_expire_dups_first

# if a new command line being added to the history list duplicates an older one, the older command is removed from the list
setopt hist_ignore_all_dups

# reduce unnecessary blanks from commands being written to history
setopt hist_reduce_blanks

# import new commands from history (mostly)
setopt share_history

# COMMAND COMPLETION

# treat `#', `~' and `^' characters as part of patterns for filename generation
setopt extended_glob

# case insensitive matching when performing filename expansion
setopt no_case_glob

# if command not found, but directory found, cd into this directory
setopt auto_cd

# turn off automatic matching of ~/ directories (speeds things up)
setopt no_cdable_vars

# perform implicit tees or cats when multiple redirections are attempted
setopt multios

# do not send the HUP signal to backround jobs on shell exit
setopt no_hup

# parameter expansion, command substitution and arithmetic expansion are performed in prompts
setopt prompt_subst

# speed-up the git completion for filenames
__git_files () {
  _wanted files expl 'local files' _files
}

# If a pattern for filename generation has no matches, print an error,
# instead of leaving it unchanged in the argument list. This also
# applies to file expansion of an initial ~ or =.
unsetopt nomatch

# background jobs indicator in prompt (https://gist.github.com/remy/6079223)

# don't display RPROMPT for previously accepted lines; only display it next to current line
setopt transient_rprompt

# set GitHub credentials
[[ -e ~/.github_credentials ]] && source ~/.github_credentials

# SMART URLS
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# Don’t clear the screen after quitting a manual page

# display CPU usage stats for commands taking more than 10 seconds
REPORTTIME=10

# load completions
#autoload -U compinit
#compinit -d $CACHEDIR/zcompdump
vifmShow() { BUFFER="vifm"; zle accept-line; }
zle -N vifmShow
tmuxShow() { BUFFER="tmux"; zle accept-line; }
zle -N tmuxShow
mpvPlay() { BUFFER="mpv *.*"; zle accept-line; }
zle -N mpvPlay
Ncmpcpp() { BUFFER="ncmpcpp"; zle accept-line; }
zle -N Ncmpcpp
vimShow() { BUFFER="vim"; zle accept-line; }
zle -N vimShow
lockmatrix() { BUFFER="tmux lock-server"; zle accept-line; }
zle -N lockmatrix
zshShow() { BUFFER="killall zsh;zsh"; zle accept-line; }
zle -N zshShow
# NF() { BUFFER="neofetch --image ~/term.png"; zle accept-line; }
zle -N NF
LastArg() { BUFFER="!*"; zle accept-line; }
zle -N LastArg
#B I N D I N G S
bindkey '^H' 'backward-kill-word'
bindkey '^[OA' history-substring-search-up
bindkey '^H' 'backward-kill-word'
bindkey '^[OB' history-substring-search-down
# bindkey '^o' zaw-open-file
# bindkey '^[o' zaw-bookmark
# bindkey '^B' zaw-bookmark-add-buffer
# bindkey '^[[H' beginning-of-line
# bindkey '^[[F' end-of-line
# bindkey '^F' zaw-history
bindkey '^K' kill-whole-line # ctrl-k
# bindkey '^[1' vifmShow
# bindkey '^[2' vimShow
# bindkey '^[4' lockmatrix
# bindkey '^[5' Ncmpcpp
bindkey '^[z' zshShow
bindkey '^[n' NF
# bindkey '^[t' tmuxShow
# bindkey '^[m' mpvPlay
bindkey '^X^A' fasd-complete    # C-x C-a to do fasd-complete (files and directories)
bindkey '^X^F' fasd-complete-f  # C-x C-f to do fasd-complete-f (only files)
bindkey '^X^D' fasd-complete-d  # C-x C-d to do fasd-complete-d (only directories)
insert-history-line() {
    LBUFFER="$LBUFFER$(${history[$((HISTNO-1))]})"
}
zle -N insert-history-line insert-history-line
# Meta-u to chdir to the parent directory
bindkey -s 'u' '^Ucd ..; ls^M'

# If AUTO_PUSHD is set, Meta-p pops the dir stack
bindkey -s 'p' '^Upopd >/dev/null; dirs -v^M'

# Pipe the current command through less
bindkey -s "l" " 2>&1|most^M"
#zprof
# from cads@ooyala.com
# Bind M+o to show a list of the most recently modified files.
zstyle ':completion:most-recent-file:*' match-original both
zstyle ':completion:most-recent-file:*' file-sort modification
zstyle ':completion:most-recent-file:*' file-patterns '*:all files'
zstyle ':completion:most-recent-file:*' hidden all
zstyle ':completion:most-recent-file:*' completer _files
zle -C most-recent-file menu-complete _generic
bindkey "^[o" most-recent-file
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'm:{a-zA-Z}={A-Za-z} l:|=* r:|=*'
# . /home/den/.zsh/plugins/.zsh-fuzzy-match/fuzzy-match.zsh

als () {
  echo "alias" $1'="'$2'"' >> /home/den/.zsh/aliases.sh
  source /home/den/.zsh/aliases.sh
}
chpwd() {ll}
# LS_COLORS=`eval dircolors`
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zmodload zsh/complist
setopt menucomplete
zstyle ':completion:*' menu yes select
bindkey -M menuselect "/" accept-and-infer-next-history
function nicemount() { (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ; }

# -------------------------------------------------------------------
# -------------------------------------------------------------------
# any function from http://onethingwell.org/post/14669173541/any
# search for running processes
# -------------------------------------------------------------------
any() {
    emulate -L zsh
    unsetopt KSH_ARRAYS
    if [[ -z "$1" ]] ; then
        echo "any - grep for process(es) by keyword" >&2
        echo "Usage: any " >&2 ; return 1
    else
        ps xauwww | grep -i --color=auto "[${1[1]}]${1[2,-1]}"
    fi
}
zmodload zsh/complist
bindkey -M menuselect ' ' accept-and-infer-next-history
bindkey -M menuselect '^?' undo

if [[ ${+debian_missing_features} == 1 ]]
then
        function zle-line-init () {
        }
        function zle-line-finish () {
        }
fi
autoload -U colors ; colors
# zstyle -e ‘:completion:*’ list-colors ‘thingy=${PREFIX##*/} reply=( “=(#b)($thingy)(?)*=00=$color[green]=$color[bg-green]” )’
# display a list of supported colors
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# Set the password database directory.
# A-Z: cd to a directory from fasd
fzf-fasd-cd-widget() {
  cd "$(fasd -l | fzf --no-sort)"
  zle reset-prompt
}
zle     -N   fzf-fasd-cd-widget
bindkey '^x^a' fzf-fasd-cd-widget

if [[ $- =~ i ]]; then

# ALT-I - Paste the selected entry from locate output into the command line
fzf-locate-widget() {
  local selected
  if selected=$(locate / | fzf -q "$LBUFFER"); then
    LBUFFER=$selected
  fi
  zle redisplay
}
zle     -N    fzf-locate-widget
bindkey 'i' fzf-locate-widget

fi

mkgit() {
    mkdir $1
    cd $1
    git init
    echo -e "$1
===" > README.md
    git add README.md
    git commit -m 'initial setup'
    git remote add origin git@github.com:parazyd/$1.git
    git push origin master
}
# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-*} -path '*/.*' -prune
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
#z() {
 # local dir
  #dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${dir}" || return 1
#}

# Do maths in the terminal
= () {
    calc="${@//p/+}"
    calc="${calc//x/*}"
    echo "$(($calc))"
}


# . /etc/profile.d/vte.sh
# . /home/den/.zsh/plugins/enhancd/enhancd.sh
# . /home/den/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# . /home/den/.zsh/plugins/fzf-extras.zsh
# neofetch --image ~/term.png
# neofetch
. /home/den/.zsh/functions.sh
### linux console colors (jwr dark) ###

# if [ "$TERM" = "linux" ]; then
#     echo -en "]P0000000" #black
#     echo -en "]P85e5e5e" #darkgrey
#     echo -en "]P18a2f58" #darkred
#     echo -en "]P9cf4f88" #red
#     echo -en "]P2287373" #darkgreen
#     echo -en "]PA53a6a6" #green
#     echo -en "]P3914e89" #darkyellow
#     echo -en "]PBbf85cc" #yellow
#     echo -en "]P4395573" #darkblue
#     echo -en "]PC4779b3" #blue
#     echo -en "]P55e468c" #darkmagenta
#     echo -en "]PD7f62b3" #magenta
#     echo -en "]P62b7694" #darkcyan
#     echo -en "]PE47959e" #cyan
#     echo -en "]P7899ca1" #lightgrey
#     echo -en "]PFc0c0c0" #white
    # clear # bring us back to default input colours
# fi
# tmux 2> /dev/null
# . /home/den/.zsh/lscolors.sh
# zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==34=34}:${(s.:.)LS_COLORS}")'
# . /home/den/.zsh/plugins/git-prompt.zsh
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
# . /home/den/.zsh/plugins/powerlevel9k/powerlevel9k.zsh-theme
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;45:grp=1;34:od=1;41;5:votes=1;45:dsc=0:other=1;35"
# eval $( dircolors -b $HOME/dircolors )
alias dir='dir --color'
alias ls='ls --color'
# zsh syntax coloring completion
# Define the path where zsh can find live-command-coloring.sh
source ~/.zsh/live-command-coloring.sh
# fix zsh history behavior
h() { if [ -z "$*" ]; then history 1; else history 1 | egrep "$@"; fi; }
# . /home/den/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# bindkey '^[i' insert-last-word
zstyle ':bracketed-paste-magic' active-widgets '.self-*'
autoload -Uz copy-earlier-word
zle -N copy-earlier-word
bindkey "^[m" copy-earlier-word
bindkey "^[." insert-last-word
bindkey "^[0" digit-argument
bindkey "^[1" digit-argument
bindkey "^[2" digit-argument
bindkey "^[3" digit-argument
bindkey "^[4" digit-argument
bindkey "^[5" digit-argument
bindkey "^[6" digit-argument
bindkey "^[7" digit-argument
bindkey "^[8" digit-argument
bindkey "^[9" digit-argument
GREP_COLORS='mt=00;34:fn=00;36:ln=00;33:se=00;90'
export XDG_RUNTIME_DIR="/run/user/$UID"
export XDG_RUNTIME_DIR="/home/den/.config"
export DBUS_SESSION_BUS_ADDRESS="unix:path=${XDG_RUNTIME_DIR}/bus"
# . /home/den/.zsh/vimode.zsh
function exists { which $1 &> /dev/null }

# if exists percol; then
#     function percol_select_history() {
#         local tac
#         exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
#         BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
#         CURSOR=$#BUFFER         # move cursor
#         zle -R -c               # refresh
#     }
#
#     zle -N percol_select_history
#     bindkey '^u' percol_select_history
# fi

fpath=(/home/den/.zsh/plugins/anyframe(N-/) $fpath)
zstyle ":anyframe:selector:" use fzf
autoload -Uz anyframe-init
anyframe-init
bindkey '^\' anyframe-widget-put-history
# bindkey '^[' vifmShow
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history

bindkey '^]' peco-select-history

autoload -U chpwd_recent_dirs cdr
chpwd_functions+=chpwd_recent_dirs
zstyle ":chpwd:*" recent-dirs-max 500
zstyle ":chpwd:*" recent-dirs-default true
zstyle ":completion:*" recent-dirs-insert always
bindkey '^x^b' anyframe-widget-checkout-git-branch

# Clone zgen if you haven't already
# if [[ ! -f ~/zgen/zgen.zsh ]]; then
#   pushd ~
#   git clone git@github.com:tarjoilija/zgen.git
#   popd
# fi
# source ~/zgen/zgen.zsh
#
# zgen load miekg/lean
# # zgen load nojhan/liquidprompt
# zgen load seletskiy/zsh-favorite-directories
#
# bindkey -v '^_' "favorite-directories:cd"
#
# favorite-directories:get() {
#     echo yadm 1 ~/.yadm/repo.git
#     echo zsh 2 ~/.zsh/
#     echo vim 2 ~/.vim
#     echo tmux 2 ~/.tmux
# }
# kill process
function peco-kill-process() {
    ps ax -o pid,time,command | peco --query "$LBUFFER" | awk '{print $1}' | xargs kill
}
alias killp='peco-kill-process'

# if [[ -z "$TMUX" ]]
# then
#     ID="`tmux ls | grep -vm1 attached | cut -d: -f1`"
#     if [[ -z "$ID" ]]
#     then
#         tmux new-session
#     else
#         tmux attach-session -t "$ID"
#     fi
# fi
# SPACESHIP_VI_MODE_SHOW=falsa
#. /home/den/.zsh/themes/dracula.zsh-theme
# . /home/den/.zsh/globalias.plugin.zsh
# . /home/den/.zsh/themes/pastel/pastel.zsh-theme
# . /home/den/.zsh/themes/rkj-repos.zsh-theme
# Theme setup
# ORDER
# DIR
SPACESHIP_DIR_PREFIX=' ' # disable directory prefix, cause it's not the first section
# SPACESHIP_DIR_TRUNC='1' # show only last directory
# SPACESHIP_USER_SHOW='always'
# SPACESHIP_HOST_SHOW='always'
# SPACESHIP_TIME_SHOW='true'
# . /home/den/.zsh/themes/bullet-train.zsh-theme
# . /home/den/.zsh/themes/agnoster.zsh-theme
# . /home/den/alien/alien.zsh
# . /home/den/.zsh/themes/prompt_garrett_setup
### Added by Zplugin's installer
source <(antibody init)
antibody bundle < ~/.zsh/.zsh_plugins.txt
# source '/home/den/.zplugin/bin/zplugin.zsh'
# autoload -Uz _zplugin
# (( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
# zplugin snippet OMZ::lib/git.zsh
# zplugin light psprint/history-search-multi-word
# zplugin light zsh-users/zsh-history-substring-search
# zplugin light zdharma/fast-syntax-highlighting
# zplugin light ytet5uy4/fzf-widgets
# zplugin light "bhilburn/powerlevel9k"
# zplugin ice atclone"dircolors -b LS_COLORS > c.zsh" atpull'%atclone' pick"c.zsh"
# zplugin light trapd00r/LS_COLORS
# Map widgets to key
  # bindkey '^@'  fzf-select-widget
  # bindkey '^@.' fzf-edit-dotfiles
  # bindkey '^@c' fzf-change-directory
  # bindkey '^@n' fzf-change-named-directory
  # bindkey '^@f' fzf-edit-files
  # bindkey '^@k' fzf-kill-processes
  # bindkey '^@s' fzf-exec-ssh
  # bindkey '^\'  fzf-change-recent-directory
  # bindkey '^r'  fzf-insert-history
  # bindkey '^xf' fzf-insert-files
  # bindkey '^xd' fzf-insert-directory
  # bindkey '^xn' fzf-insert-named-directory
  #
  # ## Git
  # bindkey '^@g'  fzf-select-git-widget
  # bindkey '^@ga' fzf-git-add-files
  # bindkey '^@gc' fzf-git-change-repository
  #
  # # GitHub
  # bindkey '^@h'  fzf-select-github-widget
  # bindkey '^@hs' fzf-github-show-issue
  # bindkey '^@hc' fzf-github-close-issue
  #
  # ## Docker
  # bindkey '^@d'  fzf-select-docker-widget
  # bindkey '^@dc' fzf-docker-remove-containers
  # bindkey '^@di' fzf-docker-remove-images
  # bindkey '^@dv' fzf-docker-remove-volumes

  # Enable Exact-match by fzf-insert-history
  FZF_WIDGET_OPTS[insert-history]='--exact'

  # Start fzf in a tmux pane
  FZF_WIDGET_TMUX=1
# Load theme from OMZ
# zplugin snippet OMZ::themes/rkj-repos.zsh-theme
source /usr/share/doc/find-the-command/ftc.zsh
. /home/den/.zsh/plugins/enhancd/init.sh

function insert-fzy-path-in-command-line() {
        local selected_path
        echo # Run fzy underneath the current prompt
        selected_path=$(ag . -l -g '' | fzy) || return
        LBUFFER="$LBUFFER${(q)selected_path} " # ${(q)VAR} shell-escapes the string
        zle reset-prompt
}
zle -N insert-fzy-path-in-command-line

unsetopt flowcontrol # By default, ^S freezes terminal output, only needed if keybinding is ^S
bindkey "^S" "insert-fzy-path-in-command-line"
# . /home/den/.zsh/plugins/zsh-fzy-master/zsh-fzy.plugin.zsh
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
###########################################
########      Spaceship conf      #########
###########################################

SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  venv          # virtualenv section
  pyenv         # Pyenv section
  aws           # Amazon Web Services section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Backgound jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_CHAR_SYMBOL="╍ᗇ "
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_USER_SHOW=true
SPACESHIP_TIME_SHOW=true
# SPACESHIP_DIR_PREFIX='| '
# SPACESHIP_PYENV_PREFIX='› '
# SPACESHIP_PYENV_SYMBOL='🐍  '
# SPACESHIP_PYENV_COLOR=blue
SPACESHIP_DIR_TRUNC=0
SPACESHIP_DIR_TRUNC_REPO=true
SPACESHIP_VI_MODE_SHOW=true
SPACESHIP_VI_MODE_COLOR=cyan
autoload -U promptinit; promptinit
# prompt spaceship
# spaceship_vi_mode_enable
. /home/den/.zsh/themes/agnoster.zsh-theme
