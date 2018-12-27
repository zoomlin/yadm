##################################################
# vim: ft=zsh ts=2 sw=2 sts=2
#
# File:
#       budspencer.zsh-theme
#
# Description:
#       Budspencer theme for oh-my-zsh
#
# Maintainer:
#       Joseph Tannhuber
#
# Sections:
#    -> Color definitions
#    -> Segment drawing
#    -> Prompt components
#    -> Show prompt
##################################################

##################################################
# => Color definitions
##################################################
# INSERT mode color
INSCOL=5
INSCURSCOL="#c6c8d1"

# NORMAL mode color
NORMCOL=9
NORMCURSCOL="#cf4f88"

# REPLACE mode color
REPCOL=160
REPCURSCOL="#dc322f"

##################################################
# => Segment drawing
##################################################
# A few utility functions to make it easy and re-usable to draw segmented prompts
CURRENT_BG='NONE'
SEGMENT_SEPARATOR=''

# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

# End the prompt, closing any open segments
prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

##################################################
# => Prompt components
##################################################


# Vi mode indicators
set_vi_mode() {
  case "$1" in
    "i")
      indcol=$INSCOL
      cursorcolor="$INSCURSCOL"
      zsh_vi_mode="INSERT"
      ;;
    "n")
      indcol=$NORMCOL
      cursorcolor="$NORMCURSCOL"
      zsh_vi_mode="NORMAL"
      ;;
    "r")
      indcol=$REPCOL
      cursorcolor="$REPCURSCOL"
      zsh_vi_mode="REPLACE"
      ;;
  esac
  dir_mode="%{%F{$indcol}%}%{%K{$indcol}%}%{%F{0}%}%} %~ %{$reset_color%}"
  vim_mode="%{%K{$indcol}%}%{%F{0}%}"
  echo -ne "\033]12;$cursorcolor\007"
}

vi-edit-command-line() {
  set_vi_mode "i"
  edit-command-line
}
zle -N vi-edit-command-line
bindkey -M vicmd "v" vi-edit-command-line

function zle-keymap-select {
if [ "$KEYMAP" = "vicmd" ]
then
  set_vi_mode "n"
else
  if [[ "$ZLE_STATE" = *overwrite* ]]
  then
    set_vi_mode "r"
  else
    set_vi_mode "i"
  fi
fi
zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
set_vi_mode "i"
}
zle -N zle-line-finish

function TRAPINT() {
set_vi_mode "i"
return $(( 128 + $1 ))
}

function prompt_mode() {
prompt_segment ${indcol} 0
print -n ${vim_mode}${zsh_vi_mode}
}

# Main prompt
build_prompt() {
  RETVAL=$?
  # prompt_status
  # prompt_virtualenv
  # prompt_context
  prompt_mode
  # prompt_git
  # prompt_hg
  prompt_end
}

##################################################
# => Show prompt
##################################################
KEYTIMEOUT=1
set_vi_mode "i"
PROMPT='%{%f%b%k%}$(build_prompt) '
# RPROMPT='${dir_mode}'
