# [zsh-git-prompt] location
export __GIT_PROMPT_DIR=/home/den/.zsh/plugins/zsh-git-prompt
# dont cache git prompt
export ZSH_THEME_GIT_PROMPT_NOCACHE=true
# parameter expansion, command substitution and arithmetic expansion are performed in prompts
setopt prompt_subst
# result of last command displays either happy or sad face as a prompt
#smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

# vim mode indicator in prompt (http://superuser.com/questions/151803/how-do-i-customize-zshs-vim-mode)
vim_ins_mode="%{$fg_bold[magenta]%}[INS]%{$reset_color%}"
vim_cmd_mode="%{$fg_bold[red]%}[CMD]%{$reset_color%}"
vim_mode=$vim_ins_mode

function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
  vim_mode=$vim_ins_mode
}
zle -N zle-line-finish

# Fix a bug when you C-c in CMD mode and you'd be prompted with CMD mode indicator, while in fact you would be in INS mode
# Fixed by catching SIGINT (C-c), set vim_mode to INS and then repropagate the SIGINT, so if anything else depends on it, we will not break it
# Thanks Ron! (see comments)
function TRAPINT() {
  vim_mode=$vim_ins_mode
  return $(( 128 + $1 ))
}

# don't display RPROMPT for previously accepted lines; only display it next to current line
setopt transient_rprompt

function ssh_prompt_color() {
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    echo '%{%F{yellow}%}'
  else
    echo '%{%F{green}%}'
  fi
}

PROMPT='${vim_mode}$fg_bold[magenta]%}─[ %~ ]%{$reset_color%}$(git_super_status)
 $fg_bold[magenta]%}       └─>'
