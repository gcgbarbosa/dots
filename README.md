# George's dotfiles

## Vim configs

Based on:
- https://realpython.com/vim-and-python-a-match-made-in-heaven/

Also got input from the following places:

- https://medium.com/swlh/8-vim-tricks-that-will-take-you-from-beginner-to-expert-817ff4870245
- https://danielmiessler.com/blog/vim-configuration-update-2019-version/

Check the documentation for vim [here](vim-doc.md)

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

## coc.nvim

It requires both `yarn` and `nvm`:

```
curl -sL install-node.now.sh/lts | sh
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
```

### pythoon support

Check this repo for python support: `https://github.com/neoclide/coc-python`.

### metals

Matals is a language server for scala.
It enables better scala related languange completion.

To enable it open `vim` and type `:CocConfig` and paste the following:

```
{
  "languageserver": {
    "metals": {
      "command": "metals-vim",
      "rootPatterns": ["build.sbt"],
      "filetypes": ["scala", "sbt"]
    }
  }
}
```
  
Then make sure you have `metals-vim` executable acessible in your `$PATH`.

The following command should do the job:

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
Scala 2.12.4 is the version used by `processors`.

To simply install the last version of metals you can do:

```
:CocInstall coc-metals
```

### C support

First install the language server using:

In manjaro this is done by `pacman -S clang`.

`
brew install llvm
`

Do the same thing done for scala to add suport for C.

```
"languageserver": {
  "clangd": {
    "command": "clangd",
    "args": ["--background-index"],
    "rootPatterns": ["compile_flags.txt", "compile_commands.json", ".vim/", ".git/", ".hg/"],
    "filetypes": ["c", "cpp", "objc", "objcpp"]
  }
}
```

# Step by step guide to how I built the config

1. Install the extesion manager Plug.

2. Add .vimrc file from this repo to `home`folder.

3. Enter `vim` and inside vim's command line type `:PlugInstall`
