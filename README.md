# George's dotfiles

## Vim configs

Based on:
- https://realpython.com/vim-and-python-a-match-made-in-heaven/

Also got input from the following places:

- https://medium.com/swlh/8-vim-tricks-that-will-take-you-from-beginner-to-expert-817ff4870245
- https://danielmiessler.com/blog/vim-configuration-update-2019-version/

Check the documentation for vim [here](vim-doc.md)

## Terminal configs

Color schemes itself are just overwrite ANSI-color values in Terminal.app,
but you have to enable color formatting in command line utilities to see any formatted output.

Todo it using homebrew:

```
brew install grc
echo 'source "`brew --prefix`/etc/grc.bashrc"' >> ~/.bash_profile
source ~/.bash_profile
```

### Color schemes

Color schemes come from:
- https://github.com/cmilr/Git-Beautify-For-MacOS-Terminal

## Vim for Scala Resources

I am currently building my environment for scala.
These are some resources that I am planning to use:

- https://scalameta.org/metals/docs/editors/vim.html
- http://seenaburns.com/vim-setup-for-scala/
- https://medium.com/@alandevlin7/neovim-scala-f392bcd8b7de
- https://github.com/Shougo/deoplete.nvim
- https://andrew.stwrt.ca/posts/vim-ctags/

### Ctags

Ctags does not support scala, but it turned out to be very ease to setup.
Just copy `.ctags` from this repo to `~` (home) and voila.
It shoud be working.
You press `ctrl+]` to jump into a function definition.
To go back you press `ctrl+t`.

## Packaged manager

I need to change the package manager to `plug` because `deoplete` was presenting only two options
and I picked `plug` because it was first in the list.

The installation process of `plug` is very simple. Run:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Deoplete

To make deoplete work just add the following to your `.vimrc`:

```
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
```
