
##################################################################
# PATH SETUP 
##################################################################

# setting default editor
# export EDITOR="nvim"

# java on macosx 
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-1.8.jdk/Contents/Home" 

# Add local bins to path
export PATH="$HOME/.local/bin:$PATH"

# add nvim 0.10!
export PATH="$PATH:/opt/nvim-linux64/bin"

# add go
export PATH=/usr/local/go/bin:$PATH

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Added by Windsurf
export PATH="$HOME/.codeium/windsurf/bin:$PATH"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/gcgbarbosa/.docker/completions $fpath)

##################################################################
# ZPLUG
##################################################################

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
# zplug load --verbose
zplug load


##################################################################
# ZSH options 
##################################################################

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob notify
# turn off all beeps
unsetopt BEEP


##################################################################
# COMPLETIONS
##################################################################

# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit
# End of lines added by compinstall



##################################################################
# ALIASES
##################################################################

# kubernetes
alias kubectl="minikube kubectl --"

# top is bottom
alias htop='btop'

# generate commit message
# alias gcllm='git diff --staged | wl-copy'
gcllm() {
  # generate commit message
  local msg
  msg=$(
    echo "Generate a conventional commit message for <diff>$(git diff --staged)</diff>. The output will be passed directly to git commit -F -" \
      | llm \
      | sed '/```/d'
  )

  # print message
  printf "\nProposed commit message:\n---\n%s\n---\n" "$msg"

  # ask if we want to proceed
  printf "Proceed with commit? [y/N] " 
  read -r answer

  # move on
  if [[ $answer =~ ^[Yy]$ ]]; then
    # use a here-doc so newlines are preserved
    echo $msg | cb copy
    git commit -F <(printf "%s\n" "$msg")
  else
    echo "Commit aborted."
  fi
}

# i dont remember 
hgrep() {
  history 1 | grep --color=always -i "$1"
}
alias idk='hgrep'

# just
alias j=just
alias jl='just -l'

alias vim=nvim
alias vi=nvim

# exa (lsd) aliases - enable only if lsd is installed
if type lsd &> /dev/null; then
  alias l='lsd'
  alias la='lsd -a'
  alias ll='lsd -lah'
  alias ls='lsd --color=auto'
fi

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

# pnpm default - enable only if pnpm is installed
if type pnpm &> /dev/null; then
  alias npm='pnpm'
fi


##################################################################
# PROMPT & MISC
##################################################################

# enable starship
eval "$(starship init zsh)"

# mise environment manager
eval "$(~/.local/bin/mise activate zsh)"

# Google Cloud SDK.
if [ -f '/opt/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/gcloud/google-cloud-sdk/path.zsh.inc'; fi
#  shell command completion for gcloud.
if [ -f '/opt/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

# add NVM to manage NPM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# activate fzf
eval "$(fzf --zsh)"

# FZF does not use ripgrep by default
# We need to tel FZF to use ripgrep with FZF_DEFAULT
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
  export FZF_CTRL_T_COMMAND='rg --files --hidden --no-ignore-vcs --color=never'
fi

# if fd is available
if type fd &> /dev/null; then
  export FZF_ALT_C_COMMAND='fd --type d --hidden --no-ignore-vcs'
fi

# make pytorch RNN's replicable
# explanation here: https://pytorch.org/docs/stable/generated/torch.nn.RNN.html#torch.nn.RNN
export CUBLAS_WORKSPACE_CONFIG=:16:8
