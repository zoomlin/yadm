            #██ ██
           #░██░░
  #██████   ░██ ██  ██████    ██████  ██████  █████   ██████
 #░░░░░░██  ░██░██ ░░░░░░██  ██░░░░  ██░░░░  ██░░░██ ██░░░░
  #███████  ░██░██  ███████ ░░█████ ░░█████ ░███████░░█████
 #██░░░░██  ░██░██ ██░░░░██  ░░░░░██ ░░░░░██░██░░░░  ░░░░░██
#░░████████ ███░██░░████████ ██████  ██████ ░░██████ ██████
 #░░░░░░░░ ░░░ ░░  ░░░░░░░░ ░░░░░░  ░░░░░░   ░░░░░░ ░░░░░░
 #█████ █████ █████ █████ █████ █████ █████ █████ █████ █████
#░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░ ░░░░░

alias gicb=git-interactive-change-branch
alias gicc=git-interactive-checkout-commit
alias ycn='yadm clone git@gitlab.com:Zoomlin/yadm.git'
alias yc='echo "enter commit message : " && read MSG && yadm commit -am "$MSG"'
alias rr='echo "enter file to restore : " && read MSG && duply den fetch "$MSG" /home/den/"$MSG" --force'
alias ftr='echo "find file to restore : " && read MSG && duply den list | grep "$MSG"'
alias ddf='rm -rf /mnt/512/Image/duply/*.*; duply den backup full'
alias ddi='duply den backup inc'
alias yp='yadm push'
alias ys='yadm status --short'
alias yf='yadm ls-files | grep'
alias ycl='yadm gc --aggressive --prune'   #clean repo
alias yh='yadm hist'
alias yl='yadm log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias yli='yadm list | grep'
alias yco='yadm checkout'
alias ycom='yadm checkout master'
alias chill='mpv "http://streaming.radionomy.com/Chill-outRadio?lang=en-US%2cen%3bq%3d0.5"'
alias nf='neofetch --image ~/term.png'
 alias ya='yadm add'
 alias um='udevil monitor'
 alias ss='sag'
alias yr='yadm rm --cached'
alias gpf='git push origin master --force'
alias gplf='git fetch --all && git reset --hard origin/master && git pull origin master' #ForcePull
# alias gco='git checkout'
alias gcom='git checkout master'
alias glr='git pull --rebase'
# alias gg='gds;gau;gcm;gpo'
# alias gg='yc;yp'
alias gg='dotfiles commit -a -m "Update";dotfiles push'
alias ggp='pass git commit -a -m "Update";pass git push'
alias gds='cd /home/den/.dotfiles.git'
alias gse='cd /home/den/01/01.Serial'
alias gki='cd /home/den/01/02.Kino'
alias gh='cd /home/den'
alias gb='cd /home/den/bin'
alias grm='git rm -f -r --cached'
alias gau='git add -u' #remove deleted files
alias gaf='git add -f'
alias gcm='git commit -m "some changes"'
alias gpo='git push origin'
alias gl='git pull origin master'
alias ypl='yadm pull origin master'
alias gd='git diff'
alias gt='git commit'
alias gi='git init'
#alias gb='git branch'
alias gs='git status'
# alias gc='git clone'
alias gcd='git clone git@gitlab.com:Zoomlin/dotfiles.git'
alias gdi='git clone git@gitlab.com:Zoomlin/dotfiles.git && ./install'
alias gcr='git clone --recursive'

# archlinux services
alias enables="sudo systemctl enable"
alias scl="systemctl list-unit-files"
alias scf="systemctl --failed"
alias scr="sudo systemctl daemon-reload"
alias disables="sudo systemctl disable"
alias start="sudo systemctl start"
alias reload="sudo systemctl daemon-reload"
alias restart="sudo systemctl restart"
alias status="sudo systemctl status"
alias stop="sudo systemctl stop"
alias poweroff="sudo systemctl poweroff"
alias reboot="sudo systemctl reboot"
alias suspend="sudo systemctl suspend"
#git extended
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

# My

