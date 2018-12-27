#!/bin/zsh
# vim: set filetype=zsh

setopt AUTO_LIST
setopt AUTO_MENU
setopt MENU_COMPLETE

autoload -U compinit
compinit

# # Completion caching
# zstyle ':completion::complete:*' use-cache on
# zstyle ':completion::complete:*' cache-path .zcache
# zstyle ':completion:*:cd:*' ignore-parents parent pwd
#
# # Fallback to built in ls colors
# zstyle ':completion:*' list-colors ''
#
# #Completion Options
# zstyle ':completion:*:match:*' original only
# zstyle ':completion::prefix-1:*' completer _complete
# zstyle ':completion:predict:*' completer _complete
# zstyle ':completion:incremental:*' completer _complete _correct
# zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate
#
# # Path Expansion
# zstyle ':completion:*' expand 'yes'
# zstyle ':completion:*' squeeze-shlashes 'yes'
# zstyle ':completion::complete:*' '\\'
#
# zstyle ':completion:*:*:*:default' menu yes select
# zstyle ':completion:*:*:default' force-list always
#
# zstyle ':completion:*' completer _complete _match _approximate
# zstyle ':completion:*:match:*' original only
# zstyle ':completion:*:approximate:*' max-errors 1 numeric
#
# # Autocomplete for kill\killall
# compdef pkill=kill
# compdef pkill=killall
# zstyle ':completion:*:*:kill:*' menu yes select
# zstyle ':completion:*:processes' command 'ps -au$USER'
#
# # Group matches and Describe
# zstyle ':completion:*:matches' group 'yes'
# zstyle ':completion:*:options' description 'yes'
# zstyle ':completion:*:options' auto-description '%d'
# zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
# zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
# zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'

# Use modern completion system
autoload -Uz compinit
compinit
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer refresh_path _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
