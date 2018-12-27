#!/bin/zsh
# By default, ^S freezes terminal output and ^Q resumes it. Disable that so
# that those keys can be used for other things.
unsetopt flowcontrol
# Run fzy in the current working directory, appending the selected path, if
# any, to the current command, followed by a space.
function insert-fzy-path-in-command-line() {
    local selected_path
    # Print a newline or we'll clobber the old prompt.
    echo
    tokens=(${(z)LBUFFER})
    prefix=${tokens[-1]}
    prefix=$(eval echo $prefix)
    # Find the path; abort if the user doesn't select anything.
    if [[ -z $prefix || ! -d $prefix ]]
    then
        selected_path=''''$(fd --hidden --follow --exclude .git | fzy)'''' || return
        # Append the selection to the current command buffer.
        eval 'LBUFFER="$LBUFFER$selected_path "'
    else
        selected_path=''''$(fd --hidden --follow --exclude .git . $prefix | fzy)'''' || return
        # Append the selection to the current command buffer.
        eval 'LBUFFER="$tokens[1,-2] $selected_path "'
    fi
    # Redraw the prompt since fzy has drawn several new lines of text.
    zle reset-prompt
}
# Create the zle widget
zle -N insert-fzy-path-in-command-line
# Bind the key to the newly created widget
bindkey "^S" "insert-fzy-path-in-command-line"
