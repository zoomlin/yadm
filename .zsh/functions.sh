#!/bin/zsh
# vim: set filetype=zsh

function preexec {
    case $TERM in
    xterm*)
        print -Pn "\e]0;$1\a"
        ;;
    screen)
        #PR_TITLEBAR=$'%{\e_screen \005 (\005t) | %(!.-=[ROOT]=- | .)%n@%m:%~ | ${COLUMNS}x${LINES} | %y\e\\%}'
        ;;
    *)
        PR_TITLEBAR=''
        ;;
    esac
}

function ff() {
  find . -type f -iname '*'$@'*' -ls
}

# Convert * to mp3 files
function 2mp3()
{
  until [ -z $1 ]
  do
    ffmpeg -i $1 -acodec libmp3lame "`basename $1`.mp3"
    shift
  done
}
# Add additional directories to the path.
pathadd() {
  [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]] && PATH="${PATH:+"$PATH:"}$1"
}
extract () {
    echo Extracting $1 ...
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1        ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xf $1        ;;
            *.tbz2)      tar xjf $1      ;;
            *.tbz)       tar -xjvf $1    ;;
            *.tgz)       tar xzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "I don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# pk () {
#     echo "Archiving $1 ..."
#     if [ $1 ] ; then
#         case $1 in
#             tbz)       tar cjvf $2.tar.bz2 $2      ;;
#             tgz)       tar czvf $2.tar.gz  $2       ;;
#             tar)      tar cpvf $2.tar  $2       ;;
#             bz2)    bzip $2 ;;
#             gz)        gzip -c -9 -n $2 > $2.gz ;;
#             zip)       zip -r $2.zip $2   ;;
#             7z)        7z a $2.7z $2    ;;
#             *)         echo "'$1' cannot be packed via pk()" ;;
#         esac
#     else
#         echo "'$1' is not a valid file"
#     fi
# }


custom_exit() {
    if [[ -z $TMUX ]]; then
        builtin exit
    else
        real_tmux=$(whence -p tmux)
        count=$($real_tmux list-windows &> /dev/null | wc -l)
        if [ $count -gt 1 ]; then
            builtin exit
        else
            $real_tmux detach
        fi
    fi
}
zle -N custom_exit

tmux_run() {
    me=$(whoami)
    real_tmux=$(whence -p tmux)
    args_num="$#"

    if [ "$#" -gt 0 ]; then
        TERM=screen-256color $real_tmux "$*"
    else
        if [[ ! -z $TMUX ]]; then
            TERM=screen-256color $real_tmux
        else
            if $real_tmux has-session -t $me 2>/dev/null; then
                TERM=screen-256color $real_tmux attach-session -t $me
            else
                TERM=screen-256color $real_tmux new -s $USER
                TERM=screen-256color $real_tmux attach-session -t $me
            fi
        fi
    fi
}

# l() {
  # "$@" >/dev/null &
  # disown
# }
#   functions {{{
function ms { #mpc search
    mpc search filename "$*"
}

function ar {
   aria2c --file-allocation=none --dir=/media/1.5TB/Downloads "$*"
}

function us {
   kl ushare; ushare -D -c "$*"
}

function ed {
   textadept-curses "$*"
}

function mp { #mpc play
    mpc update && mpc search filename "$*" | mpc add && termite -e ncmpcpp &
}

ytp () {
mpv "$(xclip -o -selection clipboard)"
}

# yt () {
# ytdl -e --get-id "ytsearch$2:$1" | awk 'NR % 2 == 0 { print "ytdl://"$0 } NR % 2 != 0 { print $0 }'
# }

ytd () {
 youtube-dl -f best -o '/home/den/Downloads/%(title)s.%(ext)s' "$(xclip -o -selection clipboard)"
}

ub () {
 rclone copy "$(xclip -o -selection clipboard)" drive:Books
}


yta () {
 youtube-dl -x -f  best -o '/home/den/Downloads/%(title)s.%(ext)s' "$(xclip -o -selection clipboard)"
}

function ms { #mpc search
    mpc search filename "$*"
}

function ]] {
   aria2c --file-allocation=none --dir=/media/Videonew/Downloads "$(xclip -o -selection clipboard)"
}


function ee {
   gvim "$(xclip -o -selection clipboard)"
}


function ya {
   yadm add "$(xclip -o -selection clipboard)"
}

function mm {
   mpv "$(xclip -o -selection clipboard)"
}

function se {
   sudo gvim "$(xclip -o -selection clipboard)"
}

function ws {
   wiki-search "$*"
}

function us {
   ko ushare; ushare -D -c "$*"
}

function ed {
   textadept-curses "$*"
}

function mp { #mpc play
    mpc update && mpc search filename "$*" | mpc add && termite -e ncmpcpp &
}

function gc() { git commit -m "$*" }

mmv() {
  local src dst
  for src; do
    [[ -e $src ]] || { print -u2 "$src does not exist"; continue }
    dst=$src
    vared dst
    [[ $src != $dst ]] && mkdir -p $dst:h && mv -n $src $dst
  done
}

git-interactive-change-branch() {
local branches branch
branches=$(git branch) &&
branch=$(echo "$branches" | fzf +s +m) &&
git checkout $(echo "$branch" | sed "s/.* //")
}
git-interactive-checkout-commit() {
local commits commit
commits=$(yadm log --pretty=oneline --abbrev-commit --reverse) &&
commit=$(echo "$commits" | fzf +s +m -e) &&
yadm checkout $(echo "$commit" | sed "s/ .*//")
}