alias fih='grep -rnw -C 2 ~/ -e '
alias fid='grep -rnw -C 2 ~/dotfiles -e '
alias fir='sudo grep -rnw -C 3 / -e '
alias sdl='scdl -l'
alias kino='mpf "/home/den/01/02.Kino"'
alias clip='mpf "/home/den/01/04.Clips"'
alias serial='mpf "/home/den/01/01.Serial"'
alias mult='mpf "/home/den/01/04.Mult"'
alias music='mpf "/home/den/01/03.Music"'
alias vol='pkill volumeicon;volumeicon &'
alias rc0='rm -f ~/.zshrc; ln -s /home/den/dotfiles/zsh/.zshrc22 ~/.zshrc; sz'
alias rc='rm -f ~/.zshrc; ln -s /home/den/dotfiles/zsh/.zshrc2 ~/.zshrc; sz'
alias xo='xdg-open'
alias mo='mimeo'
alias rf='rm -f'
alias rd='rmdir'
alias sxo='sudo xdg-open'
alias bv='browser-vacuum'
alias jv= 'sudo journalctl --vacuum-time=1seconds'
alias fl='sudo fdisk -l'
alias so='sudo'
alias ok='xdg-open https://ok.ru'
alias rtr='xdg-open http://free-rutor.org/top'
# alias vk='xdg-open https://vk.com'
# alias yt='xdg-open http://www.youtube.com/'
alias ml='xdg-open https://e.mail.ru/messages/inbox/'
alias sbrf='xdg-open https://online.sberbank.ru/CSAFront/index.do'
# alias ya='xdg-open https://yandex.ru'
alias wiki='xdg-open https://wiki.archlinux.org/'
# alias aur='xdg-open https://aur.archlinux.org//'
alias fig='figlet -f 3d'
alias yg='you-get -i '
alias stow='stow -d ~/dotfiles'
alias sw='gds;stow'
alias usw='gds;stow -D'
alias swr='gds;_ stow -t / root'
alias stowall='sw zsh vim other awesome altyo termite terminator bin vifm theme ncmpcpp conky mpd minidlna'
alias ali='alias |grep'
#alias k=z
#alias kk=zz
alias grep='grep --color=auto --binary-files=without-match --devices=skip'
alias mv='nocorrect mv -i'
alias fv='tree -a -l -f -i ~/Video G'
alias lv='ll -L -R -t -r ~/Video'
alias la='ll -L -R -t -r ~/Music'
alias fa='tree -a -l -f -i ~/Music G'
#alias ls='ls -F --color=auto'
# [[ -f /usr/bin/grc ]] && {
#   alias ping="grc --colour=auto ping"
#   alias traceroute="grc --colour=auto traceroute"
#   alias make="grc --colour=auto make"
#   alias diff="grc --colour=auto diff"
#   alias cvs="grc --colour=auto cvs"
  # alias netstat="grc --colour=auto netstat"
# }
# alias logc="grc cat"
# alias logt="grc tail"
# alias logh="grc head"
# alias df='df -h'
# alias du='du -h'

alias -s {avi,mpeg,mpg,mov,m2v,flv,mkv,ts,mp4}=mpv
alias -s {flac,mp3,cue,m3u,pls,ogg,ape,mpc}=mpv
alias -s {rar,tar.bz2,bz2,gz,tar,tgz,tbz2,7z,tbz,zip,tar.gz}=dtrx
alias -s {png,jpg}=xdg-open
alias -s {pdf,djvu}=zathura
alias -s txt=$PAGER
alias -s py=python
alias -s {ogg,mp3,wav,wma}=mpv
alias -s {conf}=vim
autoload -U pick-web-browser
alias -s {html,htm}=pick-web-browser
alias lls="ls -l | sed -e 's/--x/1/g' -e 's/-w-/2/g' -e 's/-wx/3/g' -e 's/r--/4/g'  -e 's/r-x/5/g' -e 's/rw-/6/g' -e 's/rwx/7/g' -e 's/---/0/g'
"alias dirf='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'
alias -g H="| head"
alias -g D="| dmenu -i -fn 'Input Mono-14' -nb '#121212' -nf '#395573' -sb '#5e468c' -sf '#cf4f88'"
alias -g T="| tail"
alias -g G="| grep"
alias -g F="| fzf"
alias -g P="| fpp"
alias -g L="| less"
alias -g M="| most"
alias -g B="&|"
alias -g HL="--help"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -s fb2='simple-fb2-reader -b'
alias fb2='simple-fb2-reader -b'
alias flactomp3='parallel ffmpeg -i {} -qscale:a 0 {.}.mp3 ::: *.flac'
alias catv='cat /home/den/Video/video | fzf | sh'
alias catm='cat /home/den/Music/music | fzf'
alias cata='cat /home/den/adirs | fzf | sh'
alias mpf='DISPLAY=":0.1" mpv -fs 2>/dev/null'
# alias mm=' mpv *.*'
alias fm='vifm'
alias ao='eval `fzf < /home/den/adirs`'
alias lvf='vim $(locate / | fzf)'
alias vv='eval `fzf < /home/den/video`'
alias mpvv=' mpv *.mkv'
alias rest='sudo dar -wa -R / -x /media/HD/Images/dar/dbpFull  -g'
alias ai="archlinuxinfo2"
alias V='vim'
alias sv='sudo vifm'
alias sg='sudo gvim'
# alias cc='sudo pacaur -Rsn $(pacman -Qdtq)' #Ну а удалить всех так называемых «сирот» можно командой
alias mg='makepkg -Acs'
alias d1='bspc monitor DVI-1 -d 4'
alias d0='export DISPLAY=:0.0'
hash -d down=/media/HD/Downloads/11/11
hash -d iso=/media/1.5tb/iso
alias mkpass="head -c6 /dev/urandom | xxd -ps"
alias -g G='| ag -i'
alias -g S='| sh'
alias -g ND='*(/om[1])' # newest directory
alias -g NF='*(/om[1])' # newest file
alias rz='source /home/den/.zshrc'
alias mf='MegaFuse'
alias sx='startx'
alias ko='killall'
alias pk='pkill'
alias resol='xdpyinfo | grep dimensions'
alias wnm="xprop |awk '/WM_CLASS/{print $4}'"
alias wnr="xprop | grep -i role"
alias yv='youtube-viewer'
alias ytdl="youtube-dl -f mp4 -o '%(title)s.%(ext)s'"


