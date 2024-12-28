# The following lines were added by compinstall
zstyle :compinstall filename '/home/juned/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=900000
SAVEHIST=900000
# End of lines configured by zsh-newuser-install
alias ls='ls --color=auto'
alias dtfs="git --git-dir=$HOME/projects/dotfiles/ --work-tree=$HOME"
PROMPT='%B%F{blue}%2~%f %#'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
export PATH=$PATH:$HOME/.local/bin
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export PATH=$PATH:$HOME/tools/flutter/bin
gpgconf --launch gpg-agent
export LC_ALL="en_US.UTF-8"
bindkey -v
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files'
    export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

