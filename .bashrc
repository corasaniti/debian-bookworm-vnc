# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "$(dircolors)"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'


# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i
alias exa='exa -l'

# prompt customizzation
# Black=30 Red=31 Green=32 Yellow=33 Blue=34 Purple=35 Cyan=36 White=37
# 01 light - 00 dark
# PS1="\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;36m\]\h \[\033[01;33m\]\w \[\033[01;32m\]\$ \[\033[00m\]"
# PS2=">"
# export DISPLAY LESS PS1 PS2

#neofetch
neofetch

