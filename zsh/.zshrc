export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ben"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
plugins=(vagrant svn-fast-info)
source $ZSH/oh-my-zsh.sh
unset GIT_PAGER LESS PAGER



bindkey -v
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

unsetopt hist_verify
unsetopt share_history

setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt INTERACTIVE_COMMENTS
setopt AUTO_PUSHD
setopt PUSHD_TO_HOME
setopt PUSHD_IGNORE_DUPS
setopt NO_BEEP

[[ -e ~/.aliases ]] && . ~/.aliases
[[ -e ~/.funcs ]] && . ~/.funcs

bindkey '\e.' insert-last-word

bindkey -M vicmd "j" vi-down-line-or-history
bindkey -M vicmd "k" vi-up-line-or-history

bindkey '^N' menu-complete
bindkey '^P' reverse-menu-complete

fpath=(~/.zsh/functions $fpath)
autoload -Uz load_functions
load_functions

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

export PATH=~/bin:~/.local/bin:~/.gem/ruby/2.1.0/bin:$PATH
