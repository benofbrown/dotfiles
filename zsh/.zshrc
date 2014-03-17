bindkey -v
source ~/.zsh/git-prompt/zshrc.sh
for func in ~/.zsh/functions/*.sh; do
  source $func
done
unset func

PROMPT_CO='✓'
PROMPT_CE='%?'
PROMPT='%F{green}%m [%(?,%F{green}$PROMPT_CO%f,%F{red}$PROMPT_CE%f)%F{green}] %F{cyan}%~ %f$(git_super_status)
%# '

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt INTERACTIVE_COMMENTS
setopt AUTO_PUSHD
setopt PUSHD_TO_HOME
setopt PUSHD_IGNORE_DUPS
setopt NO_BEEP

test -e ~/.aliases && . ~/.aliases
test -e ~/.funcs && . ~/.funcs

bindkey '\e.' insert-last-word

bindkey -M vicmd "j" vi-down-line-or-history
bindkey -M vicmd "k" vi-up-line-or-history

bindkey '^N' menu-complete
bindkey '^P' reverse-menu-complete

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
test -n "$TMUX" && test -x doge/bin/doge && doge/bin/doge
