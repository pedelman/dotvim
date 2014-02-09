## dotvim

This is my daily vim configuration, I keep this up to date so that I can pull down my configuration on any machine I need. Feel free to copy anything from it you would like.

### Installation

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

This will open up a new vsplit and show you which libraries are getting installed.
