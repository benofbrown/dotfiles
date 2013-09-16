bindkey -v
source ~/.zsh/git-prompt/zshrc.sh
source ~/.zsh/functions/*.sh
PROMPT='%F{green}%m%F{cyan} %~ $(git_super_status)
%f%# '

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt INTERACTIVE_COMMENTS
setopt AUTO_PUSHD
setopt PUSHD_TO_HOME
setopt PUSHD_IGNORE_DUPS

test -e ~/.aliases && . ~/.aliases
test -e ~/.funcs && . ~/.funcs

bindkey '\e.' insert-last-word

bindkey -M vicmd "j" vi-down-line-or-history
bindkey -M vicmd "k" vi-up-line-or-history

fpath=(~/.zsh/completion $fpath)
autoload -U compinit && compinit
zstyle ':completion:*' menu select=2
zstyle ":completion:*:descriptions" format "%B%d%b"

export EDITOR=vi

export GPG_TTY=$TTY

function precmd()
{
  case $TERM in
    screen*)
      printf "\033k%s\033\\" zsh
    ;;
  esac
}

export PATH=~/bin/:$PATH