# PacAUR & Yaourt

alias io='pacaur -Si'
alias op='sudo pacman-optimize && sudo sync'
alias pkgs='rm -f /home/den/pkgs;pacaur -Qq > ~/pkgs'
alias p-i='yay -S'
alias p-l='aura -Ql'
alias ab='sudo aura -B'
alias abr='sudo aura -Br'
alias p-o='_ yay -Rs'
alias p-oo='_ yay -Rdd'
alias y-ii='pacaur -s'
# alias p-ii='pac --noedit'
alias p-ii='yay'
alias yi='yaourt -S'
alias yin='yaourt -S --noconfirm'
# alias ys='yaourt -Ss'
# alias pp='pacaur -Syu --noedit'
# alias yy='pacaur -aSyu'


alias bm="bashmount"
# alias cs="cat ~/configs | pick | xargs gvim"
alias ra="cat ~/radio | pick | xargs mpv"
alias fs="cat ~/folders | pick | xargs spacefm"
alias lo="cat ~/links | pick | xargs palemoon"


# Aura

# alias y-ii='aura -As'
# alias pu="sudo aura -U"
alias cc='yay -c' #Ну а удалить всех так называемых «сирот» можно командой
# alias p-c='sudo aura -Qdt' #Посмотреть, какие пакеты не используются ничем в системе можно командой
# alias p-y='sudo aura -Syy'
alias yy='sudo aura -Akua'
# alias p-ii='sudo aura -Ss'
# alias p-i='sudo aura -AS'
alias p-c='yay -Sc'
# alias p-o='sudo aura -Rns'
# alias y-o='sudo aura -Rns'
alias p-d='sudo aura -Rdd'
 alias pp='yay -Syu'
 alias ppf='sudo pacman -Syu --force'


# CD
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias cd.='cd ..'
alias cd..='cd ..'

# CP
alias cp='cp -r'
alias cpp='rsync -PrlpE'
alias cpz='rsync -PrlpEz'

# LS
alias lsn=" ls -al --time-style=+%D | grep `date +%D` "
# alias ls='ls++ --color=auto --show-control-chars --group-directories-first -AhXF'
alias ll='ls++ --color=auto --show-control-chars --group-directories-first -AlhXF'
alias lll='ls -lhoGg'
alias lsd='ls -ld .*' # увидеть dot-файлы
alias l='ls -Xp --color=auto'

# Various
alias aria='aria2c -c -x 10 -s 10 -k 10M'
alias burniso='cdrecord -eject dev=1,0,0 -data'

# Git
# alias g='git'
alias gst='git status'
#alias gl='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
#alias gd='git diff | mate'
alias gdv='git diff -w "$@" | vim -R -'
# alias gc='git commit -m'
alias gca='git commit -v -a'
#alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'


alias dmesg=dmesg -exL

# fasd aliases
alias o='a -e xdg-open' # quick opening files with xdg-open
alias m='f -e mpv'
alias p='fasd_cd -d'
alias i='fasd -fe vim'
#alias ed='fasd -de e'
#alias ef='fasd -fe e'
#alias vd='fasd -de vim'
#alias vz='fasd -fe vim'

