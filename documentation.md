# Step by step guide to how I built the config

- cmake is a requirement for YouCompleteMe

1. Install an extension manager

Here we are using vundle:

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

2. Add .vimrc file from this repo to `home`folder.

3. Enter `vim` and inside vim's command line type `:PluginInstall`

## Issues

If you are using macosx, make sure to install a new version of vim using brew. Also install python using brew to get the latest version of python as default:

```
brew install python vim
```

You shoud also install `cmake` using `brew install cmake`.

Even after installing everything aparently correctly, I was still getting an error from `YouCompleteMe`.
I solved the issue recompilig the source following the instructions:

```
# enters ycm folder
cd ~/.vim/bundle/YouCompleteMe
# execute the instalation script
/usr/bin/python install.py
```
