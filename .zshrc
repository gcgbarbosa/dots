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

# enabling powerline
#export TERM="xterm-256color"
#powerline-daemon -q
#. /home/gcgbarbosa/anaconda3/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

# fix bug with clearning stuff
export TERMINFO=/usr/share/terminfo

# zplug plugin manager
source ~/.zplug/init.zsh
# Async for zsh, used by pure
zplug "mafredri/zsh-async", from:github, use:"async.zsh"
# example of how to import stuff cfrom oh-my-zsh
#zplug "lib/completion", from:oh-my-zsh
# # Syntax highlighting for commands, load last
zplug "zsh-users/zsh-syntax-highlighting", defer:2
# # suggests commands as you type based on your history and completions
zplug "zsh-users/zsh-autosuggestions"
# # makes directory listings more readable
zplug "supercrabtree/k"
# # more completitions
zplug "zsh-users/zsh-completitions"
# # Theme!
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
#
zplug load
