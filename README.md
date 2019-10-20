Installation:

```
git clone git://github.com/morawskim/dotvim.git ~/.vim
```

Create symlinks:
```
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```

Switch to the `~/.vim` directory, and fetch submodules:
```
cd ~/.vim
git submodule init
git submodule update
```

More info at http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

## Install new plugin

https://github.com/robbles/logstash.vim.git

```
git submodule add http://github.com/<username>/<repo>.git bundle/<name>
git add .
git commit -m "Install <name> bundle as a submodule."
```