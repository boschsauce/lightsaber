
# Lightsaber

Lightsaber is a rake installer for my vim configurations. It uses pathogen managed by git submodules. The goal is to be able to eventually have a nice elegant vim, perfect for coding ruby / rails / sinatra and easy to install.

![picture alt](http://i.imgur.com/xqzfT4e.png?1 "Start Screen")
![picture alt](http://i.imgur.com/TxA7UPS.png?1 "Editing File")

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
## Plugins

#### General

#### [vim-surround](https://github.com/tpope/vim-surround)

surround.vim: quoting/parenthesizing made simple

#### [vim-markdown](https://github.com/tpope/vim-markdown)

Vim Markdown runtime files.

#### [ctrlp](https://github.com/kien/ctrlp.vim)

Fuzzy file, buffer, mru and tag finder.

**Command:** `ctrl-p`

![ctrlp view](http://f.cl.ly/items/393i0b0N2C1H1e0Q2K3k/ctrlp.png)


#### [nerdtree](https://github.com/scrooloose/nerdtree)

A tree explorer plugin for vim.

#### [supertab](https://github.com/ervandew/supertab)

Perform all your vim insert mode completions with Tab

#### [syntastic](https://github.com/scrooloose/syntastic)

Syntax checking hacks for vim

#### [tabular](https://github.com/godlygeek/tabular)

Vim script for text filtering and alignment

[vimcast] (http://vimcasts.org/episodes/aligning-text-with-tabular-vim/)

#### [vim-airline](https://github.com/bling/vim-airline)

lean & mean statusline for vim that's light as air

#### [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)

True Sublime Text style multiple selections for Vim

#### [vim-startify](https://github.com/mhinz/vim-startify)

A fancy start screen for Vim.


#### Git

#### [vim-fugitive](https://github.com/tpope/vim-fugitive)

A Git wrapper so awesome, it should be illegal

#### [vim-gitgutter](https://github.com/airblade/vim-gitgutter)

A Vim plugin which shows a git diff in the gutter (sign column).

#### Ruby

#### [vim-ruby](https://github.com/vim-ruby/vim-ruby)

Vim/Ruby Configuration Files.

#### [vim-rails](https://github.com/tpope/vim-rails)

rails.vim: Ruby on Rails power tools

#### [vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring)

Refactoring tool for Ruby in vim!

#### [vim-bundler](https://github.com/tpope/vim-bundler)

bundler.vim: Lightweight support for Ruby's Bundler

#### [vim-endwise](https://github.com/tpope/vim-endwise)

wisely add "end" in ruby, endfunction/endif/more in vim script, etc

#### [vim-rspec](https://github.com/thoughtbot/vim-rspec)

Run Rspec specs from Vim

#### [vim-rvm](https://github.com/tpope/vim-rvm)

rvm.vim: Switch Ruby versions from inside Vim


#### JS/CoffeeScript/Handlebars

#### [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)

CoffeeScript support for vim.

#### [vim-handlebars](https://github.com/nono/vim-handlebars)

Vim plugin for Handlebars

#### CSS

#### [vim-stylus](https://github.com/wavded/vim-stylus)

Syntax Highlighting for Stylus.




## Submitting Pull Requests

1. Fork the project
2. Create a topic branch
3. Implement your feature or bug fix
4. If your change affects something in this README, please update it
5. Commit and push your changes
6. Submit a pull request
