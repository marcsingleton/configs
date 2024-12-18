# display
export PS1='%n%F{cyan}@%f%m %F{green}[%3~]%f$ '
export LSCOLORS=fxgxcxdxbxegedabagacad

# path
export PATH=$PATH:/opt/local/bin/  # Add MacPorts directory

# aliases
alias ls='ls -G'
alias ll='ls -lG'
alias lA='ls -AG'
alias llA='ls -lAG'
alias less='less -M'  # Display extra info at prompt

# zsh history
# Not necessary for MacOS since configuration pulled from /etc/zshrc
export HISTFILE=~/.zsh_history
export SAVEHIST=1000
export HISTSIZE=2000

# tar
alias tar='tar --no-xattrs'  # Prevents inclusion of xattr headers which throws warnings on other systems
export COPYFILE_DISABLE=1  # Prevents creation of ._ members in archive which store MacOS specific information