# make a directory and cd to it
mcd()
{
    test -d "$1" || mkdir "$1" && cd "$1"
}
function up {
ups=""
for i in $(seq 1 $1)
do
        ups=$ups"../"
done
cd $ups
}
# show the most recently changed file
latest()
{
    local count=3               # how many files to print
    local promptlines=5         # how many lines to leave for the prompt
                                # when printing a screenful with -s
    local usage="Usage: latest [-n <number>] [-s] [--] [pattern]"
    while test $# -gt 0
    do
        case $1 in
        # -- = stop processing options
        --)
            shift
            break
            ;;
        # -n <number> = <number> files
        -n)
            if test -n "$2"
            then
                count=$2
                shift 2
            else
                echo "$usage" 1>&2
                return 1
            fi
            ;;
        # -s = one screenful
        -s)
            count=$((LINES - promptlines))
            shift
            ;;
        # -<number> = <number> files
        -[0-9]*)
            count=${1#-}
            shift
            ;;
        # anything else starting with a minus is a usage error
        -*)
            echo "$usage" 1>&2
            return 1
            ;;
        *)
            break
            ;;
        esac
    done

    if test $# -ne 0
    then
        /bin/ls -t -1 -d "$@" | head -n $count
    else
        /bin/ls -t -1 -d * | head -n $count
    fi
}
# alias hub to git (https://github.com/defunkt/hub)
function git() { hub "$@" }

function background_jobs() {
  [[ $(jobs -l | wc -l) -gt 0 ]] && echo "⚙"
}

function ssh_prompt_color() {
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    echo '%{%F{blue}%}'
  else
    echo '%{%F{green}%}'
  fi
}
# vim - load tmp/current.vim if it exist and no params to vim are passed (aka vim is aliased to v)
function v() {
if (( $# == 0 )) && [[ -f tmp/current.vim ]]; then
    vim -S tmp/current.vim
  else
    vim "$@"
  fi
}
function lscolors {
	((cols = $COLUMNS - 4))
	s=$(printf %${cols}s)
	for i in {000..$(tput colors)}; do
		echo -e $i $(tput setaf $i; tput setab $i)${s// /=}$(tput op);
	done
}
# open a web browser on google for a query
function google {
	xdg-open "https://www.google.com/search?q=`urlencode "${(j: :)@}"`"
}
# urlencode text
function urlencode {
	print "${${(j: :)@}//(#b)(?)/%$[[##16]##${match[1]}]}"
}
# launch an app
function launch {
	type $1 >/dev/null || { print "$1 not found" && return 1 }
	$@ &>/dev/null &|
}
alias launch="launch " # expand aliases
function sc() { sudo systemctl "$@"; }
function sp() { sudo pacman "$@"; }

function peco-cdr () {
    local selected_dir=$(cdr -l | awk '{ print $2 }' | peco)
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-cdr

lazygit() {
	git add .
	git commit -a -m "."
	git push
}


calc() {
    echo "scale=3;$@" | bc -l
}


note () {
    # if file doesn't exist, create it
    if [[ ! -f $HOME/.notes ]]; then
        touch "$HOME/.notes"
    fi

    if ! (($#)); then
        # no arguments, print file
        cat "$HOME/.notes"
    elif [[ "$1" == "-c" ]]; then
        # clear file
        printf "%s" > "$HOME/.notes"
    else
        # add all arguments to file
        printf "%s\n" "$*" >> "$HOME/.notes"
    fi
}

todo() {
    if [[ ! -f $HOME/.todo ]]; then
        touch "$HOME/.todo"
    fi

    if ! (($#)); then
        cat "$HOME/.todo"
    elif [[ "$1" == "-l" ]]; then
        nl -b a "$HOME/.todo"
    elif [[ "$1" == "-c" ]]; then
        > $HOME/.todo
    elif [[ "$1" == "-r" ]]; then
        nl -b a "$HOME/.todo"
        eval printf %.0s- '{1..'"${COLUMNS:-$(tput cols)}"\}; echo
        read -p "Type a number to remove: " number
        sed -i ${number}d $HOME/.todo "$HOME/.todo"
    else
        printf "%s\n" "$*" >> "$HOME/.todo"
    fi
}
fag() {
  [ $# -eq 0  ] && return
  local out cols
  if out=$(ag --nogroup --color "$@" | fzf --ansi); then
    setopt sh_word_split
    cols=(${out//:/  })
    unsetopt sh_word_split
    vim ${cols[1]} +"normal! ${cols[2]}zz"
  fi
}

#j() { local dir dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${dir}" || return 1 }

# fcoc - checkout git commit
fcoc() {
  local commits commit
  commits=$(git log --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e) &&
  git checkout $(echo "$commit" | sed "s/ .*//")
}

fd() {
  local DIR
  DIR=$(d | fzf +s +m) && cd $(sed 's/^[0-9.]* *//' <<< "$DIR")
}
memusage() {
APP=$1
    ps -A --sort -rss -o comm,rss | grep "$APP" | awk '{ sum+=$2 } \
    END { print sum/1024 }'
}

fixzsh() {
    mv "$HOME/.zsh_history" "$HOME/.zsh_history_bad"
    strings "$HOME/.zsh_history_bad" > "$HOME/.zsh_history"
    fc -R "$HOME/.zsh_history"
echo "...done"
}

function coam (){
	git commit -a -m $1
} # "coam 'hello' " will commit all pending documents with a message of "hello"
