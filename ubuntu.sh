# go
sudo apt install golang-go

# https://pnpm.io/
curl -fsSL https://get.pnpm.io/install.sh | sh -

# better faster apt
sudo apt install nala

# <https://github.com/ClementTsang/bottom>
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.10.2/bottom_0.10.2-1_amd64.deb
sudo dpkg -i bottom_0.10.2-1_amd64.deb
rm bottom_0.10.2-1_amd64.deb

# https://github.com/papis/papis
uv tool insatll papis

# requires go
# - <https://github.com/jesseduffield/lazydocker>
go install github.com/jesseduffield/lazydocker@latest

# - <https://github.com/Textualize/toolong>
uv tool install toolong

#- <https://github.com/Syllo/nvtop>
sudo apt install nvtop

# - <https://github.com/joouha/euporie>
uv tool install euporie

# https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# fzf fuzzy finder
sudo apt install fzf

# rg recursively search directories
sudo apt install ripgrep

# https://github.com/sharkdp/fd
sudo apt install fd-find

# https://github.com/aristocratos/btop
sudo apt install btop

# posting is an http client on the cli
uv tool install --python 3.12 posting

# lazyjournal
curl -sS https://raw.githubusercontent.com/Lifailon/lazyjournal/main/install.sh | bash

######################## EXTRAS
# <https://github.com/extrawurst/gitui>
# <https://activitywatch.net/>
