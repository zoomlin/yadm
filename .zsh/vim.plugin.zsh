vim_commands=(vi vim gvim mvim)

_run_vim_wrapper() {
	local cmd
	for arg in $@; do
		cmd="$cmd \"${arg/:/\" \"+:}\""
	done
	eval $cmd
}

for cmd in $vim_commands; do
	eval "function ${cmd}_wrapper () { _run_vim_wrapper $cmd \$@}"
	alias $cmd=${cmd}_wrapper
done

# ZLE WIDGETS

# Zsh's history-beginning-search-backward is very close to Vim's C-x C-l
history-beginning-search-backward-then-append() {
  zle history-beginning-search-backward
  zle vi-add-eol
}
zle -N history-beginning-search-backward-then-append

# Delete all characters between a pair of characters. Mimics vim's "di" text object functionality
function delete-in {

  # Create locally-scoped variables we'll need
  local CHAR LCHAR RCHAR LSEARCH RSEARCH COUNT

  # Read the character to indicate which text object we're deleting
  read -k CHAR

  if [ "$CHAR" = "w" ]
  then
    # diw, delete the word

    # find the beginning of the word under the cursor
    zle vi-backward-word

    # set the left side of the delete region at this point
    LSEARCH=$CURSOR

    # find the end of the word under the cursor
    zle vi-forward-word

    # set the right side of the delete region at this point
    RSEARCH=$CURSOR

    # Set the BUFFER to everything except the word we are removing
    RBUFFER="$BUFFER[$RSEARCH+1,${#BUFFER}]"
    LBUFFER="$LBUFFER[1,$LSEARCH]"

    return

  # diw was unique.  For everything else, we just have to define the
  # characters to the left and right of the cursor to be removed
  elif [ "$CHAR" = "(" ] || [ "$CHAR" = ")" ] || [ "$CHAR" = "b" ]
  then
    # di), delete inside of a pair of parenthesis
    LCHAR="("
    RCHAR=")"

  elif [ "$CHAR" = "[" ] || [ "$CHAR" = "]" ]
  then
    # di], delete inside of a pair of square brackets
    LCHAR="["
    RCHAR="]"

  elif [ $CHAR = "{" ] || [ $CHAR = "}" ] || [ "$CHAR" = "B" ]
  then
    # di}, delete inside of a pair of braces
    LCHAR="{"
    RCHAR="}"

  else
    # The character entered does not have a special definition.
    # Simply find the first instance to the left and right of the cursor.
    LCHAR="$CHAR"
    RCHAR="$CHAR"
  fi

  # Find the first instance of LCHAR to the left of the cursor and the
  # first instance of RCHAR to the right of the cursor, and remove everything in between.
  # Begin the search for the left-sided character directly the left of the cursor
  LSEARCH=${#LBUFFER}

  # Keep going left until we find the character or hit the beginning of the buffer
  while [ "$LSEARCH" -gt 0 ] && [ "$LBUFFER[$LSEARCH]" != "$LCHAR" ]
  do
    LSEARCH=$(expr $LSEARCH - 1)
  done

  # If we hit the beginning of the command line without finding the character, abort
  if [ "$LBUFFER[$LSEARCH]" != "$LCHAR" ]
  then
    return
  fi

  # start the search directly to the right of the cursor
  RSEARCH=0

  # Keep going right until we find the character or hit the end of the buffer
  while [ "$RSEARCH" -lt $(expr ${#RBUFFER} + 1 ) ] && [ "$RBUFFER[$RSEARCH]" != "$RCHAR" ]
  do
    RSEARCH=$(expr $RSEARCH + 1)
  done

  # If we hit the end of the command line without finding the character, abort
  if [ "$RBUFFER[$RSEARCH]" != "$RCHAR" ]
  then
    return
  fi

  # Set the BUFFER to everything except the text we are removing
  RBUFFER="$RBUFFER[$RSEARCH,${#RBUFFER}]"
  LBUFFER="$LBUFFER[1,$LSEARCH]"
}

zle -N delete-in


# Delete all characters between a pair of characters and then go to insert mode
# Mimics vim's "ci" text object functionality.
function change-in {
  zle delete-in
  zle vi-insert
}
zle -N change-in

# Delete all characters between a pair of characters as well as the surrounding
# characters themselves. Mimics vim's "da" text object functionality
function delete-around {
  zle delete-in
  zle vi-backward-char
  zle vi-delete-char
  zle vi-delete-char
}
zle -N delete-around

# Delete all characters between a pair of characters as well as the surrounding
# characters themselves and then go into insert mode. Mimics vim's "ca" text object functionality.
function change-around {
  zle delete-in
  zle vi-backward-char
  zle vi-delete-char
  zle vi-delete-char
  zle vi-insert
}
zle -N change-around

# KEY BINDINGS

# 200ms wait (20 == 200ms) for a longer bound string (usually ESC + something; wait 200ms for 'something' and if it doesn't come, just execute normal <Esc>)
export KEYTIMEOUT=20

# VIM style keybindings by default
bindkey -v

# make backward-word and forward-word move to each word separated by a '/'
export WORDCHARS=''

# edit command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

alias ←="pushd -q +1"
alias →="pushd -q -0"

case "$TERM" in
  *xterm*|screen-256color)
    # alt + arrows
    bindkey '[D' backward-word
    bindkey '[C' forward-word
    bindkey '^[[1;3D' backward-word
    bindkey '^[[1;3C' forward-word

    # ctrl + arrows
    bindkey '^[OD' backward-word
    bindkey '^[OC' forward-word
    bindkey '^[[1;5D' backward-word
    bindkey '^[[1;5C' forward-word

    # home / end
    bindkey '^[[1~' beginning-of-line
    bindkey '^[[4~' end-of-line

    # delete
    bindkey '^[[3~' delete-char

    # page up / page down
    bindkey '^[[5~' history-beginning-search-backward
    bindkey '^[[6~' history-beginning-search-forward

    # shift + tab
    bindkey '^[[Z' reverse-menu-complete


    # VI MODE KEYBINDINGS (ins mode)
    bindkey -M viins '^a'    beginning-of-line
    # bindkey -M viins 'ii'    vi-cmd-mode
    bindkey -M viins '^e'    end-of-line
    bindkey -M viins -s '^b' "←\n" # C-b move to previous directory (in history)
    bindkey -M viins -s '^f' "→\n" # C-f move to next directory (in history)
    bindkey -M viins '^k'    kill-line
    bindkey -M viins '^r'    history-incremental-pattern-search-backward
    bindkey -M viins '^s'    history-incremental-pattern-search-forward
    bindkey -M viins '^o'    history-beginning-search-backward
    bindkey -M viins '^p'    history-beginning-search-backward
    bindkey -M viins '^n'    history-beginning-search-forward
    bindkey -M viins '^y'    yank-line
    bindkey -M viins '^w'    backward-kill-word
    bindkey -M viins '^u'    backward-kill-line
    bindkey -M viins '^h'    backward-delete-char
    bindkey -M viins '^?'    backward-delete-char
    bindkey -M viins '^_'    undo
    bindkey -M viins '^x^l'  history-beginning-search-backward-then-append
    bindkey -M viins '^x^r'  redisplay
    bindkey -M viins '\eOH'  beginning-of-line # Home
    bindkey -M viins '\eOF'  end-of-line       # End
    bindkey -M viins '\e[2~' overwrite-mode    # Insert


    # VI MODE KEYBINDINGS (cmd mode)
    bindkey -M vicmd 'ca'    change-around
    bindkey -M vicmd 'ci'    change-in
    bindkey -M vicmd 'da'    delete-around
    bindkey -M vicmd 'di'    delete-in
    bindkey -M vicmd 'ga'    what-cursor-position
    bindkey -M vicmd 'gg'    beginning-of-history
    bindkey -M vicmd 'G '    end-of-history
    bindkey -M vicmd '^a'    beginning-of-line
    bindkey -M vicmd '^e'    end-of-line
    bindkey -M vicmd '^k'    kill-line
    bindkey -M vicmd '^l'    clear-screen
    bindkey -M vicmd '^r'    history-incremental-pattern-search-backward
    bindkey -M vicmd '^s'    history-incremental-pattern-search-forward
    bindkey -M vicmd '^o'    history-beginning-search-backward
    bindkey -M vicmd '^p'    history-beginning-search-backward
    bindkey -M vicmd '^n'    history-beginning-search-forward
    bindkey -M vicmd '^y'    yank
    bindkey -M vicmd '^w'    backward-kill-word
    bindkey -M vicmd '^u'    backward-kill-line
    bindkey -M vicmd '/'     vi-history-search-forward
    bindkey -M vicmd '?'     vi-history-search-backward
    bindkey -M vicmd '^_'    undo
    bindkey -M vicmd '\ef'   forward-word                      # Alt-f
    bindkey -M vicmd '\eb'   backward-word                     # Alt-b
    bindkey -M vicmd '\ed'   kill-word                         # Alt-d
    bindkey -M vicmd '\e[5~' history-beginning-search-backward # PageUp
    bindkey -M vicmd '\e[6~' history-beginning-search-forward  # PageDown
    bindkey -M vicmd '^[[2~' vi-insert  # Insert
  ;;
esac
