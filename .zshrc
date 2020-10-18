# The following lines were added by compinstall
zstyle :compinstall filename '/home/juned/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
# End of lines configured by zsh-newuser-install
alias ls='ls --color=auto'
alias dtfs="git --git-dir=/home/juned/projects/dotfiles/ --work-tree=/home/juned"
PROMPT='%B%F{blue}%2~%f %#'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
export PATH=$PATH:/home/juned/.local/bin
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
bindkey -v
