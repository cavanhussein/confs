#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias ssh='ssh -Y'
alias tmux2='tmux -2 -f ~/.tmux.conf'
bindkey -v
bindkey '\e.' insert-last-word
bindkey '\^U' backward-kill-line
bindkey '^R' history-incremental-search-backward
export ALDB="local"
export GIT_EDITOR="vim"
