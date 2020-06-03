# Lines configured by zsh-newuser-install
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
#
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

# enabling powerline
export TERM="screen-256color"
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /home/gcgbarbosa/anaconda3/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh
fi

set -o vi

source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
