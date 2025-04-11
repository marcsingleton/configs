# display
export PS1='%n%F{cyan}@%f%m %F{green}[%3~]%f$ '
export LSCOLORS=fxgxcxdxbxegedabagacad

# words
WORDCHARS='*?_-.[]~=&;:!#$%^(){}<>'
backward-kill-path () {
    local WORDCHARS=${WORDCHARS}/
    zle backward-kill-word
    zle -f kill
}
zle -N backward-kill-path
bindkey '^[w' backward-kill-path

# path
export PATH=$PATH:/opt/local/bin/  # Add MacPorts directory

# aliases
alias ls='ls -G'
alias ll='ls -lG'
alias lA='ls -AG'
alias llA='ls -lAG'
alias less='less -M'  # Display extra info at prompt

# terminal
stty -ixon  # Disable START/STOP output control; prevents terminal driver from intercepting ^Q, ^S 

# zsh history
# Not necessary for MacOS since configuration pulled from /etc/zshrc
export HISTFILE=~/.zsh_history
export SAVEHIST=1000
export HISTSIZE=2000

# tar
alias tar='tar --no-xattrs'  # Prevents inclusion of xattr headers which throws warnings on other systems
export COPYFILE_DISABLE=1  # Prevents creation of ._ members in archive which store MacOS specific information
