# vim:ft=zsh ts=2 sw=2 sts=2
#                     ██     ██                 
#  █████             ░██    ░██                 
# ██░░░██  ██████   ██████ ██████  █████  ██████
#░██  ░██ ░░░░░░██ ░░░██░ ░░░██░  ██░░░██░░██░░█
#░░██████  ███████   ░██    ░██  ░███████ ░██ ░ 
# ░░░░░██ ██░░░░██   ░██    ░██  ░██░░░░  ░██   
#  █████ ░░████████  ░░██   ░░██ ░░██████░███   
# ░░░░░   ░░░░░░░░    ░░     ░░   ░░░░░░ ░░░

if [ "$(whoami)" = "root" ];then
  _user="%{$fg_bold[red]%}#%{$reset_color%}"
else
  _user="%{$fg_bold[white]%}$%{$reset_color%}"
fi 

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
local left_status="%(?:%{$fg[green]%}[:%{$fg[red]%}[)"
local right_status="%(?:%{$fg[green]%}]:%{$fg[red]%}])"

PROMPT='
${left_status}%{$fg_bold[yellow]%} %D %T %{$reset_color%}${right_status} ${left_status}$(git_prompt_info)%{$reset_color%}${right_status}
${left_status}%{$fg_bold[cyan]%}%c%{$reset_color%}${right_status}${_user}${ret_status}%{$reset_color%}'
RPROMPT=$'%b%{$reset_color%}%{$fg_bold[white]%}${${KEYMAP/vicmd/--NORMAL--}/(main|viins)/--INSERT--}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="$fg_bold[blue]Git: %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$reset_color "
ZSH_THEME_GIT_PROMPT_CLEAN="$reset_color ⚑"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red] ✘"
ZSH_THEME_GIT_PROMPT_ADDED="$fg[red] ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="$fg[cyan] ✹"
ZSH_THEME_GIT_PROMPT_DELETED="$fg[purple] ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="$fg[yellow] ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="$fg[white] ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="$fg[white] ✭"
ZSH_THEME_GIT_PROMPT_AHEAD="$fg[yellow] ⬆"
ZSH_THEME_GIT_PROMPT_BEHIND="$fg[yellow] ⬇"
ZSH_THEME_GIT_PROMPT_DIVERGED="$fg[yellow] ⬍"
