# George's dotfiles

## Ctags

Ctags does not support scala out of the box.
To enable it,
copy `.ctags` from this repo to `~` (home) and voila.
It shoud be working.
You press `ctrl+]` to jump into a function definition.
To go back you press `ctrl+t`.

### How to run Ctags

## Vim

I need to give credits to:
- https://realpython.com/vim-and-python-a-match-made-in-heaven/
- https://medium.com/swlh/8-vim-tricks-that-will-take-you-from-beginner-to-expert-817ff4870245
- https://danielmiessler.com/blog/vim-configuration-update-2019-version/

**scala resources**

Resources used to build the scala environment:

- https://scalameta.org/metals/docs/editors/vim.html
- http://seenaburns.com/vim-setup-for-scala/
- https://medium.com/@alandevlin7/neovim-scala-f392bcd8b7de
- https://github.com/Shougo/deoplete.nvim
- https://andrew.stwrt.ca/posts/vim-ctags/

### Installing plug





## Shell

To customize the shell I use powerline.

- https://github.com/powerline/powerline

After installing it I added the following to my `.bashrc`.

```
# enabling powerline
export TERM="screen-256color"
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /home/gcgbarbosa/anaconda3/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh
fi
```

Given that my python `site-packages` was
`/home/gcgbarbosa/anaconda3/lib/python3.7/site-packages`.

## Tmux

Tmux is both my mom and my dad.

The surprisingly new thing here is powerline:

```
source /home/gcgbarbosa/anaconda3/lib/python3.7/site-packages/powerline/bindings/tmux/powerline.conf
```
