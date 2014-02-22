## dotvim

This is my daily vim configuration, I keep this up to date so that I can pull down my configuration on any machine I need. Feel free to copy anything from it you would like.

### Installation

For a clean system, I usually clone down my repo and run the following.

```
mv dotvim .vim
```

If you already have a .vim folder, you can skip that step and just mv the ```vimrc``` file into the .vim folder, and proceed to symlink.

Since I keep my vimrc in the .vim folder, you will need to symlink ```.vimrc``` and ```.vim/vimrc```.

```bash
$ ln -s ~/.vim/vimrc ~/.vimrc
```

The next thing you will need to do is clone down Vundle. From the docs:

```bash
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

Now that you have vundle installed into your bundle folder, you will need to install the libraries.

Open up Vim, and in command mode, enter:

```
:BundleInstall
```

Or, from the command line, you can enter:

```
vim +BundleInstall +qall
```

This will open up a new vsplit and show you which libraries are getting installed.
