# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kamil/.zshrc'


autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export XDG_DATA_DIRS="$HOME/.local/share/my-apps/share:$XDG_DATA_DIRS"

export EDITOR="nvim"
export VISUAL="nvim"

eval "$(starship init zsh)"
