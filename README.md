This home directory is **partly** under git version control.
Please continue reading for more details.

# Home-Files

My (Jörg Kütemeier - https://kuetemeier.com) common home directory and dot files

## Install

```
curl -Lks https://raw.githubusercontent.com/kuetemeier/home-files/master/.local/share/home-files/bin/home-install | /bin/bash
```

According to the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) (followed by Gnome and Ubuntu) the Repository is installed to `$HOME/.local/share/home-files/.repo` and all other files are checked out to the `$HOME` directory and subdirectories, as layed out in this repo.

## Components

### bash-powerline

https://github.com/riobard/bash-powerline

Powerline-style Bash prompt in pure Bash script. See also https://github.com/riobard/zsh-powerline

### git-subrepo

> This git command "clones" an external git repo into a subdirectory of your repo. Later on, upstream changes can be pulled in, and local changes can be pushed back. Simple.

https://github.com/ingydotnet/git-subrepo

### Liquid Prompt — a useful adaptive prompt for Bash & zsh

A full-featured & carefully designed adaptive prompt for Bash & Zsh

Liquid Prompt gives you a nicely displayed prompt with useful information when you need it. It shows you what you need when you need it. You will notice what changes when it changes, saving time and frustration. You can even use it with your favorite shell – Bash or zsh.

https://github.com/nojhan/liquidprompt
