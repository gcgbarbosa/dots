###################### ALIASES

# i dont remember 
alias idr='history 1 | grep'

# pnpm default
alias npm='pnpm'

# just
alias j=just

# autocompletion for just
alias jac='source <(just --completions zsh)'

# add nvim 0.10!
export PATH="$PATH:/opt/nvim-linux64/bin"
alias vim=nvim
alias vi=nvim

## exa
alias l='exa'
alias la='exa -a'
alias ll='exa -lah'
alias ls='exa --color=auto'

# webcam aliasese
alias wcd='sudo rmmod v4l2loopback'
alias wce='sudo modprobe v4l2loopback exclusive_caps=1 max_buffers=2'
alias wclc='gphoto2 --list-config'
alias wcr='gphoto2 --stdout --capture-movie | ffmpeg -hwaccel nvdec -c:v mjpeg_cuvid -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video4'
alias wcr-cpu='gphoto2 --stdout --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video4'
alias wc-obs='sudo modprobe v4l2loopback exclusive_caps=1 card_label="OBS Virtual Camera"'

# keyboard
alias kb-int='setxkbmap -layout us -variant intl'
alias kb-en='setxkbmap -layout us'

############################ third party installs

# mise environment manager
eval "$(~/.local/bin/mise activate zsh)"

# Google Cloud SDK.
if [ -f '/opt/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/gcloud/google-cloud-sdk/path.zsh.inc'; fi
#  shell command completion for gcloud.
if [ -f '/opt/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

# add go
export PATH=/usr/local/go/bin:$PATH
export PATH=$PATH:$HOME/go/bin

# direnv
eval "$(direnv hook zsh)"

# add NVM to manage NPM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# add structurizr
export PATH="/opt/structurizr:$PATH"

# Make terminal compatible
export TERM=xterm-256color

# Add pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Add local bins to path
export PATH="/home/gcgbarbosa/.local/bin:$PATH"

## make pytorch RNN's replicable
# explanation here: https://pytorch.org/docs/stable/generated/torch.nn.RNN.html#torch.nn.RNN
export CUBLAS_WORKSPACE_CONFIG=:16:8

# enable starship
eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="/home/gcgbarbosa/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


##
# FZF does not use ripgrep by default
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

# turn off all beeps
unsetopt BEEP

# set the editor for cron
export EDITOR=nvim

# set GCC version to 7
# export CC=gcc-7 CXX=g++-7

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


