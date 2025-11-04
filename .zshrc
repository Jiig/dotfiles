# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="terminalparty"

# aliases
alias e="emacs -nw"
alias vim="nvim"
alias wifi="sudo impala"

plugins=(git)


# Path and *env

export PATH=~/.local/bin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl
