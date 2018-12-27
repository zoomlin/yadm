# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
#bindkey '^T' autosuggest-toggle
#bindkey '^S' autosuggest-execute-suggestion
#AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf

# C-S: cd to a directory from the current subtree
fzf-cd-subtree-widget() {
  cd "${$(find * -path '*/\.*' -prune \
      -o -type d -print 2> /dev/null | fzf):-.}"
  zle reset-prompt
}
zle     -N   fzf-cd-subtree-widget
bindkey '^S' fzf-cd-subtree-widget

# C-H: cd to a directory from home
#fzf-cd-home-widget() {
#  cd "${$(find ~/* -path '*/\.*' -prune \
#      -o -type d -print 2> /dev/null | fzf):-.}"
#  zle reset-prompt
#}
#zle     -N   fzf-cd-home-widget
#bindkey '^H' fzf-cd-home-widget

 #C-h: open a file in vim from the current subtree
 #fzf-vim-subtree-widget() {
   #FILE=$(find * -path '*/\.*' -prune -o -type f -print 2> /dev/null | fzf)
   #if [ -n "$FILE" ]; then
     #echo "$FILE" | xargs bash -c '</dev/tty vim "$@"' ignoreme
   #fi
   #zle reset-prompt
 #}
 #zle     -N   fzf-vim-subtree-widget
 #bindkey '^h' fzf-vim-subtree-widget

 #C-P: open a file in vim from fasd
 fzf-vim-home-widget() {
   FILE=$(fasd -f -l | fzf --no-sort --tac)
   if [ -n "$FILE" ]; then
     echo "$FILE" | xargs bash -c '</dev/tty vim "$@"' ignoreme
   fi
   zle reset-prompt
 }
 zle     -N   fzf-vim-home-widget
 bindkey '^P' fzf-vim-home-widget

# A-O: insert a path from the current subtree
fzf-file-widget() {
  local FILES
  local IFS="
"
  FILES=($(
    find * -path '*/\.*' -prune \
    -o -type f -print \
    -o -type l -print 2> /dev/null | fzf -m))
  unset IFS
  FILES=$FILES:q
  LBUFFER="${LBUFFER%% #} $FILES"
  zle redisplay
}
zle     -N   fzf-file-widget
bindkey '^[e' fzf-file-widget

# C-Y: insert a path from home
fzf-file-home-widget() {
  local FILES
  local IFS="
"
  FILES=($(
    find ~/* -path '*/\.*' -prune \
    -o -type f -print \
    -o -type l -print 2> /dev/null | fzf -m))
  unset IFS
  FILES=$FILES:q
  LBUFFER="${LBUFFER%% #} $FILES"
  zle redisplay
}
zle     -N   fzf-file-home-widget
bindkey '^Y' fzf-file-home-widget

# A-L: go to bookmark
fzf-fasd-insert-widget() {
  local FILES
  local IFS="
"
  FILES=($(cat /home/den/bdirs | fzf -m --no-sort))
  unset IFS
  FILES=$FILES:q
  LBUFFER="${LBUFFER%% #} $FILES"
  zle redisplay
}
zle     -N   fzf-fasd-insert-widget
bindkey '^[d' fzf-fasd-insert-widget

# A-Z: cd to a directory from fasd
fzf-fasd-cd-widget() {
  cd "$(fasd -l | fzf --no-sort)"
  zle reset-prompt
}
zle     -N   fzf-fasd-cd-widget
bindkey '^[z' fzf-fasd-cd-widget

# C-R: history search
fzf-history-widget() {
  LBUFFER=$(history | fzf +s | sed "s/ *[0-9]* *//")
  zle redisplay
}
zle     -N   fzf-history-widget
bindkey '^R' fzf-history-widget

# vimf - Open selected file in Vim
vf() {
  FILE=$(fzf) && vim "$FILE"
}
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern root)
export FZF_DEFAULT_COMMAND="find -L * -path '*/\.*' -prune -o -type f -print -o -type l -print 2> /dev/null"
#export FZF_DEFAULT_OPTS='-x
#--color fg:252,bg:233,hl:67,fg+:252,bg+:235,hl+:81
#--color info:144,prompt:161,spinner:135,pointer:135,marker:118'
# v - open files in ~/.viminfo
v() {
  local files
  files=$(grep '^>' ~/.viminfo | cut -c3- |
          while read line; do
            [ -f "${line/\~/$HOME}" ] && echo "$line"
          done | fzf-tmux -d -m -q "$*" -1) && vim ${files//\~/$HOME}
}
# fkill - kill process
fkill() {
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    kill -${1:-9} $pid
  fi
}
# fh - repeat history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}
#fda - including hidden directories
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}
# cdf - cd into the directory of the selected file
cdf() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}
# ALT-I - Paste the selected entry from locate output into the command line
fzf-locate-widget() {
  local selected
  if selected=$(locate / | fzf -q "$LBUFFER"); then
    LBUFFER=$selected
  fi  
  zle redisplay
}
zle     -N    fzf-locate-widget
bindkey '\ei' fzf-locate-widget
 fzf_history() { zle -I; eval $(history | fzf +s | sed 's/ *[0-9]* *//') ; }; zle -N fzf_history; bindkey '^H' fzf_history
 fzf_killps() { zle -I; ps -ef | sed 1d | fzf -m | awk '{print $2}' | xargs kill -${1:-9} ; }; zle -N fzf_killps; bindkey '^[q' fzf_killps
# fzf_cd() { zle -I; DIR=$(find ${1:-*} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf) && cd "$DIR" ; }; zle -N fzf_cd; bindkey '^[e' fzf_cd
fe() { local file; file=$(fzf --query="$1" --select-1 --exit-0); [ -n "$file" ] && ${EDITOR:-vim} "$file"; };

