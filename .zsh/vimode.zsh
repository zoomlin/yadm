PROMPT='%{$fg[magenta]%}┌[%{$fg[blue]%}%~%{$reset_color%}%{$fg[magenta]%}]$(git_prompt_info)$(file_number)
%{$fg[magenta]%}└$(prompt_char)%{$fg_bold[cyan]%}% % %{$reset_color%} '
RPS1='${VIMODE}'

function file_number() {
	# http://www.maketecheasier.com/8-useful-and-interesting-bash-prompts
	echo "%{$fg[magenta]%}-|%{$fg[green]%}$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files%{$fg[cyan]%},%{$fg[green]%} $(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')%{$fg[magenta]%}|"
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo ' ±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '>'
}

function zle-line-init zle-keymap-select {
    RPS1="%{$fg[green]%}${${KEYMAP/vicmd/[-- NORMAL --]}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
