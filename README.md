# George's dotfiles

# zsh

Everything starts with good terminal.

I used [this](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) tutorial to install it.

## Ctags

Ctags does not support scala out of the box.
To enable it,
copy `.ctags` from this repo to `~` (home) and voila.
It shoud be working.
You press `ctrl+]` to jump into a function definition.
To go back you press `ctrl+t`.

## Vim

Here are some resurces I used to build this dotfiles:

- https://realpython.com/vim-and-python-a-match-made-in-heaven/
- https://medium.com/swlh/8-vim-tricks-that-will-take-you-from-beginner-to-expert-817ff4870245
- https://danielmiessler.com/blog/vim-configuration-update-2019-version/

Resources used to build the scala environment:

- https://scalameta.org/metals/docs/editors/vim.html
- http://seenaburns.com/vim-setup-for-scala/
- https://medium.com/@alandevlin7/neovim-scala-f392bcd8b7de
- https://github.com/Shougo/deoplete.nvim
- https://andrew.stwrt.ca/posts/vim-ctags/

### Installing plug

Plug is a plugin manager for vim.
The installation process of `plug` is very simple. Run:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- https://github.com/junegunn/vim-plug


To install plugins you do 

```
:PlugInstall
```

#### Language Support

##### Scala

- https://github.com/ckipp01/coc-metals

Then make sure you have `metals-vim` executable acessible in your `$PATH`.

The following command should do the job of installing metals-vim:

```
# Make sure to use coursier v1.1.0-M9 or newer.
curl -L -o coursier https://git.io/coursier
chmod +x coursier
./coursier bootstrap \
  --java-opt -Xss4m \
  --java-opt -Xms100m \
  --java-opt -Dmetals.client=coc.nvim \
  org.scalameta:metals_2.12:0.6.1 \
  -r bintray:scalacenter/releases \
  -r sonatype:snapshots \
  -o /usr/local/bin/metals-vim -f
```

Note that here we are installing metals 0.6.1,
which is not the latest but it is the version that supports scala 2.12.4.
Scala 2.12.4 is the version used by `processors`.https://github.com/scalameta/coc-metals

To simply install the last version of metals you can do:

- https://github.com/scalameta/coc-metals

##### Python

- https://github.com/neoclide/coc-python

##### C/C++

Add the following to your `:CocConfig`:

```
  "languageserver": {
    "clangd": {
      "command": "clangd",
      "rootPatterns": ["compile_flags.txt", "compile_commands.json"],
      "filetypes": ["c", "cpp", "objc", "objcpp"]
    }
  }
```

Note that you need `clang` installed.

##### Web development

Install the following plugins for coc:

```
:CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css
```

coc-tsserver: provides autocompletion for typescript
coc-esslint: provides linting for javascript
coc-json: provides json autocompletion
coc-prettier: provides a wrapper to prettier
coc-css: language server for css

## Shell

To customize the shell I use powerline.

- https://github.com/powerline/powerline

zsh seems to automaticaly detect powerline.

## Tmux

Tmux is both my mom and my dad.

The surprisingly new thing here is powerline:

Put this inside your .tmuxrc:

```
source /home/gcgbarbosa/anaconda3/lib/python3.7/site-packages/powerline/bindings/tmux/powerline.conf
```
