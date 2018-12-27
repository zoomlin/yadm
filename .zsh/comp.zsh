
# Completion {{{1
autoload -U compinit
compinit
setopt AUTO_LIST
setopt AUTO_MENU
setopt MENU_COMPLETE
setopt complete_in_word   # complete /v/c/a/p
setopt no_nomatch		  # enhanced bash wildcard completion
setopt magic_equal_subst
setopt noautoremoveslash
setopt null_glob

# ignore the current directory
zstyle ':completion:*:cd:*' ignore-parents parent pwd

zstyle ':completion:*' use-cache true
#zstyle ':completion::complete:*' cache-path .zcache
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*:*:default' force-list always
zstyle ':completion:*' select-prompt '%SSelect:  lines: %L  matches: %M  [%p]'
zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:predict:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct

# Path Completion
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-shlashes 'yes'
zstyle ':completion::complete:*' '\\'

# Colorful Completion
export ZLSCOLORS="${LS_COLORS}"
zmodload zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

# Fix case and typo
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Grouping Completion
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
#zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
#zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'
#zstyle ':completion:*:corrections' format $'\e[01;32m -- %d (errors: %e) --\e[0m'

# huge list
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*:default' menu 'select=0'
# Completing order
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
zstyle ':completion:*' completer _complete _prefix _user_expand _correct _prefix _match
# newer file first
#zstyle ':completion:*' file-sort modification reverse
# Separate man page sections.
zstyle ':completion:*:manuals' separate-sections true
# complete with a menu for xwindow ids
#zstyle ':completion:*:windows' menu on=0
#zstyle ':completion:*:expand:*' tag-order all-expansions

#kill completion
compdef pkill=kill
compdef pkill=killall
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:processes' command 'ps -au$USER '

#zstyle ':completion:*' file-patterns '%p(^-/):globbed-files' '*(-/):directories' '*:all-files'
zstyle ':completion::complete:feh:*' file-patterns '*.png *.jpg *.bmp *.gif *(/):directories'
zstyle ':completion::complete:wps:*' file-patterns '*.doc *.docx *(/):directories'
zstyle ':completion::complete:wpp:*' file-patterns '*.ppt *.pptx *(/):directories'
zstyle ':completion::complete:llpp:*' file-patterns '*.pdf *(/):directories'
zstyle ':completion::complete:et:*' file-patterns '*.xls *.xlsx *(/):directories'

# vim ignore
zstyle ':completion:*:*:vim:*:*files' ignored-patterns '*.(avi|mkv|rmvb|pyc|wmv)'

zstyle ':completion::*:(-command-|export):*' fake-parameters CFLAGS CXXFLAGS LD_LIBRARY_PATH

# Don't complete uninteresting users...
zstyle ':completion:*:*:*:users' ignored-patterns \
  adm amanda apache avahi beaglidx bin cacti canna chrony clamav colord daemon dbus distcache dnsmasq dovecot etcd fax fcron ftp games gdm git gkrellmd gopher hacluster haldaemon halt hsqldb http ident junkbust ldap lp mail mailman mailnull memcached mldonkey mongodb mysql nagios named nbd netdump news nfsnobody nobody nscd ntp nut nx openvpn operator pcap polipo polkitd postfix postgres privoxy proxy pulse pvm quagga radvd redis rpc rpcuser rpm rtkit shutdown squid sshd sync systemd-bus-proxy systemd-journal-gateway systemd-journal-remote systemd-journal-upload systemd-network systemd-resolve systemd-timesync tor unbound usbmux uucp uuidd vcsa xfs

#zstyle ':completion:*:mutt:*' users ${${${(f)"$(<~/.mutt/aliases)"}#alias[[:space:]]}%%[[:space:]]*}

# ... completion
user_complete(){
	if [[ -z $BUFFER ]]; then
		return
	fi
	if [[ $BUFFER =~ "^\.\.\.*$" ]]; then
		BUFFER=`echo "$BUFFER" |sed 's/^/cd\ /g'`
		zle end-of-line
		user_complete
		return
	elif [[ $BUFFER =~ ".*\.\.\..*$" ]] ;then
		BUFFER=`echo "$BUFFER" |sed 's/\.\.\./\.\.\/\.\./g'`
		zle end-of-line
		user_complete
		return
	fi
	zle expand-or-complete
	#recolor-cmd
}
zle -N user_complete
autoload compinstall