# Set up auto extension stuff
#alias -s html=$BROWSER
#alias -s org=$BROWSER
#alias -s php=$BROWSER
#alias -s ru=$BROWSER
#alias -s net=$BROWSER
#alias -s png=feh
#alias -s jpg=feh
#alias -s gif=feg
#alias -s sxw=soffice
#alias -s doc=soffice
#alias -s gz='tar -xzvf'
#alias -s bz2='tar -xjvf'
#alias -s java=$EDITOR
#alias -s txt=$EDITOR
#alias -s PKGBUILD=$EDITOR
#
#alias ls='ls --color=auto --group-directories-first'
#alias cp='cp -i'
#alias mv='mv -i'
#alias grep='grep --color=auto '
#alias sbcl="rlwrap -pred -r -s 65536 -m -i -c -D 2 sbcl"
#alias rm='rm -I'
#alias vi='vim'
#alias enable_vbox='sudo modprobe vboxdrv vboxnetadp vboxnetflt vboxpci'
#alias disable_vbox='sudo modprobe -r vboxdrv vboxnetadp vboxnetflt vboxpci'
#alias speed_test='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
#alias mpd_start='systemctl start mpd.service mpdscribble.service --user'
#alias mpd_stop='systemctl stop mpd.service mpdscribble.service --user'
#alias wifi_on='nmcli radio wifi on'
#alias wifi_off='nmcli radio wifi off'
alias pl='find -L "`pwd`" -iregex ".*.flac" -o -iregex ".*.mp3" -o -iregex ".*.m4a"|sort> .pls'

#MPC aliasses
alias mpcs='mpc rm now; mpc save now'
alias cx='cmatrix -aBls'
alias bgf='fbsetbg -f'
alias mpcr='mpc rm now'
alias mpcl='mpc load now; termite -e ncmpcpp'
alias mpcc='mpc clear'
alias mpcu='mpc update'


alias trl='transmission-remote -l'
# alias tra='transmission-remote -a --start-paused'
alias tra='transmission-remote -a'
alias trg='transmission-remote -a -g'
alias trt='transmission-remote -t'
alias trs='transmission-remote -s'
alias trS='transmission-remote -S'
alias trd='transmission-daemon -c /home/den/Desktop/torrents -w "/media/1.5TB/Downloads"'


alias ej="so udiskie-umount -a"
alias ue="so udiskie-umount -a -s"
alias ma='sudo mount -a'
alias xev='xev |grep keysym'
alias pacback='aura -Qqe | grep -v "$(pacman -Qmq)" > ~/pklist.txt'
alias lv="vim -c \"normal '0\""
alias ak='awesome -k'
alias sz='. /home/den/.zshrc'
alias mu='sshfs den@192.168.137.2:/media/hdd /mnt/vuuno -o nonempty -o allow_other'
alias umu='fusermount -u /mnt/vuuno'
alias tab='xmodmap -e "keysym Scroll_Lock  = Tab" 2>/dev/null'
alias esc='xmodmap -e "keysym Pause = Escape" 2>/dev/null'
#alias se='cd /home/den/blog/output; python -m pelican.server'
#alias pn='cd /home/den/blog; pelican -t ~/pelican-themes/pelican-bootstrap3'
#alias fu='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias c='colorize_via_pygmentize'
paclist() {
  LC_ALL=C pacman -Qei $(pacman -Qu|cut -d" " -f 1)|awk ' BEGIN {FS=":"}/^Name/{printf("\033[1;36m%s\033[1;37m", $2)}/^Description/{print $2}'
}

ccopy(){ cp $1 /tmp/ccopy.$1; }
alias cpaste="ls /tmp/ccopy.* | sed 's|/tmp/ccopy.||' | xargs -I % mv /tmp/ccopy.% ./%"
alias -s {txt,log,list}=vim

alias night="xgamma -rgamma 0.64 -ggamma 0.51 -bgamma 0.69"
alias day="xgamma -rgamma 1 -ggamma 1 -bgamma 1"
alias tmp='cd $(mktemp -d)'
alias cdo='cd $OLDPWD'
alias df="pydf"
alias gm="/home/den/01/1.Audio/2listen"
alias wl="feh --bg-fill ~/wall.jpg &"
alias wl0="feh --bg-fill ~/wall1.jpg &"

# удаляем пустые строки и комментарии

alias delspacecomm="sed '/ *#/d; /^ *$/d' $1"

