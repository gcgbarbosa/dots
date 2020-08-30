# Lines configured by zsh-newuser-install
#
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gcgbarbosa/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# yarn stuff
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

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

# fix bug with clearning stuff
#export TERMINFO=/usr/share/terminfo

# enable coursier
export PATH="$PATH:/home/gcgbarbosa/.local/share/coursier/bin"

# enable starship
eval "$(starship init zsh)"
# turn off all beeps
unsetopt BEEP

# zplug plugin manager
source ~/.zplug/init.zsh
# Async for zsh, used by pure
zplug "mafredri/zsh-async", from:github, use:"async.zsh"
# supports oh-my-zsh-plugins
zplug "plugins/git", from:oh-my-zsh
# example of how to import stuff cfrom oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
# makes directory listings more readable
zplug "supercrabtree/k"
# show a message "you should use" for an alias
zplug "MichaelAquilina/zsh-you-should-use"
# install z to jump into directories
zplug "agkozak/zsh-z"
# autocompletion
zplug "marlonrichert/zsh-autocomplete"
# install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
#
#
#zplug load --verbose
zplug load

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/gcgbarbosa/.sdkman"
[[ -s "/home/gcgbarbosa/.sdkman/bin/sdkman-init.sh" ]] && source "/home/gcgbarbosa/.sdkman/bin/sdkman-init.sh"
