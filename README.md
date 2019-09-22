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
