#!/bin/bash

git clone --bare git@s.kuetemeier.net:home-files $HOME/.home-files

function home {
   /usr/bin/git --git-dir=$HOME/.home-files/ --work-tree=$HOME $@
}

# create .home-local and local backup folder
mkdir -p .home-local/backup

# checkout repo
home checkout

if [ $? = 0 ]; then
  echo "Checked out home-files.";
  else
    echo "Backing up pre-existing dot files.";
    home checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .home-local/backup/{}
fi;

home checkout
home config status.showUntrackedFiles no
