#!/bin/bash

#-------
# clone

git clone --bare git@s.kuetemeier.net:home-files $HOME/.home-files

#---------------
# home function

function home {
   /usr/bin/git --git-dir=$HOME/.home-files/ --work-tree=$HOME $@
}

#--------
# backup

echo "Creating .home-local"
# and backup-folder
mkdir -p .home-local/backup

echo "Backing up home-files."

FILES=`home ls-tree --name-only -r master .`

for f in $FILES ; do
  if [ -f $HOME/$f ]; then
    echo -n "... backing up: "
    echo $f
    mv $HOME/$f .home-local/backup/$f
  fi
done

#----------
# checkout

home ls-tree --name-only -r master . | xargs git --git-dir=$HOME/.home-files/ --work-tree=$HOME checkout master --

home config status.showUntrackedFiles no
