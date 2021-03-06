##
# RZR does not use ripgrep by default
# We need to tel FZF to use ripgrep with FZF_DEFAULT
#
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

##
# Lines configured by zsh-newuser-install
#
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gcgbarbosa/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/gcgbarbosa/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/gcgbarbosa/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/gcgbarbosa/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/gcgbarbosa/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# enable starship
eval "$(starship init zsh)"
# turn off all beeps
unsetopt BEEP

# exa aliases
alias l='exa'
alias la='exa -a'
alias ll='exa -lah'
alias ls='exa --color=auto'

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# zplug plugin manager
source ~/.zplug/init.zsh
# Async for zsh, used by pure
zplug "mafredri/zsh-async", from:github, defer:0
# Load completion library for those sweet [tab] squares
zplug "lib/completion", from:oh-my-zsh
# supports oh-my-zsh-plugins
zplug "plugins/git", from:oh-my-zsh
# show a message "you should use" for an alias
zplug "MichaelAquilina/zsh-you-should-use"
# install z to jump into directories
zplug "agkozak/zsh-z"
# suggests commands as you type based on your history and completions
zplug "zsh-users/zsh-autosuggestions"
# 
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# autocompletion
#zplug "marlonrichert/zsh-autocomplete"
# install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
#
#zplug load --verbose
zplug load

