# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/akash/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

[[ -f $HOME/.cargo/env ]] && . "$HOME/.cargo/env"


alias ls='ls --color=auto'
alias grep='grep --color=auto'

# ZLE keybindings for reverse history search
autoload -Uz history-search-end

zle -N history-beginning-search-backward-end \
	history-search-end
zle -N history-beginning-search-forward-end \
	history-search-end

bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

export GOPATH="$(go env GOPATH)"

# cs143 setup
export PATH="$PATH:$HOME/cool/bin"
# neofetch

# doom emacs setup
export PATH=$PATH:$HOME/.emacs.d/bin

# emacs maximize
alias emacs='emacs -mm'

# gobin setup
export PATH="$PATH:$GOPATH/bin"

# conda setup
[[ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]] && . $HOME/miniconda3/etc/profile.d/conda.sh

# dotfile management
alias dotman='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"