# misc
alias _='sudo'
alias mc='mc -cu'
alias tmux='TERM=screen-256color tmux'
alias kernel='downgrader -l linux'
alias restdirs='_ fsarchiver -o restdir /media/Videonew/Images/den.fsa /'
alias savedirs='rm -f -r /home/den/.cache/mozilla/firefox/xq08t8w5.default/cache2; _ fsarchiver -o savedir /media/Videonew/Images/den.fsa /home/den /etc /boot'
alias fsa1='_ fsarchiver -A -ov -z 7 --exclude /home/den/.kodi --exclude /home/acestream --exclude /home/den/.ACEStream --exclude=/home/den/Downloads --exclude /systemrescuecd-x86-5.3.2.iso --exclude=/var/cache/pacman --exclude=/home/den/.cache --exclude=/srv --exclude=/var/log/journal savefs /mnt/512/Image/image.fsa /dev/nvme0n1p4 /dev/nvme0n1p1'
alias savesddRegular3='_ fsarchiver -A -o -z 4 --exclude=/var/cache/pacman --exclude=/home/den/.cache/mozilla --exclude=/home/den/.cache/deadbeef --exclude=/srv --exclude=/home/den/Gdrive --exclude=/var/log/journal savefs /media/Videonew/Images/sdd3.fsa /dev/sdd3'
#
# alias restsdb3='sudo fsarchiver restfs /media/Videonew/Images/sdc3.fsa id=0,dest=/dev/sdb3'

# GLOBAL ALIASES

alias -g C='| wc -l'
alias -g G='| grep'
alias -g L='| less'
alias -g M='| more'
alias -g S='&> /dev/null'
alias ugrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias rfs='sudo systemctl daemon-reload;sudo systemctl restart remote-fs.target;sudo systemctl restart local-fs.target' #reload fstab

# l() {
  # "$@" >/dev/null &
  # disown
# }
alias pcopy='lpass show -c --password'
alias lin='lpass login zoomlin@mail.ru'
alias lout='lpass logout'
alias lls='lpass ls G'
alias treee="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias j=z
alias jj=zz
alias err='journalctl -p err'
alias au='agedu -s ~/ -w'
alias tg='telegram-cli -N'
alias plz='sudo $(fc -ln -1)'
alias bb='cln;sudo bleachbit --clean system.rotated_logs system.cache system.localizations system.trash ; sudo paccache -vrk 2 || return 0'
alias bb2='bleachbit --clean thumbnails.cache'
alias meb='_ mount -o iocharset=utf8,codepage=1251 /dev/sdd /mnt/usb/'
alias g='googler -n 7 -c ru -l ru'
alias aur='ser -p aur'
alias ddg='ser -p duckduckgo'
# alias ya='ser -p yandex'
alias yt='ser -p youtube'
alias ntp='sudo ntpdate ntp.ix.ru'

function mypushd {
    pushd "${@}" >/dev/null;
    dirs -v;
}
function mypopd {
    popd "${@}" >/dev/null;
    dirs -v;
}
alias d='dirs -v'
alias p='mypushd'
alias o='mypopd'
alias pk='_ pacman-key --init;_ pacman-key --populate archlinux;_ pacman-key --refresh-keys'
alias weather="curl http://wttr.in/Sochi"
alias pwgen="tr -dc a-zA-Z0-9 < /dev/urandom | head -c 8 | xargs"
alias myip="curl ipinfo.io"
alias bgg="gifrc ~/bg.gif &"
alias ccc="cln;cc;p-c;bb"
alias uzim="zmanage update"
alias scrot="imlib2_grab ~/screen-$(date +%s).png"
alias video='sudo updatedb;mpv "$(locate /home/den/01/2watch/0_0 | fzf)"'
alias music='sudo updatedb;mpv "$(locate /home/den/01/1.Audio/2listen | fzf)"'
alias mdl='mpv http://air.radiorecord.ru:8102/mdl_320'
alias deep='mpv http://air.radiorecord.ru:8102/deep_320'
alias gbp="rclone deletefile drive:Linux/Images/image.fsa;rclone copy /mnt/512/Image/image.fsa drive:Linux/Images"
alias rg='rg -i -uu  --colors '"'"'path:fg:magenta'"'"' --colors '"'"'match:fg:red'"'"' --colors '"'"'line:fg:white'"'"
alias wr='sudo systemctl restart NetworkManager'
alias upmirrors='sudo reflector --score 100 --fastest 25 --sort rate --save /etc/pacman.d/mirrorlist --verbose'
alias sr='systemctl restart serviio'
alias wr='sudo systemctl restart NetworkManager'
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias ag='ag --follow --hidden'
alias rg='rg --hidden --smart-case --ignore-file "/home/den/.ignore"'
alias mine='sudo chown -R "$USER"'
alias ace='acestreamengine --client-console --cache-dir /mnt/512/Cache'

