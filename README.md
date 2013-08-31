
# Lightsaber

Lightsaber is a rake installer for my vim configurations. It uses pathogen managed by git submodules. The goal is to be able to eventually have a nice elegant vim, perfect for coding ruby / rails / sinatra and easy to install.

## Install

Warning Existing Vim Users: I suggest moving all your configurations to a backup folder. This will not do it for you, yet.

Installation is done via rake. All you have to do is run

```
$ cd ~
$ git clone https://github.com/willywos/lightsaber.git
$ cd lightsaber
$ rake install
```

That's it. You should be able to fire up vim or mvim in the command prompt and start coding.

## Adding vim plugins (via git)

You can add vim plugins via a git url like this:

```
$ cd ~/lightsaber
$ rake add https://github.com/airblade/vim-gitgutter.git
```

It will look like this:

```
Installing https://github.com/airblade/vim-gitgutter.git
git submodule add https://github.com/airblade/vim-gitgutter.git vim/bundle/vim-gitgutter
Cloning into 'vim/bundle/vim-gitgutter'...
remote: Counting objects: 497, done.
remote: Compressing objects: 100% (268/268), done.
remote: Total 497 (delta 162), reused 453 (delta 125)
Receiving objects: 100% (497/497), 95.54 KiB, done.
Resolving deltas: 100% (162/162), done.
Completed vim-gitgutter
```

## Updating (via git)

If you need to update lightsaber, you just go to where you installed lightsaber and run git pull and then rake.
You'll get a new vimrc and all the new packages and updates to those packages. If you made any changes that you
don't want blown away then stash them via git and then just apply the stash after done updating.

```
$ cd ~/lightsaber
$ git pull
$ rake
```

## Submitting Pull Requests

1. Fork the project
2. Create a topic branch
3. Implement your feature or bug fix
4. If your change affects something in this README, please update it
5. Commit and push your changes
6. Submit a pull request
