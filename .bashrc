#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim=nvim
alias k=kubectl
alias tf=terraform

export do="--dry-run=client -o yaml"
export now="--grace-period=0 --force"

PS1='\[\e[38;5;59m\][\[\e[38;5;23;1m\]\u\[\e[0;38;5;59m\]@\[\e[38;5;24;1m\]\h\[\e[0;38;5;23m\] \W\[\e[38;5;59m\]]\[\e[0m\]\$ '

if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] && [ -z $(which sway) ] ; then
    exec sway
fi

export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:/usr/local/go/bin/

export EDITOR=nvim
export VISUAL=$EDITOR

export LIBVIRT_DEFAULT_URI=qemu:///system

if [ -z $TMUX ]; then
  exec /bin/tmux
fi

set -o vi
bind "\C-l":clear-screen
