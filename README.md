This home directory is **partly** under git version control.
Please continue reading for more details.

# Home-Files

My (Jörg Kütemeier - https://kuetemeier.com) common home directory and dot files

## Install

```
curl -Lks https://.../install.sh | /bin/bash
```

According to the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) (followed by Gnome and Ubuntu) the Repository is installed to `$HOME/.local/share/home-files/.repo` and all other files are checked out to the `$HOME` directory and subdirectories, as layed out in this repo.

## Components

### bash-powerline

https://github.com/riobard/bash-powerline

Powerline-style Bash prompt in pure Bash script. See also https://github.com/riobard/zsh-powerline
